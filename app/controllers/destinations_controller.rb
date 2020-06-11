class DestinationsController < AppkicationController
  
  def index
    @destinations = Destination.all
    json_response(@destinations)
  end

end