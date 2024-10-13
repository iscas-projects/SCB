(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var352 0)
(declare-sort var96 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isName/-1249361959 (var352) Bool)
(declare-fun getString/-897720134 (var352) String)
(declare-const null-var352 var352)
(declare-const null-String String)
(declare-const var2646 var352) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var2646 null-var352)))
(declare-const var3207 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3207 null-String)))
(assert true)
(define-const var1505 Bool (isName/-1249361959 var2646)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>() 
 ; Statement: if $z0 == 0 goto r3 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert (not (= (ite var1505 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2555 String (getString/-897720134 var2646)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var3227 Bool (= var3207 var2555)) ; Statement: $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {isName/-1249361959=([com.google.javascript.rhino.Node], boolean), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String)}
; {var352=com.google.javascript.rhino.Node, var2646=r0, var3207=r1, var96=null_type, var1505=$z0, var2555=$r2, var3227=$z2}
; {com.google.javascript.rhino.Node=var352, r0=var2646, r1=var3207, null_type=var96, $z0=var1505, $r2=var2555, $z2=var3227}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: com.google.javascript.rhino.Node;	r1 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>();	if $z0 == 0 goto r3 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	$r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>($r2);	return $z2
;block_num 2