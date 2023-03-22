class StartformsController < InheritedResources::Base

  def index
    # debugger
    # @startforms = Startform.all

    @startforms = Startform.where("number LIKE ? AND name LIKE ?", "%#{params[:search_number]}%", "%#{params[:search_name]}%")
   

    # if params[:search_number].present?
    #   @startforms = Startform.where(number: params[:search_number])

    # if params[:search_number].present?
    #   @startforms = Startform.where("number LIKE ?", "%#{params[:search_number]}%") 

    # # elsif params[:search_name].present?
    # #   @startforms = Startform.where(name: params[:search_name])

    # elsif params[:search_name].present?
    #   @startforms = Startform.where("name LIKE ?", "%#{params[:search_name]}%")

    # elsif params[:search_number].present? && params[:search_name].present?
    #   @startforms = Startform.where(number: params[:search_number]).where(name: params[:search_name])
    # else
    #   @startforms = Startform.all
    # end


  # if params[:search_number].present? && params[:search_name].present?
  #   @startforms = Startform.where(number: params[:search_number]).where(name: params[:search_name])

  # elsif params[:search_number].present?
  #   @startforms = Startform.where(number: params[:search_number])

  # elsif params[:search_name].present?
  #   @startforms = Startform.where(name: params[:search_name])
  
  # else
  #   @startforms = Startform.all
  # end




  #  @startforms = Startform.where(number: params[:search_number]).where(name: params[:search_name])
  #  @startforms = Startform.where(name: params[:search_name])
  end

  private

    def startform_params
      params.require(:startform).permit(:number, :name)
    end

end
