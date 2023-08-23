class CoursesController < ApplicationController
  def index
    # Retrieve all courses from the database
    @all_courses = Course.all

    # Convert the courses data into JSON format
    courses_json = @all_courses.to_json

    # Send the JSON response to the client
    render json: courses_json
  end
end
