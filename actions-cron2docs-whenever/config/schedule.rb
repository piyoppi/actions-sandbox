every 3.hours do
  runner "MyModel.some_process"
  rake "my:rake:task"
  command "/usr/bin/my_great_command"
end

every 1.day, at: '4:30 am' do
  runner "MyModel.task_to_run_at_four_thirty_in_the_morning"
end

every 1.day, at: ['4:30 am', '6:00 pm'] do
  runner "Mymodel.task_to_run_in_two_times_every_day"
end

every :sunday, at: '12pm' do
  runner "Task.do_something_great"
end

every '0 0 27-31 * *' do
  command "src/test.php"
end

every :day, at: '12:20am', roles: [:app] do
  rake "app_server:task"
end
