require 'rails_helper'

RSpec.describe "Notebooks", type: :request do
  
  context '#index' do
    before do
      Notebook.create(title: "Notebook1", body: "title1")
      Notebook.create(title: "Notebook2", body: "title2")
      Notebook.create(title: "Notebook3", body: "title3")
      Notebook.create(title: "Notebook4", body: "title4")
    end

    let!(:expected_response) do
      notebook = Rails.root.join('spec', 'fixture', 'notebook_response.json')
      debugger
      JSON.parse(File.read(notebook))
    end

    it 'should return an array of all records in the DB' do
      get '/notebooks'

      expect(response).to have_http_status(:ok)
      expect(response.body).to eq expected_response.to_json
    end
  end
  context '#delete' do
    before do
      Notebook.create(title: "Notebook1", description: "title1")
      Notebook.create(title: "Notebook2", description: "title2")
    end

    let!(:expected_response) { { message: 'success' } }

    it 'should return 200' do
      delete '/notebooks/1'

      expect(response).to have_http_status(:ok)
      expect(response.body).to eq expected_response.to_json
    end

    it 'should decrease the size of the notebook relation by 1' do
      expect{ delete '/notebooks/1' }.to change{ Notebook.count }.from(Notebook.count).to(Notebook.count - 1)
    end

    it 'should delete the requested record' do
      delete '/notebooks/1'

      expect { Notebook.find(id) }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end
end
