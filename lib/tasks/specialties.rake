namespace :data do
  namespace :specialties do
    desc 'Create the specialties'
    task load: :environment do

      data_path = Rails.root.join('db/data/specialties.csv')
      data = File.read(data_path)
      specialty_count = data.each_line.count - 1

      CSV.parse(data,
                headers: true,
                header_converters: :symbol).each do |spec|
        specialty = Special.create(spec)
      end
    end

    class Special
      def initialize(attrs)
        @attrs = attrs.to_h
      end

      def self.create(attrs)
        new(attrs).create
      end

      def create
        specialty = Specialty.create(name: @attrs[:name],
                                 bullhorn_id: @attrs[:bullhorn_id],
                                 category_id: @attrs[:category_id]
                                 )
        specialty
      end
    end
  end
end
