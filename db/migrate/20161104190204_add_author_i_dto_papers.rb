class AddAuthorIDtoPapers < ActiveRecord::Migration
  def up
  	add_column :papers, :author_id, :integer
  end

  def down
  	remove_column :papers, :author_id
  end
end
