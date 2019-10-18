require 'pry-byebug'

class Router

  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      # Afficher la liste des choix
      print_menu
      # Choix
      choice = gets.chomp.to_i
      # Faire appel au controller
      dispatch(choice)
    end
  end

  private

  def print_menu
    puts "\n---"
    puts 'What do you want to do?'
    puts '1 - Display tasks'
    puts '2 - Add a new task'
    puts '3 - Mark a task as done'
    puts '---'
  end

  def dispatch(choice)
    case choice
    when 1 then @controller.list_tasks
    when 2 then @controller.add_task
    when 3 then @controller.mark_task_as_done
    else puts 'No way...'
    end
  end

end
