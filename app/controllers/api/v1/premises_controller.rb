class Api::V1::PremisesController < ApplicationController
	before_action :set_premise, only: [:show, :update, :destroy]
	before_action :require_authorization!, only: [:show, :update, :destroy]

	# GET /api/v1/premises

	def index
		@premises = current_user.premises
		render json: @premises
	end

	# GET /api/v1/premises/1

	def show
		render json: @premise
	end

	# POST /api/v1/premises

	def create
		@premise = Premise.new(premise_params.merge(user: current_user))

		if @premise.save
			render json: @premise, status: :created
		else
			render json: @premise.errors, status: :unprocessable_entity
		end

	end

	# PATCH/PUT /api/v1/premises/1

	def update
		if @premise.update(premise_params)
			render json: @premise
		else
			render json: @premise.errors, status: :unprocessable_entity
		end
	end

	# DELETE /api/v1/premises/1

	def destroy
		@premise.destroy
	end

	private

	# Use callbacks to share common setup or constraints between actions.

	def set_premise
		@premise = Premise.find(params[:id])
	end

	# Only allow a trusted parameter "white list" through.

	def premise_params
		params.require(:premise).permit(:name, :email, :phone, :description)
	end

	def require_authorization!
		unless current_user == @premise.user
		render json: {}, status: :forbidden
		end
	end

end
