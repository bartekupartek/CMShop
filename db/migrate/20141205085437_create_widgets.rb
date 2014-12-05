class CreateWidgets < ActiveRecord::Migration
  def change
    create_table :widgets do |t|
      t.string :name
      t.string :request_params
      t.string :file_path
      t.datetime :expires_after
      t.boolean :blank_links

      t.timestamps
    end
  end
end
