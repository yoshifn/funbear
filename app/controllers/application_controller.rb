class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def show
    @anything = Fundawg.find_by_id(params["id"])
    render 'show'
  end
  def create
    f = Fundawg.new
    f.name = params['name']
    f.memberstatus = params['memberstatus']
    f.picture = params['picture']
    f.bio = params['bio']
    f.location = params['location']
    f.save
    redirect_to "/funbear/#{ f.id }"
  end
  def edit
    @anything = Fundawg.find_by_id(params['id'])
  end
  
  def update 
    f = Fundawg.find_by_id(params['id'])
    f.name = params['name']
    f.memberstatus = params['memberstatus']
    f.picture = params['picture']
    f.bio = params['bio']
    f.location = params['location']
    f.save
    redirect_to "/funbear/#{ f.id }"
  end
end