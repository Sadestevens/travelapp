class AddChosenDateToSuggestions < ActiveRecord::Migration
  def change
    add_column :suggestions, :chosen_date, :string
  end
end
