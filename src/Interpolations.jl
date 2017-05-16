
module Interpolations

function linerintep(grid,vals)
    
    function funfunc(x)
        
        return (vals[2]-vals[1])/(grid[2]-grid[1])*(x-grid[1])+vals[1]
        
    end
    
    return funfunc
    
end

export linerintep



function linerinterp(grid,vals)
     
    function funfun(x)

        if x < grid[1]
        
            return 0
        
        end
    
        if x > grid[end]
        
            return 0
        
        end
    
        if grid[1] <= x <= grid[end]
            
            i = searchsortedlast(grid,x)

            y = (vals[i+1]-vals[i])/(grid[i+1]-grid[i])*(x-grid[i])+vals[i]
      
            return y
            
        end
        
    end
    
    return funfun
        
end

export linerinterp

end
