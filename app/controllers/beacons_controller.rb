class BeaconsController < ApplicationController
    def index
    @beacons = Beacon.all
    render json: {status: 'SUCCESS', message: 'Loaded all beacons', data: @beacons}, status: :ok

    end

    def show
        
        @beacon = Beacon.where("major = ? AND minor = ?",params[:major],params[:minor]) 
        @campaign = Campaign.find_by_beacon_id(@beacon)
        if @campaign.nil?
            render json: {errors: 'Not found'}, status: 404
        else
            if @campaign.enabled? && @campaign.start_time < DateTime.now() && @campaign.end_time > DateTime.now()
                render json: { message: 'Loaded the campaign', data: @campaign}, status: :ok
            else
                render json: { message: 'Campaign has ended'}, status: :ok
            end
        end

    end

end
