require 'spec_helper'

describe Contact do
  describe '(validations)' do
    before :each do
      @contact = Contact.make
    end
    
    it 'should be valid with valid attributes' do
      @contact.should be_valid
    end
    
    ['first_name', 'last_name', 'address'].each do |field|
      it "should require #{field.gsub('_', ' ')}" do
        @contact.send "#{field}=", nil
        @contact.should_not be_valid
      end
    end
  end
  
  describe '(named scopes)' do
    describe 'by_name' do
      it "should search case-insensitive on either first or last name" do
        Contact.by_name('Name').proxy_options.should == {:conditions => ['upper(first_name) = :name OR upper(last_name) = :name', {:name => 'NAME'}]}
      end
    end
  end
end
