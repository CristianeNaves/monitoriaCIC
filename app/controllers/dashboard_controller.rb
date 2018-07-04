class DashboardController < ApplicationController
  before_action :user_logged

  def index; end

  def edit_user
    if current_user.kind_of?(User)
      @user = current_user
    elsif current_user.kind_of?(Professor)
      @professor = current_user
    else
      flash[:danger] = "Apenas alunos e professores podem editar o perfil!"
      redirect_to dashboard_path
    end
  end

  def dados_bancarios; end

  def turmas; end

  def monitorias
    @user = current_user
    @monitorias = Array.new
    Monitoria.find_each do |m|
      if @user.kind_of?(User)
        if m.fk_matricula == @user.matricula
          @monitorias << m
        end
      else
        @monitorias << m
      end
    end
  end

  def disciplinas
    @disciplinas = Disciplina.find_each
  end

  private
  def user_logged
    if !logged_in?
      redirect_to new_session_path, notice: "Você precisa estar logado para acessar essa página"
    end
  end
end
