namespace :data do
  task load: 'db:setup' do
    Rake::Task['data:categories:load'].invoke
  end
end
