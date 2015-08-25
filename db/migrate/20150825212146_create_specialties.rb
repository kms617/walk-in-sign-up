class CreateSpecialties < ActiveRecord::Migration
  def change
    create_table :specialties do |t|
      t.timestamps
      t.string :name
      t.integer :category_id
      t.string :bullhorn_id
    end
  end
end
