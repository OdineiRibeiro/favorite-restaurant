class RestaurantsController < ApplicationController

  # Mostra todos os restaurantes cadastrados
  def index
    @restaurants = Restaurant.order :name
    respond_to do |format|
      format.html
      format.json {render json: @restaurants}
    end
  end

  # Mostra apenas um restaurante cadastrado usando o ID como parametro de pesquisa
  # nome da action neste controle e também o nome da view que a chama
  #     |
  def show
    # variável de instancia que retorna para o navegador
    #    |
    @restaurant = Restaurant.find(params[:id])
    #                       |
    # Query que pesquisa no banco de dados um restaurante pelo id e retorna para a view

    respond_to do |format|
      format.html
      format.json {render json: @restaurant}
    end
  end

  # Deleta um restaurante cadastrado usando o ID como parametro de pesquisa
  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to action: "index"
  end

  # CRIA um novo restaurante
  def new
    @restaurant = Restaurant.new
  end

  # ALTERA um restaurante já existente
  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to(action: "show", id: @restaurant)
    else
      render action: "new"
    end
  end

  # Abre as informações de um restaurante para edição (mas não salva)
  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update_attributes(restaurant_params)
      redirect_to(action: "show", id: @restaurant)
    else
      render action: "edit"
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :speciality, :about)
  end

end
