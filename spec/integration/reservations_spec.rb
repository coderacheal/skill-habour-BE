require 'swagger_helper'

RSpec.describe 'api/v1/reservations', type: :request do
  before(:each) do
    @user = User.create(username: 'Ouail')
    @course = Course.create(name: 'course', description: 'description',
                            image: 'https://www.wcrf-uk.org/wp-content/uploads/2021/06/588595864r-LS.jpg',
                            price: 456, id: 1)
    @reservation = Reservation.create(course_name: @course.name, reservation_date: Date.today)
  end

  path '/api/v1/courses/:course_id/reservations' do
    get('list reservations') do
      parameter name: 'user_id', in: :path, type: :integer, required: true
      let(:user_id) { User.create(username: 'Ouail') }
      response(200, 'successful') do
        schema type: :array,
               items: {
                 type: :object,
                 properties: {
                   date: { type: :string, format: 'date' },
                   user_id: { type: :integer },
                   course_name: { type: :string },
                   created_at: { type: :string, format: 'date-time' },
                   updated_at: { type: :string, format: 'date-time' }
                 },
                 required: %w[city course_name reservation_date]
               }
        it('should return success') do
          user_id = @user.id
          get '/api/v1/courses/:course_id/reservations', params: { user_id: }
          expect(response).to have_http_status(:success)
        end
        run_test!
      end
    end
  end

  path '/api/v1/courses/:course_id/reservations' do
    post('create reservation') do
      consumes 'application/json'
      produces 'application/json'
      let(:reservation) { @reservation }
      parameter name: :reservation, in: :body, schema: {
        type: :object,
        properties: {
          reservation_date: { type: :string, format: 'date-time'  },
          city: { type: :integer },
          user_id: { type: :integer }
        },
        required: %w[city reservation_date user_id]
      }
    end
  end
end
