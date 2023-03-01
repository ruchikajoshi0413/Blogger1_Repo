require 'rails_helper'

# RSpec.describe "Articles", type: :request do
#   # describe "GET /index" do
#   #   pending "add some examples (or delete) #{__FILE__}"
#   # end

#   context '#index' do
#     before do
#       Article.create(title: "Notebook1", Body: "title1")
#       Article.create(title: "Notebook2", Body: "title2")
#       Article.create(title: "Notebook3", Body: "title3")
#       Article.create(title: "Notebook4", Body: "title4")
#     end

#     let!(:expected_response) do
#       JSON.parse(File.read('fixtures/article_response.json'))
#     end

#     it 'should return an array of all records in the DB' do
#       get '/articles'

#       expect(response).to have_http_status(:ok)
#       expect(response.body).to eq expected_response.to_json
#     end
#   end
#   context '#delete' do
#     before do
#       Article.create(title: "Notebook1", body: "title1")
#       Article.create(title: "Notebook2", body: "title2")
#     end

#     let!(:expected_response) { { message: 'success' } }

#     it 'should return 200' do
#       delete '/articles/1'

#       expect(response).to have_http_status(:ok)
#       expect(response.body).to eq expected_response.to_json
#     end

#     it 'should decrease the size of the article relation by 1' do
#       expect{ delete '/articles/1' }.to change{ Article.count }.from(Article.count).to(Article.count - 1)
#     end

#     it 'should delete the requested record' do
#       delete '/articles/1'

#       expect { Article.find(id) }.to raise_error(ActiveRecord::RecordNotFound)
#     end
#   end
# end
