class Contact < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :address
  
  default_scope :order => 'last_name, first_name'
  named_scope :by_name, lambda { |name| {:conditions => ['upper(first_name) = :name OR upper(last_name) = :name', {:name => name.upcase}]} }
end
