class SectionsController < ApplicationController
  
  layout 'admin'
  
  before_action :confirm_logged_in
  
  def index
    @page_title = "All Sections"
    @sections = Section.all
  end

  def new
    @section = Section.new()
    @section_count = Section.count + 1
    @pages = Page.sorted
  end
  
  def create
   @section = Section.new(section_params)
   if @section.save
     flash[:notice] = "Section saved successfully!"
     redirect_to(sections_path)
   else
     @section_count = Section.count + 1
     @pages = Page.sorted
     render("new")
   end
  end

  def show
    @section = Section.find(params[:id])
  end

  def edit
    @section = Section.find(params[:id])
    @section_count = Section.count
    @pages = Page.sorted
  end
  
  def update
    @section = Section.find(params[:id])
    if @section.update_attributes(section_params)
      flash[:notice] = "Section updated successfully!"
      redirect_to(sections_path)
    else
      @section_count = Section.count
      @pages = Page.sorted
      render("edit")
    end
  end

  def delete
    @section = Section.find(params[:id])
  end
  
  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    flash[:notice] = "Section deleted successfully!"
    redirect_to(sections_path)
  end
  
  private
  
  def section_params
    params.require(:section).permit(:name, :position, :visible, :content_type, :content, :page_id)
  end
end
