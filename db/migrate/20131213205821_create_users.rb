class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.text :email
      t.text :first_name
      t.text :last_name
      t.text :image
      t.text :facebook_profile_link
      t.string :oauth_token
      t.datetime :oauth_expires_at

      t.timestamps
    end
  end
end


