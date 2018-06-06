class CreateUrlViews < ActiveRecord::Migration[5.1]
  def change
    create_table :url_views do |t|
      t.integer :short_url_id
      t.string :ip_address
      t.string :browser_info
      t.string :browser_platform
      t.timestamps
    end
  end
end
