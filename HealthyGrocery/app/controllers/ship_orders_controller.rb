class ShipOrdersController < ApplicationController
  
    handles_sortable_columns
  # GET /trucks
  # GET /trucks.json
  def gen
    #handling table sort by
    order = sortable_column_order
    @trucks = Truck.all.order_by(order)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trucks }
    end
  end
end
