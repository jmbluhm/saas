module UsersHelper
  def job_title_icon
    if @user.profile.job_title == "Pretty Rad"
      "<i class='fa fa-exclamation'></i>".html_safe
    elsif @user.profile.job_title == "Quite Rad"
      "<i class='fa fa-motorcycle'></i>".html_safe
    elsif @user.profile.job_title == "Almost TOO Rad"
      "<i class='fa fa-bomb'></i>".html_safe
    end  
  end
end
