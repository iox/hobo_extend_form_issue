class Agent < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name                :string
    front_index         :boolean
    website_name        :string
    website_url         :string
    email               :email_address
    cell_phone          :string
    land_phone          :string
    yada                :string
    default_agent       :string
    inactive            :boolean
    rentals             :boolean
    residential         :boolean
    commercial          :boolean
    income              :string
    vacant_land         :string
    html_name           :string
    lead_rotation_index :integer
    region              :string
    timestamps
  end
  attr_accessible :name, :front_index, :website_name, :website_url, :email, :cell_phone, :land_phone, :yada, :default_agent, :inactive, :rentals, :residential, :commercial, :income, :vacant_land, :html_name, :lead_rotation_index, :region, :photo_file_name, :photo_file_size

  has_attached_file :photo,
    :styles => {
      :medium => ["200x138>", :png],
      :thumb => ["100x100>", :png] },
    :whiny => false,
    :path => 'lib/logos/:style/:id.:format',
    :url => '/proceso_seleccions/:id.png?style=:style'

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
