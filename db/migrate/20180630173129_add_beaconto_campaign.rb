class AddBeacontoCampaign < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :campaigns, :beacons
  end
end
