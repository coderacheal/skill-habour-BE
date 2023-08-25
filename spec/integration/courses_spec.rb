require 'swagger_helper'

RSpec.describe 'api/v1/course', type: :request do
  before(:each) do
        # @user = User.create(username: 'johnd')
        @course = Course.create(name: 'course', description: 'description', image: 'https://www.wcrf-uk.org/wp-content/uploads/2021/06/588595864r-LS.jpg', price: 456, id: 1)
  end

  path '/api/v1/courses' do
    get('list courses') do
      response(200, 'successful') do
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/api/v1/courses' do
    post 'Create a courses' do
      tags 'courses'
      consumes 'application/json'
      parameter name: :course, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          image: { type: :string },
          price: { type: :number }
        },
        required: %w[name image price]
      }
      response '201', 'courses created' do
        let(:course) { { name: 'course1', image: 'https://image.com', price: 100} }
        run_test!
      end

      response '201', 'courses created' do
        let(:course) { { name: 'course2', image: 'https://image.com', price: 900} }
        run_test!
      end
    end
  end

  path '/api/v1/courses/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show course') do
      response(200, 'successful') do
        let(:id) { @course.id }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end 
