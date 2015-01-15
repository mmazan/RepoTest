class CreateBookInStocks < ActiveRecord::Migration
  def change
    create_table :book_in_stocks do |t|

      t.timestamps null: false
    end
  end
end
