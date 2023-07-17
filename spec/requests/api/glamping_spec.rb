require 'swagger_helper'

RSpec.describe '/glampings', type: :request do
  path '/glampings/list_glampings' do
    get 'List all glampings' do
      tags 'Glampings'
      consumes 'application/json'
      produces 'application/json'

      response '200', 'glampings found' do
        schema type: :object,
               properties: {
                 name: { type: :string },
                 glamping_type: { type: :string },
                 image: { type: :string }
               },
               required: %w[name glamping_type image]

        run_test!
      end
    end
  end

  path '/glampings/list_glampings_details/{id}' do
    get 'List glamping details' do
      tags 'Glampings'
      consumes 'application/json'
      produces 'application/json'
      parameter name: :id, in: :path, type: :string

      response '200', 'glamping found' do
        schema type: :object,
               properties: {
                 name: { type: :string },
                 glamping_type: { type: :string },
                 image: { type: :string }
               },
               required: %w[name glamping_type image]

        run_test!
      end

      response '404', 'glamping not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end
end
