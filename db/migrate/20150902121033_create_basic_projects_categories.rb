class CreateBasicProjectsCategories < ActiveRecord::Migration
  def change
    create_table :basic_projects_categories do |t|
      t.string :title
      t.text :description
      t.string :slug

      t.timestamps null: false
    end
    add_index :basic_projects_categories, :slug, unique: true
  end
end
