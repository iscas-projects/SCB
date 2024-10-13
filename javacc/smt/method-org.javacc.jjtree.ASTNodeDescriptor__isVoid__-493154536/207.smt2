(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3659 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-1689018267 (var3659) String)
(declare-const null-var3659 var3659)
(declare-const var3907 var3659) ; Statement: r0 := @this: org.javacc.jjtree.ASTNodeDescriptor 
(assert (not (= var3907 null-var3659)))
(define-const var2388 String (name/-1689018267 var3907)) ; Statement: $r1 = r0.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String name> 
(assert true)
(define-const var579 Bool (= var2388 "void")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("void") 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-1689018267=([org.javacc.jjtree.ASTNodeDescriptor], java.lang.String)}
; {var3659=org.javacc.jjtree.ASTNodeDescriptor, var3907=r0, var2388=$r1, var579=$z0}
; {org.javacc.jjtree.ASTNodeDescriptor=var3659, r0=var3907, $r1=var2388, $z0=var579}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.javacc.jjtree.ASTNodeDescriptor;	$r1 = r0.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String name>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("void");	return $z0
;block_num 1