(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3466 0)
(declare-sort var1014 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFirstChild/2090828207 (var3466) var3466)
(declare-fun var1014_isNormalOrOptChainGetProp/-1716624290 (var3466) Bool)
(declare-fun getString/-897720134 (var3466) String)
(declare-const null-var3466 var3466)
(declare-const var975 var3466) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var975 null-var3466)))
(assert true)
(define-const var2018 var3466 (getFirstChild/2090828207 var975)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(define-const var1276 Bool (var1014_isNormalOrOptChainGetProp/-1716624290 var2018)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isNormalOrOptChainGetProp(com.google.javascript.rhino.Node)>(r1) 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isNormalOrOptChainGet(com.google.javascript.rhino.Node)>(r1) 
(assert (not (= (ite var1276 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3259 String (getString/-897720134 var2018)) ; Statement: r4 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
 ; Statement: goto [?= $r3 = "toString"] 
(assert true) ; Non Conditional
(define-const var1873 String "toString") ; Statement: $r3 = "toString" 
(assert true)
(define-const var768 Bool (= var1873 var3259)) ; Statement: $z3 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: return $z3 
(check-sat)
(get-model)
(get-unsat-core)
; {getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), var1014_isNormalOrOptChainGetProp/-1716624290=([com.google.javascript.rhino.Node], boolean), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String)}
; {var3466=com.google.javascript.rhino.Node, var975=r0, var2018=r1, var1014=com.google.javascript.jscomp.NodeUtil, var1276=$z0, var3259=r4, var1873=$r3, var768=$z3}
; {com.google.javascript.rhino.Node=var3466, r0=var975, r1=var2018, com.google.javascript.jscomp.NodeUtil=var1014, $z0=var1276, r4=var3259, $r3=var1873, $z3=var768}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: com.google.javascript.rhino.Node;	r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	$z0 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isNormalOrOptChainGetProp(com.google.javascript.rhino.Node)>(r1);	if $z0 == 0 goto $z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isNormalOrOptChainGet(com.google.javascript.rhino.Node)>(r1);	r4 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>();	goto [?= $r3 = "toString"];	$r3 = "toString";	$z3 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r4);	return $z3
;block_num 3