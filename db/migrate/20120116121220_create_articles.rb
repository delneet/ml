class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.string :meta_tags
      t.string :meta_description
      t.string :image
      t.text :summary
      t.string :slug
      t.date :published_on
      t.date :start_publication_on
      t.date :stop_publication_on
      t.boolean :featured

      t.timestamps
    end
  end
end
