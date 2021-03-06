<?php
/*
+--------------------------------------------------------------------------
|   WeCenter [#RELEASE_VERSION#]
|   ========================================
|   by WeCenter Software
|   © 2011 - 2014 WeCenter. All Rights Reserved
|   http://www.wecenter.com
|   ========================================
|   Support: WeCenter@qq.com
|
+---------------------------------------------------------------------------
*/


if (!defined('IN_ANWSION'))
{
	die;
}

class answer_class extends AWS_MODEL
{
	public function update_answer_discussion_count($answer_id)
	{
		$answer_id = intval($answer_id);
		if (!$answer_id)
		{
			return false;
		}

		return $this->update('answer', array(
			'comment_count' => $this->count('answer_discussion', "answer_id = " . ($answer_id))
		), "id = " . ($answer_id));
	}


	// 同时获取用户信息
	public function get_answer_by_id($answer_id)
	{
		if ($answer = $this->fetch_row('answer', 'id = ' . intval($answer_id)))
		{
			$answer['user_info'] = $this->model('account')->get_user_info_by_uid($answer['uid']);

			if (-$answer['agree_count'] >= get_setting('downvote_fold'))
			{
				$answer['fold'] = -2;
			}
		}

		return $answer;
	}

	public function get_answers_by_ids($answer_ids)
	{
		if (!is_array($answer_ids))
		{
			return false;
		}

		if ($answers = $this->fetch_all('answer', "id IN (" . implode(', ', $answer_ids) . ")"))
		{
			// 不折叠
			foreach ($answers AS $key => $val)
			{
				$result[$val['id']] = $val;
			}
		}

		return $result;
	}

	public function get_answer_count_by_question_id($question_id, $where = null)
	{
		if ($where)
		{
			$where = ' AND ' . $where;
		}

		return $this->count('answer', "question_id = " . intval($question_id) . $where);
	}

	public function get_answers($question_id, $page, $per_page, $order = 'id ASC')
	{
		if ($answer_list = $this->fetch_page('answer', 'question_id = ' . intval($question_id), $order, $page, $per_page))
		{
			$downvote_fold = get_setting('downvote_fold');
			foreach($answer_list as $key => $val)
			{
				if (-$val['agree_count'] >= $downvote_fold)
				{
					$answer_list[$key]['fold'] = -2;
				}

				$uids[] = $val['uid'];
			}
		}

		if ($uids)
		{
			if ($users_info = $this->model('account')->get_user_info_by_uids($uids))
			{
				foreach($answer_list as $key => $val)
				{
					$answer_list[$key]['user_info'] = $users_info[$val['uid']];
				}
			}
		}

		return $answer_list;
	}


	/**
	 * 删除问题关联的所有回复及相关的内容
	 */
	// TODO:
	/*
	public function remove_answers_by_question_id($question_id)
	{
		if (!$answers = $this->get_answer_list_by_question_id($question_id))
		{
			return false;
		}

		foreach ($answers as $key => $val)
		{
			$answer_ids[] = $val['id'];
		}

		return $this->remove_answer_by_ids($answer_ids);
	}
	*/

	/**
	 * 根据回复集合批量删除回复
	 */
	// TODO:
	/*
	public function remove_answer_by_ids($answer_ids)
	{
		if (!is_array($answer_ids))
		{
			return false;
		}

		foreach ($answer_ids as $answer_id)
		{
			$this->remove_answer_by_id($answer_id);
		}

		return true;
	}

	public function remove_answer_by_id($answer_id)
	{
		if ($answer_info = $this->model('content')->get_reply_info_by_id('answer', $answer_id))
		{
			$this->delete('answer_discussion', 'answer_id = ' . intval($answer_id));	// 删除讨论

			//ACTION_LOG::delete_action_history('associate_type = ' . ACTION_LOG::CATEGORY_ANSWER . ' AND associate_id = ' . intval($answer_id));
			//ACTION_LOG::delete_action_history('associate_type = ' . ACTION_LOG::CATEGORY_QUESTION . ' AND associate_action = ' . ACTION_LOG::ANSWER_QUESTION . ' AND associate_attached = ' . intval($answer_id));

			$this->delete('answer', "id = " . intval($answer_id));

			$this->model('question')->update_answer_count($answer_info['question_id']);
		}

		return true;
	}
	*/

	public function has_answer_by_uid($question_id, $uid)
	{
		return $this->fetch_one('answer', 'id', "question_id = " . intval($question_id) . " AND uid = " . intval($uid));
	}

	public function insert_answer_discussion($answer_id, $uid, $message)
	{
		if (!$answer_info = $this->model('content')->get_reply_info_by_id('answer', $answer_id))
		{
			return false;
		}

		if (!$question_info = $this->model('content')->get_thread_info_by_id('question', $answer_info['question_id']))
		{
			return false;
		}

		$message = $this->model('mention')->parse_at_user($message, false, false, true);

		$comment_id = $this->insert('answer_discussion', array(
			'uid' => intval($uid),
			'answer_id' => intval($answer_id),
			'message' => htmlspecialchars($message),
			'add_time' => fake_time()
		));

		if ($answer_info['uid'] != $uid)
		{
			$this->model('notify')->send($uid, $answer_info['uid'], notify_class::TYPE_ANSWER_COMMENT, notify_class::CATEGORY_QUESTION, $answer_info['question_id'], array(
				'from_uid' => $uid,
				'question_id' => $answer_info['question_id'],
				'item_id' => $answer_info['id'],
				'comment_id' => $comment_id
			));

		}

		if ($at_users = $this->model('mention')->parse_at_user($message, false, true))
		{
			foreach ($at_users as $user_id)
			{
				if ($user_id != $uid)
				{
					$this->model('notify')->send($uid, $user_id, notify_class::TYPE_ANSWER_COMMENT_AT_ME, notify_class::CATEGORY_QUESTION, $answer_info['question_id'], array(
						'from_uid' => $uid,
						'question_id' => $answer_info['question_id'],
						'item_id' => $answer_info['id'],
						'comment_id' => $comment_id
					));

				}
			}
		}

		$this->update_answer_discussion_count($answer_id);

		return $comment_id;
	}

	public function get_answer_discussions($answer_id)
	{
		return $this->fetch_all('answer_discussion', "answer_id = " . intval($answer_id), "id ASC");
	}

	public function get_answer_discussion_by_id($comment_id)
	{
		return $this->fetch_row('answer_discussion', "id = " . intval($comment_id));
	}

	/*public function remove_answer_discussion($comment_id)
	{
		//return $this->delete('answer_discussion', "id = " . intval($comment_id));
	}*/

}