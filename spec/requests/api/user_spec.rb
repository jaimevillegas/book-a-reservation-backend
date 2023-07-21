require 'swagger_helper'

RSpec.describe '/users', type: :request do
    path '/users/list_users' do
        get 'List users' do
            tags 'Users'
            consumes 'application/json'
            produces 'application/json'

            response '200', 'users found' do
                schema type: :array,
                    items: {
                        properties: {
                            id: { type: :integer },
                            name: { type: :string },
                            email: { type: :string },
                            password: { type: :string }
                        }
                    }

                run_test!
            end

            response '404', 'users not found' do
                run_test!
            end
        end
    end 
end
