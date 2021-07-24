class RecordsController < ApplicationController
    def create
        Record.import(params[:file])
    end

    def index
        records = Record.all
        render json: records
    end
end
