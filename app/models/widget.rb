# == Schema Information
#
# Table name: widgets
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  request_params :string(255)
#  file_path      :string(255)
#  expires_after  :datetime
#  blank_links    :boolean
#  created_at     :datetime
#  updated_at     :datetime
#

class Widget < ActiveRecord::Base
end
