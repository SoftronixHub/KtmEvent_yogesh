class AddEventtypeToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :eventtype, :string
  end
end
