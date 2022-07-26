class CreateSchoolings < ActiveRecord::Migration[6.1]
  def change
    create_table :schoolings do |t|
      t.string :level
      t.string :description
      t.float :percentage

      t.timestamps
    end
  end
end
