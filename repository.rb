class Repository

  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
  end

  def all
    @tasks
  end

  def remove(task)
    @tasks.delete(task)
  end

  def find_with(index)
    @tasks[index]
  end


end
