class ControlUsuariosController < ApplicationController
  before_action :authenticate_usuario!

  def index
  	@usuarios = Usuario.all
  	authorize @usuarios
  end

end
