class CreateMyposts < ActiveRecord::Migration[7.0]
  def change
    create_table :myposts do |t|
      t.text :body
      t.string :access
      t.string :passcode

      t.timestamps
    end
  end
end