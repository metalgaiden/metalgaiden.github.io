RSRC                 	   Resource                                                                 	      resource_local_to_scene    resource_name    script    name    title    offset    data    connections    nodes       Script    res://GraphData.gd    Script    res://NodeData.gd    
   local://1 �      
   local://2 �      
   local://3 C      
   local://4       
   local://5 /      
   local://6 	      	   Resource                         GraphNode51       
   100 Hints    
     �C  �B               text    W   Numbered list of clues for the crossword puzzle. One of them has the correct solution.    	   io_nodes                   correct # hint to use       hint for big word 	   Resource                         GraphNode43          Farm Animals    
     �C  �C               text    b   Pictures of farm animals of various types. Above them is text that reads "How many __ + __ + __?"    	   io_nodes                	   3 blanks       correct # hint to use             general: counting       _ 	   Resource                      
   GraphNode          Word Search    
     �C  /D               text    �   Word search with multiple answers. Some of them fit into the crossword puzzle. Three of them are used for the farm animal picture. The entire word search doubles as a cypher.    	   io_nodes                   cypher key       side words             general: word search    	   3 blanks             _       final solution 	   Resource                         GraphNode119       	   You Win!    
     �D  6D               text    U   Nice, you found the password "Epistemology", were you able to do any more than that?    	   io_nodes                   final solution       _ 	   Resource                         GraphNode43122          Crossword puzzle    
    ��D  �C               text    �   Crossword puzzle with one long word and a number of smaller words. Next to a number of letters are notes like this: "a = ". This is used to solve the word search cypher.    	   io_nodes                   hint for big word       cypher key             side words       _             general: crossword       _ 	   Resource                                      from       GraphNode43    
   from_port              to       GraphNode51       to_port                    from    
   GraphNode    
   from_port             to       GraphNode43       to_port                    from    
   GraphNode    
   from_port             to       GraphNode119       to_port                    from       GraphNode51    
   from_port              to       GraphNode43122       to_port                    from    
   GraphNode    
   from_port              to       GraphNode43122       to_port                   from       GraphNode43122    
   from_port              to    
   GraphNode       to_port                                                              RSRC