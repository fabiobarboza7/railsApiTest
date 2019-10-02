class Api::V1::StationsController < ApplicationController

	def index
		@premise = Premise.find(params[:premise_id])
		render json: @premise.stations
	end

	def create
		@station = Station.new(station_params)

		if @station.save
			render json: @station, status: :created
		else
			render json: @station.errors, status: :unprocessable_entity
		end

	end

	private

	def station_params
		params.require(:station).permit(:serial, :name, :premise_id)
	end

end
