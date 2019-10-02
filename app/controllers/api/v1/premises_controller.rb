class Api::V1::PremisesController < ApplicationController
	def index
		@premises = Premise.all
		render json: @premises
	end

	def show
		@premise = Premise.find(params[:id])
		render json: @premise
	end

	def create
		@premise = Premise.new(premise_params)

		if @premise.save
			render json: @premise, status: :created
		else
			render json: @premise.errors, status: :unprocessable_entity
		end

	end

	private

	def premise_params
		params.require(:premise).permit(:name, :address)
	end

end
