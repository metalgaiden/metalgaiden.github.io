RSRC                 	   Resource                                                                 	      resource_local_to_scene    resource_name    script    name    title    offset    data    connections    nodes       Script    res://GraphData.gd    Script    res://NodeData.gd    
   local://1 �      
   local://2 )      
   local://3       
   local://4 $      
   local://5 �      
   local://6 �
      	   Resource                         GraphNode402          Sand reflective texture    
     �C  �B               text    �   The sand as you enter the desert area is quite reflective. It looks pretty but also clues the player in to the importance of light in this area.    	   io_nodes                   general: observation       sun's importance 	   Resource                         GraphNode136388          Secret Puzzles in desert    
    ��D  *D               text    ^   No details here, just inputs. Those who have played will know what puzzles I'm talking about.    	   io_nodes                   sun's importance                    surface light angle       _             shininess texture       _             light intuition       _             outside: secrets       _ 	   Resource                         GraphNode160360          Reflection panel puzzles    
     �C  >D               text    �   These puzzles involve seeing the panel through a reflection in the water. This allows you to see a new angle, perhaps one that has light shining on the full or part of the panel puzzle.    	   io_nodes                   roughness texture       water reflections             surface light angle       better light intuition             general: trial and error       _ 	   Resource                         GraphNode144410          Surface panel puzzles    
     �C  �C               text    �   The First puzzles you see in the desert. The roughness texture on the panels serves as the solution to the puzzles. This texture can only be seen at a certain angle.    	   io_nodes                   sun's importance       roughness texture             general:observation       shininess texture 	   Resource                         GraphNode152352          Light/shadow panel puzzles    
     �D  pC               text    �   The next puzzles in the desert. Requires you to make sure all the panels are in the sun in order to be able to solve them. Some puzzles only let you see half of them at a time.    	   io_nodes                   roughness texture       surface light angle             general: puzzle solving       _ 	   Resource                                      from       GraphNode402    
   from_port              to       GraphNode136388       to_port                    from       GraphNode144410    
   from_port              to       GraphNode152352       to_port                    from       GraphNode152352    
   from_port              to       GraphNode136388       to_port                   from       GraphNode144410    
   from_port              to       GraphNode160360       to_port                    from       GraphNode152352    
   from_port              to       GraphNode160360       to_port                   from       GraphNode402    
   from_port              to       GraphNode144410       to_port                    from       GraphNode144410    
   from_port             to       GraphNode136388       to_port                   from       GraphNode160360    
   from_port             to       GraphNode136388       to_port                                                             RSRC