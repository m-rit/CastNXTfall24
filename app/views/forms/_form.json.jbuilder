# frozen_string_literal: true

json.extract! form, :id, :created_at, :updated_at
json.url form_url(form, format: :json)
