class InquiresController < ApplicationController

    def send_mail
        name = params[:name]
        number = params[:number ]
        message = params[:message]
        ApplicationMailer.inquire(name, number , current_user, message).deliver
        redirect_to :inquires ,  notice: "Adding form complly"

    end

  end