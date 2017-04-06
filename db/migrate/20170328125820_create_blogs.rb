class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :description
      t.date :published_date
      t.string :written_by

      t.timestamps
    end
  end
end
