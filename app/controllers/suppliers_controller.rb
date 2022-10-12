class SuppliersController < ApplicationController
    def index
        suppliers = Supplier.all
        render json: suppliers
    end

    def show
        supplier = Supplier.find_by(id: params[:id])
        if supplier
            render json: supplier
        else
            render json: { error: "Supplier not found"}, status: :not_found
        end
    end
end
