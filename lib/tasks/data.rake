namespace :data do
  task load: 'db:setup' do
    Rake::Task['data:categories:load'].invoke
    Rake::Task['data:specialties:load'].invoke
  end
end
