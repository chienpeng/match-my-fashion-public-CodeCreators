class AddMakersToGeneralInfos < ActiveRecord::Migration[6.1]
  def change
    add_column :general_infos, :makers, :string
  end
end
