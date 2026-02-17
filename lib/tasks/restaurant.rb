namespace :restaurant do
  desc 'it will dislpay a welcome message'
  task :greeting do
    puts 'helloooo!!'
  end

  task potato: %i[light_fire pour_water] do
    puts 'Potato!!!'
  end

  task :light_fire do
    puts 'Fire!!!'
  end

  task :pour_water do
    puts 'Water!!!'
  end

  desc 'will wait for numbers on minutes and seconds, ex: [10,30]'
  task :cook, [:minutes, :seconds] do |current_task, kwargs|
    puts "cooking within #{kwargs[:minutes]} minutes and #{kwargs.seconds} seconds"
  end
end
