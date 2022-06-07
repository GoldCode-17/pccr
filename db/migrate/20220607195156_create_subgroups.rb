class CreateSubgroups < ActiveRecord::Migration[6.1]
  def change
    create_table :subgroups do |t|
      t.string :acronym
      t.string :description

      t.timestamps
    end
  end
end
