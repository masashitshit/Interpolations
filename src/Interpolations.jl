
module Interpolations


export linerinterp


function linerinterp(grid,vals)
     
    function funfun(x)

        if x < grid[1]
        
            return (vals[2]-vals[1])/(grid[2]-grid[1])*(x-grid[1])+vals[1]
        
        end
    
          if  grid[end] <= x
        
               return (vals[end]-vals[end-1])/(grid[end]-grid[end-1])*(x-grid[end-1])+vals[end-1]
        
        end
    
        if grid[1] <= x < grid[end]
            
            i = searchsortedlast(grid,x)

            y = (vals[i+1]-vals[i])/(grid[i+1]-grid[i])*(x-grid[i])+vals[i]
      
            return y
            
        end
        
    end
    
    return funfun
        
end



end
