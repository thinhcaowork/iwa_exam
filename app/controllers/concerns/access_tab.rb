module AccessTab
    extend ActiveSupport::Concern
  
    def restrict_access
      return redirect_to(root_path, { success: 'Logged in successfully!' }) if current_user
    end
end
  