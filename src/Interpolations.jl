module Interpolations

function linerintep(grid,vals)
    
    function funfunc(x)
        
        return (vals[2]-vals[1])/(grid[2]-grid[1])*(x-grid[1])+vals[1]
        
    end
    
    return funfunc
    
end


end
