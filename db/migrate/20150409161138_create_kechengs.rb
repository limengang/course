class CreateKechengs < ActiveRecord::Migration
  def change
    create_table :kechengs do |t|
      t.string :name
      t.string :teacher
      t.string :time

      t.timestamps null: false
    end
  end
end
