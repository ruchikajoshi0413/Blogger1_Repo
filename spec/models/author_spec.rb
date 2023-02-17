require 'rails_helper'

RSpec.describe Author, type: :model do
  context 'Creating a author' do
    let(:author) { build :author }
    
    it 'valid user for author' do
      debugger
      expect(author.valid?).to eq(true) 
    end
    
  end
  
end
