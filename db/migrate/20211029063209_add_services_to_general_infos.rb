class AddServicesToGeneralInfos < ActiveRecord::Migration[6.1]
  def change
    add_column :general_infos, :services, :string
  end
end
