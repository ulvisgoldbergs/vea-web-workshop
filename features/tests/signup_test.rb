class SignupTest
  def initialize(pages)
      @pages = pages
  end

  def load_signup_page
    @pages.page_home.load
    @pages.page_home.visible?
    @pages.page_home.open_signup
  end

  def enter_signup_details(user)
    @pages.page_home.signup_enter_email user.email
    @pages.page_home.signup_enter_password user.password
    @pages.page_home.signup_enter_password_again user.password_again
    @pages.page_home.enter_project_name user.project_name
  end

  def submit_signup_details
    user = Users.signup_user
    enter_signup_details(user)
    @pages.page_home.close_signup
  end

    def submit_signup_details_no_again_password
    user = Users.signup_user_no_again_password
    enter_signup_details(user)
    @pages.page_home.close_signup
  end
  
end
