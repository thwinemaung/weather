class CreateDroneAvailabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :drone_availabilities do |t|
      t.boolean :status

      t.timestamps
    end
  end
end
