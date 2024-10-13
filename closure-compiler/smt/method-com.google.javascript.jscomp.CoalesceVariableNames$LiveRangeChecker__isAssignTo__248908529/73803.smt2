(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1989 0)
(declare-sort var1075 0)
(declare-sort var2458 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isName/-1249361959 (var1075) Bool)
(declare-fun isParamList/-2115437013 (var1075) Bool)
(declare-fun getName/-1096558387 (var2458) String)
(declare-fun cast-from-var1989-to-var2458 (var1989) var2458)
(declare-fun getString/-897720134 (var1075) String)
(declare-const null-var1989 var1989)
(declare-const null-var1075 var1075)
(declare-const var3435 var1989) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.Var 
(assert (not (= var3435 null-var1989)))
(declare-const var1348 var1075) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var1348 null-var1075)))
(declare-const var1454 var1075) ; Statement: r5 := @parameter2: com.google.javascript.rhino.Node 
(assert (not (= var1454 null-var1075)))
(assert true)
(define-const var2797 Bool (isName/-1249361959 var1348)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>() 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isAssignmentOp(com.google.javascript.rhino.Node)>(r0) 
(assert (not (= (ite var2797 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var82 Bool (isParamList/-2115437013 var1454)) ; Statement: $z4 = virtualinvoke r5.<com.google.javascript.rhino.Node: boolean isParamList()>() 
 ; Statement: if $z4 == 0 goto $z5 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isNameDeclaration(com.google.javascript.rhino.Node)>(r5) 
(assert (not (= (ite var82 1 0) 0))) ; Negate: Cond: $z4 == 0  
(assert true)
(define-const var3256 String (getName/-1096558387 (cast-from-var1989-to-var2458 var3435))) ; Statement: $r11 = virtualinvoke r2.<com.google.javascript.jscomp.Var: java.lang.String getName()>() 
(assert true)
(define-const var1398 String (getString/-897720134 var1348)) ; Statement: $r10 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var1737 Bool (= var3256 var1398)) ; Statement: $z10 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>($r10) 
 ; Statement: return $z10 
(check-sat)
(get-model)
(get-unsat-core)
; {isName/-1249361959=([com.google.javascript.rhino.Node], boolean), isParamList/-2115437013=([com.google.javascript.rhino.Node], boolean), getName/-1096558387=([com.google.javascript.jscomp.AbstractVar], java.lang.String), cast-from-var1989-to-var2458=([com.google.javascript.jscomp.Var], com.google.javascript.jscomp.AbstractVar), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String)}
; {var1989=com.google.javascript.jscomp.Var, var3435=r2, var1075=com.google.javascript.rhino.Node, var1348=r0, var1454=r5, var2797=$z0, var82=$z4, var2458=com.google.javascript.jscomp.AbstractVar, var3256=$r11, var1398=$r10, var1737=$z10}
; {com.google.javascript.jscomp.Var=var1989, r2=var3435, com.google.javascript.rhino.Node=var1075, r0=var1348, r5=var1454, $z0=var2797, $z4=var82, com.google.javascript.jscomp.AbstractVar=var2458, $r11=var3256, $r10=var1398, $z10=var1737}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @parameter0: com.google.javascript.jscomp.Var;	r0 := @parameter1: com.google.javascript.rhino.Node;	r5 := @parameter2: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>();	if $z0 == 0 goto $z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isAssignmentOp(com.google.javascript.rhino.Node)>(r0);	$z4 = virtualinvoke r5.<com.google.javascript.rhino.Node: boolean isParamList()>();	if $z4 == 0 goto $z5 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isNameDeclaration(com.google.javascript.rhino.Node)>(r5);	$r11 = virtualinvoke r2.<com.google.javascript.jscomp.Var: java.lang.String getName()>();	$r10 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z10 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>($r10);	return $z10
;block_num 3