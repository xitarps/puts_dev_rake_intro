# require 'fileutils'
require_relative 'lib/tasks/restaurant'

# task default: ['loading', 'restaurant:greeting']
task default: %i[loading restaurant:greeting]

desc 'loads the system'
task :loading do
  # puts 'loading...'
  sh 'figlet LOADING'
end

desc 'creates the my_recipes folder'
file 'my_recipes' do |current_task|
  mkdir current_task.name
end

desc 'removes the my_recipes folder'
task 'remove_my_recipes' do |current_task|
  FileUtils.rm_rf('my_recipes')
end

