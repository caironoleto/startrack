class TaskMailer < ActionMailer::Base
  def task_notification(watcher, task, changes)
    @watcher, @task, @changes = watcher, task, changes
    mail(:to => watcher.email, :subject => "[#{@task.project.name}] The task ##{@task.id} - #{@task.name} has been updated", :from => "startrack@example.com.br")
  end 
end
