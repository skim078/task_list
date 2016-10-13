class TaskList

  def initialize
    @todo_list = []
  end

  def todo_list
    @todo_list
  end

  def add_all_task(task)
    @todo_list << task
  end

  def print_list
    @todo_list
  end

  def sort_by_completion(tasklist)
    tasklist.todo_list.select { |a| a.done == true }
  end
# without the .select the sort_by_completion method does not work.



end


# def completed_items
#   if @Todolist
# end
