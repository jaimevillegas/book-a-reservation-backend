require 'swagger_helper'

RSpec.describe '/glampings', type: :request do
  path '/glampings/list_glampings' do
    get 'List glampings' do
      tags 'Glampings'
      consumes 'application/json'
      produces 'application/json'

      response '200', 'glampings found' do
        schema type: :array,
               items: {
                 properties: {
                   id: { type: :integer },
                   name: { type: :string },
                   glamping_type: { type: :string },
                   image: { type: :string }
                 }
               }

        run_test!
      end

      response '404', 'glampings not found' do
        run_test!
      end
    end
  end

  path '/glampings/list_glampings_details/{id}' do
    get 'List glampings details' do
      tags 'Glampings'
      consumes 'application/json'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer

      response '200', 'glampings found' do
        schema type: :object,
               properties: {
                 id: { type: :integer },
                 name: { type: :string },
                 glamping_type: { type: :string },
                 description: { type: :string },
                 image: { type: :string },
                 location: { type: :string },
                 daily_rate: { type: :integer }
               }

        run_test!
      end

      response '404', 'glamping not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end

  path '/glampings/create' do
    post 'Create glamping' do
      tags 'Glampings'
      consumes 'application/json'
      produces 'application/json'
      parameter name: :glamping, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          glamping_type: { type: :string },
          description: { type: :string },
          image: { type: :string },
          location: { type: :string },
          daily_rate: { type: :integer }
        },
        required: %w[name glamping_type description image location daily_rate]
      }

      response '200', 'glamping created' do
        let(:glamping) do
          {
            name: 'Glamping 1',
            glamping_type: 'Glamping type 1',
            description: 'Glamping description 1',
            image: 'Glamping image 1',
            location: 'Glamping location 1',
            daily_rate: 100
          }
        end

        run_test!
      end

      response '422', 'invalid request' do
        let(:glamping) { { name: 'foo' } }
        run_test!
      end
    end
  end

  path '/glampings/destroy_glamping/{id}' do
    delete 'Delete glamping' do
      tags 'Glampings'
      consumes 'application/json'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer

      response '204', 'glamping deleted' do
        let(:id) { Glamping.create(name: 'foo').id }
        run_test!
      end

      response '404', 'glamping not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end
end
