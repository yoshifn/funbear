class CreateFundawgs < ActiveRecord::Migration
  def change
    create_table :fundawgs do |t|
      t.string :name
      t.string :memberstatus
      t.string :picture
      t.string :bio
      t.string :location
      t.string :completion

      t.timestamps
    end
  end
end
