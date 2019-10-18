require_relative 'task'
require_relative 'repository'
require_relative 'view'
require_relative 'controller'
require_relative 'router'

require 'pry-byebug'

task1 = Task.new('Courses')
task2 = Task.new('Vaisselles')

repository = Repository.new
view = View.new
controller = Controller.new(view, repository)
repository.add(task1)
repository.add(task2)


router = Router.new(controller)
router.run
