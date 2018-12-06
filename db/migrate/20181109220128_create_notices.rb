class CreateNotices < ActiveRecord::Migration[5.2]
  def change
    create_table :notices do |t|
      t.string :title
      t.string :subject
      t.string :body

      t.timestamps
    end
  end
end
