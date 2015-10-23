Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })
  get("/square_root/:num", { :controller => "calculations", :action => "sqrt" })
  get("/random/:low_num/:high_num", { :controller => "calculations", :action => "rand" })
  get("/payment/:apr/:years/:principal", { :controller => "calculations", :action => "payment" })
end
