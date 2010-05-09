class Contact < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :address
  
  default_scope :order => 'last_name, first_name'
end
