Refinery::Admin::PagesController.prepend(
  Module.new do
    def permitted_page_params
      super << [:og_title, :og_description, :og_image_id, :og_type]
    end
  end
)