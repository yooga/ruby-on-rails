class CreateClassifieds < ActiveRecord::Migration
  def self.up
    create_table :classifieds do |t|
      t.column :title, :string
      t.column :price, :float
      t.column :location, :string
      t.column :description, :text
      t.column :email, :string
      t.column :created_at, :datetime
      t.column :updated_at, :datetime
    end
  end

  def self.down
    drop_table :classifieds
  end
end

