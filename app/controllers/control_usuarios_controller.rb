class ControlUsuariosController < ApplicationController
  before_action :authenticate_usuario!

<<<<<<< HEAD
  #before_filter :set_current_user

  #def set_current_user
  #  Team.current_user = current_user
  #end
  
  def index
  	@usuarios = Usuario.all
  #	authorize @usuarios
=======
  def index
  	@usuarios = Usuario.all
  	authorize @usuarios
>>>>>>> 68b909a772c322cc04d8a6a94ba5e1c209a94d54
  end

end
