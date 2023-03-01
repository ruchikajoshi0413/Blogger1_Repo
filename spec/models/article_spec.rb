require 'rails_helper'

RSpec.describe Article, type: :model do

  before(:all) do
     @article = Article.create(title: "Ruby on Rails", body:"Ruby..")
  end

  # it 'checks that a article can be created' do
  #   expect(@article).to be_valid
  # end

  it 'checks that a article can be read' do
    # debugger
    expect(Article.find_by_title("Ruby on Rails")) == (@article)
  end

#   it 'checks that a article can be updated' do
#     debugger
#     @article.update(:title => "Like a Rolling Stone - Remastered")
#     expect(Article.find_by_title("Like a Rolling Stone - Remastered")).to eq(@article)
#   end

#   it 'checks that a article can be destroyed' do
#     debugger
#     @article.destroy
#     expect(Article.find_by(title: "Like a Rolling Stone")).to be_nil
#   end
  
end
