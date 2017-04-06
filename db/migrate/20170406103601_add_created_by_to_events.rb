class AddCreatedByToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :created_by, :integer
  end
end
