# frozen_string_literal: true

json.extract! slide, :id, :created_at, :updated_at
json.url slide_url(slide, format: :json)
