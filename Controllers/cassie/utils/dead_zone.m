function output = dead_zone(input, dead)
     if abs(input) > dead
        output = input - sign(input)*dead;
     else
         output = 0;
     end                      
end

