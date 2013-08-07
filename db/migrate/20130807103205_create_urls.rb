class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :original_url, :shortened_url
      t.integer :click_count, null: false, default: 0 
  
      t.timestamps
    end
  end
end

# when you use ":not_null" it treats it as another symbol
# alongside :click_count
