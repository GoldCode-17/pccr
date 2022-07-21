class CreateFramings < ActiveRecord::Migration[6.1]
  def change
    create_table :framings do |t|
      t.string :service_time
      t.integer :position

      t.timestamps
    end
  end
end
