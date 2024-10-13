(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1561 0)
(declare-sort var1168 0)
(declare-sort var1200 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isCall/1872284454 (var1561) Bool)
(declare-fun getFirstChild/2090828207 (var1561) var1561)
(declare-fun var1200_isNormalOrOptChainGetProp/-1716624290 (var1561) Bool)
(declare-fun getString/-897720134 (var1561) String)
(declare-const null-var1561 var1561)
(declare-const null-String String)
(declare-const var1471 var1561) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var1471 null-var1561)))
(declare-const var3742 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var3742 null-String)))
(assert true)
(define-const var1161 Bool (isCall/1872284454 var1471)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isCall()>() 
 ; Statement: if $z0 != 0 goto $r5 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert (not (= (ite var1161 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var367 var1561 (getFirstChild/2090828207 var1471)) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(define-const var3961 Bool (var1200_isNormalOrOptChainGetProp/-1716624290 var367)) ; Statement: $z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isNormalOrOptChainGetProp(com.google.javascript.rhino.Node)>($r5) 
 ; Statement: if $z1 == 0 goto $z2 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isNormalOrOptChainGet(com.google.javascript.rhino.Node)>($r5) 
(assert (not (= (ite var3961 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var1089 String (getString/-897720134 var367)) ; Statement: $r4 = virtualinvoke $r5.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var640 Bool (= var1089 var3742)) ; Statement: $z5 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: return $z5 
(check-sat)
(get-model)
(get-unsat-core)
; {isCall/1872284454=([com.google.javascript.rhino.Node], boolean), getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), var1200_isNormalOrOptChainGetProp/-1716624290=([com.google.javascript.rhino.Node], boolean), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String)}
; {var1561=com.google.javascript.rhino.Node, var1471=r0, var3742=r3, var1168=null_type, var1161=$z0, var367=$r5, var1200=com.google.javascript.jscomp.NodeUtil, var3961=$z1, var1089=$r4, var640=$z5}
; {com.google.javascript.rhino.Node=var1561, r0=var1471, r3=var3742, null_type=var1168, $z0=var1161, $r5=var367, com.google.javascript.jscomp.NodeUtil=var1200, $z1=var3961, $r4=var1089, $z5=var640}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: com.google.javascript.rhino.Node;	r3 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isCall()>();	if $z0 != 0 goto $r5 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	$r5 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	$z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isNormalOrOptChainGetProp(com.google.javascript.rhino.Node)>($r5);	if $z1 == 0 goto $z2 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isNormalOrOptChainGet(com.google.javascript.rhino.Node)>($r5);	$r4 = virtualinvoke $r5.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z5 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3);	return $z5
;block_num 3