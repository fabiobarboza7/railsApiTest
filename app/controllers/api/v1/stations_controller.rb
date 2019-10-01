class Api::V1::StationsController < ApplicationController

	def index
		@stations = Station.all
		render json: @stations
	end

	def create
		@station = Station.new(premise_params)

		if @station.save
			render json: @station, status: :created
		else
			render json: @station.errors, status: :unprocessable_entity
		end

	end

	private

	def premise_params
		params.require(:premise).permit(:serial, :name, :premise_id)
	end

end
