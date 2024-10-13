(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1248 0)
(declare-sort var2825 0)
(declare-sort var2674 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isName/-1249361959 (var2825) Bool)
(declare-fun getString/-897720134 (var2825) String)
(declare-const null-var1248 var1248)
(declare-const null-var2825 var2825)
(declare-const null-String String)
(declare-const var1319 var1248) ; Statement: r1 := @this: com.google.javascript.jscomp.CollapseAnonymousFunctions 
(assert (not (= var1319 null-var1248)))
(declare-const var3929 var2825) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var3929 null-var2825)))
(declare-const var2264 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2264 null-String)))
(assert true)
(define-const var2475 Bool (isName/-1249361959 var3929)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>() 
 ; Statement: if $z0 == 0 goto r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert (not (= (ite var2475 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3606 String (getString/-897720134 var3929)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var2094 Bool (= var3606 var2264)) ; Statement: $z2 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z2 == 0 goto r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert (not (= (ite var2094 1 0) 0))) ; Negate: Cond: $z2 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {isName/-1249361959=([com.google.javascript.rhino.Node], boolean), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String)}
; {var1248=com.google.javascript.jscomp.CollapseAnonymousFunctions, var1319=r1, var2825=com.google.javascript.rhino.Node, var3929=r0, var2264=r2, var2674=null_type, var2475=$z0, var3606=$r3, var2094=$z2}
; {com.google.javascript.jscomp.CollapseAnonymousFunctions=var1248, r1=var1319, com.google.javascript.rhino.Node=var2825, r0=var3929, r2=var2264, null_type=var2674, $z0=var2475, $r3=var3606, $z2=var2094}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.CollapseAnonymousFunctions;	r0 := @parameter0: com.google.javascript.rhino.Node;	r2 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>();	if $z0 == 0 goto r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	$r3 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z2 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z2 == 0 goto r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	return 1
;block_num 3