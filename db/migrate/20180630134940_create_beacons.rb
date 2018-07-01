class CreateBeacons < ActiveRecord::Migration[5.1]
  def change
    create_table :beacons do |t|
      t.string :name
      t.string :major
      t.string :minor
      t.decimal :latitude, :precision => 15, :scale => 10
      t.decimal :longitude, :precision => 15, :scale => 10

      t.timestamps
    end
  end
end
