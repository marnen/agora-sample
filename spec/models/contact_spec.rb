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
end
