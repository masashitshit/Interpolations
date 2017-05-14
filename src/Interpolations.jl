module Interpolations

  #書き方を変えてみる
  function my_lin_interp2(a,b,c,d)
    
      function fuck(x)
        
          return ((d-c)/(b-a))*(x-a)+b
        
      end
    
    return fuck
    
  end

end
