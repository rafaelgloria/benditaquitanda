class ControlUsuariosController < ApplicationController
  before_action :authenticate_usuario!

  #before_filter :set_current_user

  #def set_current_user
  #  Team.current_user = current_user
  #end
  
  def index
  	@usuarios = Usuario.all
  #	authorize @usuarios
  end
end
