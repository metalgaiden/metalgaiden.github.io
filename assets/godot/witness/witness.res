RSRC                 	   Resource                                                                 	      resource_local_to_scene    resource_name    script    name    title    offset    data    connections    nodes       Script    res://GraphData.gd    Script    res://NodeData.gd    
   local://1 g      
   local://2       
   local://3 T      
   local://4 �      
   local://5 D      
   local://6 �	      
   local://7 ]      
   local://8       
   local://9 4         local://10 �         local://11 5         local://12 i         local://13 �         local://14 G      	   Resource                         GraphNode36          Desert    
      B   B               text    �   The Desert has puzzles that revolve around the sun. You must observe reflections and how light interacts with textures in the game's rendering engine.    	   io_nodes                   line puzzles       reflections             _       light             _       roughness textures 	   Resource                         GraphNode60       
   Treehouse    
     �D  �C               text    N   The treehouse introduces the star pattern, as well as folding puzzle bridges.    	   io_nodes                   line puzzles       star pattern             square pattern       _ 	   Resource                         GraphNode100          Logging    
     D  �A               text    A   Logging is all about shadows and how they interact with puzzles.    	   io_nodes                   line puzzles       shadow puzzles             light       _ 	   Resource                         GraphNode44          Quarry    
     D  �A               text    ^   The Quarry introduces the delta pattern. It also uses squares and stars to make it's puzzles.    	   io_nodes                   line puzzles       delta pattern             square pattern       _             star pattern       _             dot pattern       _             tetrominoes       _ 	   Resource                         GraphNode68          Mountain/Lab    
     �D  RD               text    }   The Labratory teaches you all about color, while the mountain is a common spot for players to see the secrets of the island.    	   io_nodes                   line puzzles       color puzzles             square pattern       secret 	   Resource                         GraphNode84          Orchard    
      B  D               text    �   The Orchard has puzzles that require you to quantify apple trees as well as puzzles that teach you the basic square and dot patterns.    	   io_nodes                   line puzzles       square pattern             _       dot pattern             _       apple puzzles 	   Resource                         GraphNode92       	   Symmetry    
      B  �C               text    �   Symmetry contains puzzles where you need to solve two line puzzles at once, as well as puzzles that interact with the landscape around the panels.    	   io_nodes                   reflections       double line puzzles             dot pattern       _             line puzzles       _ 	   Resource                         GraphNode108          Marsh    
     �D  D               text    `   The marsh expands on the squares of the Orchard, but with additive and subtractive tetrominoes.    	   io_nodes                   line puzzles       tetronimoes 	   Resource                         GraphNode52          Keep    
     �D  �A               text    �   The keep is two areas in one. The first area is about observations about hedge mazes you walk through, while the second is about the differences that physically walking on puzzles create.    	   io_nodes                   line puzzles       maze puzzles             sound puzzles       _ 	   Resource                         GraphNode116          Tropical Forest    
     D  RD               text    ^   The Tropical Forest deals with sound puzzles, making you identify pitch, duration and timbre.    	   io_nodes                   line puzzles       sound puzzles             dot pattern       _ 	   Resource                         GraphNode76          Entry Area    
      B  RD               text    _   The Entry Area teaches you about line puzzles in general, and has a particulary clever secret.    	   io_nodes                   general: use of mouse       line puzzles 	   Resource                         GraphNode124       
   Monestery    
     D  RD               text    L   The Monestery puzzles are about obstructions in between you and the panels.    	   io_nodes                   line puzzles       obstructions 	   Resource                      
   GraphNode          Town    
     kD  pC               text    �   The Town is in the center of the map and contains puzzles with elements from all of the other areas. Solving all of it's puzzles without seeing the rest of the world is nigh impossible.    	   io_nodes                   square pattern       _             dot pattern       _             apple puzzles       _             reflections       _             light       _             roughness texture       _             double line puzzles       _             delta pattern       _             star pattern       _             color puzzles       _             shadow puzzles       _             tetronimoes       _             maze puzzles       _             sound puzzles       _             obstructions       _             line puzzles       _ 	   Resource                       &               from       GraphNode36    
   from_port              to       GraphNode92       to_port                    from       GraphNode84    
   from_port             to       GraphNode92       to_port                   from       GraphNode68    
   from_port              to    
   GraphNode       to_port    	               from       GraphNode60    
   from_port              to    
   GraphNode       to_port                   from       GraphNode84    
   from_port             to    
   GraphNode       to_port                   from       GraphNode84    
   from_port             to    
   GraphNode       to_port                   from       GraphNode84    
   from_port              to    
   GraphNode       to_port                    from       GraphNode92    
   from_port              to    
   GraphNode       to_port                   from       GraphNode36    
   from_port             to    
   GraphNode       to_port                   from       GraphNode36    
   from_port              to    
   GraphNode       to_port                   from       GraphNode36    
   from_port             to    
   GraphNode       to_port                   from       GraphNode44    
   from_port              to    
   GraphNode       to_port                   from       GraphNode100    
   from_port              to    
   GraphNode       to_port    
               from       GraphNode108    
   from_port              to    
   GraphNode       to_port                   from       GraphNode52    
   from_port              to    
   GraphNode       to_port                   from       GraphNode124    
   from_port              to    
   GraphNode       to_port                   from       GraphNode116    
   from_port              to    
   GraphNode       to_port                   from       GraphNode76    
   from_port              to    
   GraphNode       to_port                   from       GraphNode76    
   from_port              to       GraphNode124       to_port                    from       GraphNode76    
   from_port              to       GraphNode116       to_port                    from       GraphNode76    
   from_port              to       GraphNode68       to_port                    from       GraphNode76    
   from_port              to       GraphNode108       to_port                    from       GraphNode76    
   from_port              to       GraphNode60       to_port                    from       GraphNode76    
   from_port              to       GraphNode52       to_port                    from       GraphNode76    
   from_port              to       GraphNode100       to_port                    from       GraphNode76    
   from_port              to       GraphNode44       to_port                    from       GraphNode76    
   from_port              to       GraphNode84       to_port                    from       GraphNode76    
   from_port              to       GraphNode92       to_port                   from       GraphNode76    
   from_port              to       GraphNode36       to_port                    from       GraphNode84    
   from_port              to       GraphNode60       to_port                   from       GraphNode36    
   from_port             to       GraphNode100       to_port                   from       GraphNode84    
   from_port              to       GraphNode44       to_port                   from       GraphNode84    
   from_port             to       GraphNode44       to_port                   from       GraphNode60    
   from_port              to       GraphNode44       to_port                   from       GraphNode108    
   from_port              to       GraphNode44       to_port                   from       GraphNode84    
   from_port              to       GraphNode68       to_port                   from       GraphNode116    
   from_port              to       GraphNode52       to_port                   from       GraphNode84    
   from_port             to       GraphNode116       to_port                                                                                              	         
                              RSRC