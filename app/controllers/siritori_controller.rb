class SiritoriController < ApplicationController
  def sendWord
    
   receiveWord = params[:recvWord]

   #render :text => receiveWord
   urlpass = YAML.load_file(Rails.root.to_s + "/config/changeconnect.yml")
   pass = urlpass[Rails.env]['connecturl']
   redirect_to "http://192.168.0.123:3000/recvWord?wordRecv=" + receiveWord 

  end
end
