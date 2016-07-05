class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :image
      t.references :attachable, polymorphic: true, index: true
      t.timestamps null: false
    end
  end
end
