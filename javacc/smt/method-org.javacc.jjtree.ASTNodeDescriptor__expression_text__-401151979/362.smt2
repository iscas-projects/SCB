(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2171 0)
(declare-sort var2426 0)
(declare-sort var3055 0)
(declare-sort var3276 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun expression/-1689018267 (var2171) var2426)
(declare-fun getFirstToken/-615766237 (var3276) var3055)
(declare-fun cast-from-var2426-to-var3276 (var2426) var3276)
(declare-fun image/-1103324373 (var3055) String)
(declare-fun getLastToken/-1621043189 (var3276) var3055)
(declare-const null-var2171 var2171)
(declare-const var447 var2171) ; Statement: r0 := @this: org.javacc.jjtree.ASTNodeDescriptor 
(assert (not (= var447 null-var2171)))
(define-const var2689 var2426 (expression/-1689018267 var447)) ; Statement: $r1 = r0.<org.javacc.jjtree.ASTNodeDescriptor: org.javacc.jjtree.ASTNodeDescriptorExpression expression> 
(assert true)
(define-const var2177 var3055 (getFirstToken/-615766237 (cast-from-var2426-to-var3276 var2689))) ; Statement: $r2 = virtualinvoke $r1.<org.javacc.jjtree.ASTNodeDescriptorExpression: org.javacc.jjtree.Token getFirstToken()>() 
(define-const var3001 String (image/-1103324373 var2177)) ; Statement: $r3 = $r2.<org.javacc.jjtree.Token: java.lang.String image> 
(assert true)
(define-const var2876 Bool (= var3001 ")")) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(")") 
 ; Statement: if $z0 == 0 goto r8 = "" 
(assert (not (= (ite var2876 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3205 var2426 (expression/-1689018267 var447)) ; Statement: $r5 = r0.<org.javacc.jjtree.ASTNodeDescriptor: org.javacc.jjtree.ASTNodeDescriptorExpression expression> 
(assert true)
(define-const var3517 var3055 (getLastToken/-1621043189 (cast-from-var2426-to-var3276 var3205))) ; Statement: $r6 = virtualinvoke $r5.<org.javacc.jjtree.ASTNodeDescriptorExpression: org.javacc.jjtree.Token getLastToken()>() 
(define-const var626 String (image/-1103324373 var3517)) ; Statement: $r7 = $r6.<org.javacc.jjtree.Token: java.lang.String image> 
(assert true)
(define-const var2697 Bool (= var626 "(")) ; Statement: $z1 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("(") 
 ; Statement: if $z1 == 0 goto r8 = "" 
(assert (not (= (ite var2697 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return "true" 
(check-sat)
(get-model)
(get-unsat-core)
; {expression/-1689018267=([org.javacc.jjtree.ASTNodeDescriptor], org.javacc.jjtree.ASTNodeDescriptorExpression), getFirstToken/-615766237=([org.javacc.jjtree.JJTreeNode], org.javacc.jjtree.Token), cast-from-var2426-to-var3276=([org.javacc.jjtree.ASTNodeDescriptorExpression], org.javacc.jjtree.JJTreeNode), image/-1103324373=([org.javacc.jjtree.Token], java.lang.String), getLastToken/-1621043189=([org.javacc.jjtree.JJTreeNode], org.javacc.jjtree.Token)}
; {var2171=org.javacc.jjtree.ASTNodeDescriptor, var447=r0, var2426=org.javacc.jjtree.ASTNodeDescriptorExpression, var2689=$r1, var3055=org.javacc.jjtree.Token, var3276=org.javacc.jjtree.JJTreeNode, var2177=$r2, var3001=$r3, var2876=$z0, var3205=$r5, var3517=$r6, var626=$r7, var2697=$z1}
; {org.javacc.jjtree.ASTNodeDescriptor=var2171, r0=var447, org.javacc.jjtree.ASTNodeDescriptorExpression=var2426, $r1=var2689, org.javacc.jjtree.Token=var3055, org.javacc.jjtree.JJTreeNode=var3276, $r2=var2177, $r3=var3001, $z0=var2876, $r5=var3205, $r6=var3517, $r7=var626, $z1=var2697}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @this: org.javacc.jjtree.ASTNodeDescriptor;	$r1 = r0.<org.javacc.jjtree.ASTNodeDescriptor: org.javacc.jjtree.ASTNodeDescriptorExpression expression>;	$r2 = virtualinvoke $r1.<org.javacc.jjtree.ASTNodeDescriptorExpression: org.javacc.jjtree.Token getFirstToken()>();	$r3 = $r2.<org.javacc.jjtree.Token: java.lang.String image>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(")");	if $z0 == 0 goto r8 = "";	$r5 = r0.<org.javacc.jjtree.ASTNodeDescriptor: org.javacc.jjtree.ASTNodeDescriptorExpression expression>;	$r6 = virtualinvoke $r5.<org.javacc.jjtree.ASTNodeDescriptorExpression: org.javacc.jjtree.Token getLastToken()>();	$r7 = $r6.<org.javacc.jjtree.Token: java.lang.String image>;	$z1 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("(");	if $z1 == 0 goto r8 = "";	return "true"
;block_num 3