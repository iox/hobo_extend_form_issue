class HoboMigration1 < ActiveRecord::Migration
  def self.up
    create_table :agents do |t|
      t.string   :name
      t.boolean  :front_index
      t.string   :website_name
      t.string   :website_url
      t.string   :email
      t.string   :cell_phone
      t.string   :land_phone
      t.string   :yada
      t.string   :default_agent
      t.boolean  :inactive
      t.boolean  :rentals
      t.boolean  :residential
      t.boolean  :commercial
      t.string   :income
      t.string   :vacant_land
      t.string   :html_name
      t.integer  :lead_rotation_index
      t.string   :region
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :agents
  end
end
