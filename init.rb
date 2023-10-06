Redmine::Plugin.register :redmine_context_plugin do
  name 'Redmine Context Plugin plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
  project_module :context_module do
    permission :manage_contexts, {:contexts => [:index, :show, :new, :edit, :create, :update, :destroy]}
  end

  menu :project_menu, :contexts, { :controller => 'contexts', :action => 'index' }, :caption => 'Contexts', :after => :issues, :param => :project_id

end
