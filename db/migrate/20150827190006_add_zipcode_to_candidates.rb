class AddZipcodeToCandidates < ActiveRecord::Migration
  def change
    add_column :candidates, :zipcode, :string, default: "53202"
    add_column :candidates, :radius, :string
  end
end
