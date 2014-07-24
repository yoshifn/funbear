class CreateFuncats < ActiveRecord::Migration
  def change
    create_table :funcats do |t|
      t.string :url
      t.string :caption

      t.timestamps
    end
  end
end
