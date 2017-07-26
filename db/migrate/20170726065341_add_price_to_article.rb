class AddPriceToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :price, :number, default: 0
  end
end
