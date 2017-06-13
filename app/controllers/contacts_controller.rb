class ContactsController < ApplicationController

  def show
    @contact = Contact.find(params[:id])
    @hash = Gmaps4rails.build_markers(@contact) do |contact, marker|
      marker.lat contact.latitude
      marker.lng contact.longitude
    end
  end
end
