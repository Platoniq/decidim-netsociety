class AddAffiliationToDecidimUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_users, :affiliation, :string
  end
end
