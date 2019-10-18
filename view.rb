class View
  def display_task(tasks)
    puts 'List of Task'
    tasks.each_with_index do |task, index|
      done = task.done? ? "[X]" : "[ ]"
      puts "#{index + 1} - #{done} #{task.name}"
    end
    puts '______'
  end

  def ask_user_for_task_name
    puts "What's the task you want to add ? "
    print '>'
    gets.chomp
  end

  def ask_user_for_index
    puts "What is the task index to mark as done ?"
    print ">"
    gets.chomp.to_i - 1
  end

end
