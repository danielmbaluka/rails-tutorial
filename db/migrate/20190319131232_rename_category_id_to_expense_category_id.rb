class RenameCategoryIdToExpenseCategoryId < ActiveRecord::Migration[5.2]
  def change
  	rename_column :expenses, :category_id, :expense_category_id
  end
end
