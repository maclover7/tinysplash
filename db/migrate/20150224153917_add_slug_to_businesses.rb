class AddSlugToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :slug, :string, unique: true, index: true
  end
end
