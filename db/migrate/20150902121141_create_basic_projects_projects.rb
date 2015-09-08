class CreateBasicProjectsProjects < ActiveRecord::Migration
  def change
    create_table :basic_projects_projects do |t|
      t.string :title
      t.string :lead
      t.text :excerpt
      t.text :description
      t.text :content
      t.string :project_link
      t.string :image
      t.string :slug
      #t.references :category, index: true, foreign_key: true
      t.integer :position
      t.integer :category_id

      t.timestamps null: false
    end
    add_index :basic_projects_projects, :slug, unique: true
  end
end
