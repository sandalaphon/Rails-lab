class ContractsController < ApplicationController

 def index
  contracts = Contract.where({player: params[:player_id]})
  render json: contracts.as_json({
    only:[:price],
    include:{
      sponsor: {
        only: [:name]
      },
      player: {
        only: [:name],
        include: {
          team: {
          only: [:name]
          }}
      }
    }
    })
 end

 def create
  contract = Contract.create({
    player_id: params[:player_id],
    sponsor_id: params[:sponsor_id],
    price: params[:price]
    })
  render json: contract
 end


end