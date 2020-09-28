class CreateGraffitis < ActiveRecord::Migration[6.0]
  def change
    create_table :graffitis do |t|
      t.string :content
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :message, null: false, foreign_key: true

      t.timestamps
    end
  end
end
