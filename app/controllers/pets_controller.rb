

class PetsController < ApplicationController

  def index
    @pets = Pet.all
    json_response(@pets)
  end

  def show
    @pet = Pet.find(params[:id])
    json_response(@pet)
  end

  def create
    @pet = Pet.create!(pet_params)
    json_response(@pet, :created)
  end

  def update
    @pet = Pet.find(params[:id])
    if @pet.update!(pet_params)
      render status: 200, json: {
       message: "This pet has been updated successfully."
       }
    end
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def pet_params
    params.permit(:name, :type_of_animal, :sex, :age)
  end
end
