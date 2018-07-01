class AddBeacontoCampaign2 < ActiveRecord::Migration[5.1]
  def change
        add_column :campaigns, :beacon_id, :integer
        
  end
end
