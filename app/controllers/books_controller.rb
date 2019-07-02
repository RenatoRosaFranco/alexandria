# frozen_string_literal: true

class BooksController < ApplicationController
    def index
        render json: { data: Book.all }, status: 200
    end
end