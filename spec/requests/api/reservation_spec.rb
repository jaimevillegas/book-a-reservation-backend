require 'swagger_helper'

RSpec.describe '/reservation', type: :request do
    path '/reservations/list_reservation' do
        get 'List reservations' do
            tags 'Reservations'
            consumes 'application/json'
            produces 'application/json'

            response '200', 'reservations found' do
                schema type: :array,
                    items: {
                        properties: {
                            id: { type: :integer },
                            user_id: { type: :integer },
                            glamping_id: { type: :integer },
                            check_in: { type: :string },
                            check_out: { type: :string },
                            total_price: { type: :integer },
                            status: { type: :string }
                        }
                    }

                run_test!
            end

            response '404', 'reservations not found' do
                run_test!
            end
        end
    end  
    path '/reservations/create' do
        post 'Create reservation' do
            tags 'Reservations'
            consumes 'application/json'
            produces 'application/json'
            parameter name: :reservation, in: :body, schema: {
                type: :object,
                properties: {
                    user_id: { type: :integer },
                    glamping_id: { type: :integer },
                    check_in: { type: :string },
                    check_out: { type: :string },
                    total_price: { type: :integer },
                    status: { type: :string }
                },
                required: [ 'user_id', 'glamping_id', 'check_in', 'check_out', 'total_price', 'status' ]
            }

            response '201', 'reservation created' do
                let(:reservation) { { user_id: 1, glamping_id: 1, check_in: '2021-08-01', check_out: '2021-08-03', total_price: 100000, status: 'booked' } }
                run_test!
            end

            response '422', 'invalid request' do
                let(:reservation) { { user_id: 1, glamping_id: 1, check_in: '2021-08-01', check_out: '2021-08-03', total_price: 100000, status: 'booked' } }
                run_test!
            end
        end
    end                             
end
