(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var928 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFirstChild/2090828207 (var928) var928)
(declare-fun getString/-897720134 (var928) String)
(declare-const null-var928 var928)
(declare-const var688 var928) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var688 null-var928)))
(declare-const var2090 var928) ; Statement: r2 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var2090 null-var928)))
(assert true)
(define-const var1084 var928 (getFirstChild/2090828207 var688)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert true)
(define-const var3433 String (getString/-897720134 var1084)) ; Statement: $r4 = virtualinvoke $r1.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var2884 String (getString/-897720134 var2090)) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var3744 Bool (= var3433 var2884)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String)}
; {var928=com.google.javascript.rhino.Node, var688=r0, var2090=r2, var1084=$r1, var3433=$r4, var2884=$r3, var3744=$z0}
; {com.google.javascript.rhino.Node=var928, r0=var688, r2=var2090, $r1=var1084, $r4=var3433, $r3=var2884, $z0=var3744}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: com.google.javascript.rhino.Node;	r2 := @parameter1: com.google.javascript.rhino.Node;	$r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	$r4 = virtualinvoke $r1.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$r3 = virtualinvoke r2.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	return $z0
;block_num 1