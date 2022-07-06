# frozen_string_literal: true

module TaskHelpers
  def wait_for_it(task)
    raise('The param `task` does not have an uid key.') unless task.key?('taskUid')

    client.wait_for_task(task['taskUid'])
  end
end
