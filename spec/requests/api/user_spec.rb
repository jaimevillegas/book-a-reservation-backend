require 'swagger_helper'

RSpec.describe '/users', type: :request do
    path '/users/list_users' do
        get 'List all users' do
            tags 'Users'
            produces 'application/json', 'application/xml'

            response '200', 'users found' do
                schema type: :object,
                    properties: {
                        id: { type: :integer },
                        name: { type: :string },
                        email: { type: :string }
                    },
                    required: [ 'id', 'name', 'email' ]

                let(:id) { User.create(name: 'foo', email: '  
end
