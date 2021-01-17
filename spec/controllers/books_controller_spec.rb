require 'rails_helper'

RSpec.describe BooksController, type: :controller do
    describe "GET index" do
        subject { get :index }

        it 'renders index template' do
            expect(subject).to render_template("index")
        end

        it 'not redenrs index template' do
            expect(get :new).not_to render_template("index")
        end
    end

    describe "POST create" do
        it 'respond to html by default' do
            post :create, :params => { book: { title: "Test", author: "Joe", status: :borrowed, borrowed_date: "2000-01-01", returned_date: "2000-01-01"} }
            expect(response.media_type).to eq "text/html"
        end

        it 'responds to custom formats when provided in the params' do
            post :create, :params => { book: { title: "Test", author: "Joe", status: :borrowed, borrowed_date: "2000-01-01", returned_date: "2000-01-01"}, :format => :json }
            expect(response.media_type).to eq "application/json"
        end
        
    end 
end
