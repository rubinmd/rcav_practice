class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def sqrt
    @the_number=params[:num].to_f
  end

  def rand
    @high_num=params[:high_num]
    @low_num=params[:low_num]
  end

  def payment
    @apr=params[:apr].to_f
    @years=params[:years].to_f
    @principal=params[:principal].to_f
    @apr_percent_mon=@apr/1000/12
    @nper=@years*12
    @monthly_payment= (@apr_percent_mon * @principal)/(1-(1+@apr_percent_mon)**-@nper)
  end

end
