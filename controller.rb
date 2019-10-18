require_relative 'task'

class Controller

  def initialize(view, repository)
    @view = view
    @repository = repository
  end

  def add_task
    # demander le nom de la tache à ajouter
    name = @view.ask_user_for_task_name
    # Créer la tache
    task = Task.new(name)
    # stocker la réponse dans le repo
    @repository.add(task)
  end


  def list_tasks
    # Récupérer la liste des taches
    tasks = @repository.all
    # Afficher les taches grace à la vue
    @view.display_task(tasks)
  end

  def mark_task_as_done
    # Demander l'index de la tache à passer en faite
    index = @view.ask_user_for_index
    # Recherche la tache
    task = @repository.find_with(index)
    # Mettre à jour la tache
    task.mark_as_done!
  end

end
