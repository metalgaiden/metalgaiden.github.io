RSRC                 	   Resource                                                                 	      resource_local_to_scene    resource_name    script    name    title    offset    data    connections    nodes       Script    res://GraphData.gd    Script    res://NodeData.gd    
   local://1 �      
   local://2 �      
   local://3 �      
   local://4 n      
   local://5 �      
   local://6 g      
   local://7 &      	   Resource                         @GraphNode@36          Tutorial Popup 1    
     �B  �B               text           	   io_nodes                   general: reading       basic controls 	   Resource                         @GraphNode@64          Tutorial Popup 2    
     *D  �B               text           	   io_nodes                   general: reading       Level 2 Mechanic 	   Resource                         @GraphNode@44          Level 2    
     pD  �C               text           	   io_nodes                   Level 2 Mechanic       _             basic controls       _ 	   Resource                         @GraphNode@91          Level n    
    ��D  �C               text           	   io_nodes                   Level n mechanic       _             level n-1 mechanic       _             basic controls       _ 	   Resource                         @GraphNode@119          Tutorial Popup n    
    ��D  �B               text           	   io_nodes                   general: reading       level n mechanic 	   Resource                      
   GraphNode          Level 1    
     �C  �C               text           	   io_nodes                   basic controls       _ 	   Resource                                      from       @GraphNode@36    
   from_port              to    
   GraphNode       to_port                    from       @GraphNode@64    
   from_port              to       @GraphNode@44       to_port                    from       @GraphNode@36    
   from_port              to       @GraphNode@44       to_port                   from       @GraphNode@36    
   from_port              to       @GraphNode@91       to_port                   from       @GraphNode@64    
   from_port              to       @GraphNode@91       to_port                   from       @GraphNode@119    
   from_port              to       @GraphNode@91       to_port                                                                       RSRC