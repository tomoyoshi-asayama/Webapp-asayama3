class SiritoriController < ApplicationController
  def sendWord
    
   receiveWord = params[:wordRecv]

   #render :text => receiveWord
   urlpass = YAML.load_file(Rails.root.to_s + "/config/changeconnect.yml")
   pass = urlpass[Rails.env]['connecturl']
   redirect_to pass + receiveWord 

  end
end
