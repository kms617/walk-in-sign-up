namespace :data do
  namespace :categories do
    desc 'Create the categories'
    task load: :environment do

      data_path = Rails.root.join('db/data/categories.csv')
      data = File.read(data_path)
      category_count = data.each_line.count - 1

      CSV.parse(data,
                headers: true,
                header_converters: :symbol).each do |cat|
        category = Kategory.create(cat)
      end
    end

    class Kategory
      def initialize(attrs)
        @attrs = attrs.to_h
      end

      def self.create(attrs)
        new(attrs).create
      end

      def create
        category = Category.create(name: @attrs[:name],
                                 parent_group: @attrs[:parent_group],
                                 bullhorn_id: @attrs[:bullhorn_id]
                                 )
        category
      end
    end
  end
end
