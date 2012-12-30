authorization do
  role :admin do
    has_permission_on :web_pages, :to => [:crud]
  end
end


privileges do
  privilege :crud do
    includes :create, :read, :update, :delete, :index, :new, :destroy, :show, :edit
  end
end
