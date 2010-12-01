class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.column :name, :string
    end
    Category.create :name => "Homes for rent" 
    Category.create :name => "Homes for sale"
    Category.create :name => "Homes for share" 
    Category.create :name => "Miscellaneous"
    
    add_column :classifieds, :category_id, :integer 
    
    Classified.find(:all).each do |c| 
      c.update_attribute(:category_id, 4) 
    end 
  end

  def self.down
    drop_table :categories
  end
end

