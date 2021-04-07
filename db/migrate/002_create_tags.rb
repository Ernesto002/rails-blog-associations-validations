class CreateTags < ActiveRecord::Migration 
    def change 
        create_table :tags do |t| 
            t.string :content 
            t.belongs_to :user, index: true 
        end
        add_foreign_key :tags, :users
    end
end