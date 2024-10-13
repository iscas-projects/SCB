(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1045 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isName/-1249361959 (var1045) Bool)
(declare-fun getString/-897720134 (var1045) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var1045 var1045)
(declare-const var341 var1045) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var341 null-var1045)))
(assert true)
(define-const var3260 Bool (isName/-1249361959 var341)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>() 
 ; Statement: if $z0 != 0 goto $r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert (not (= (ite var3260 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var3950 String (getString/-897720134 var341)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var1632 Bool (startsWith/-1785782452 var3950 "MSG_")) ; Statement: $z1 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("MSG_") 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {isName/-1249361959=([com.google.javascript.rhino.Node], boolean), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1045=com.google.javascript.rhino.Node, var341=r0, var3260=$z0, var3950=$r1, var1632=$z1}
; {com.google.javascript.rhino.Node=var1045, r0=var341, $z0=var3260, $r1=var3950, $z1=var1632}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>();	if $z0 != 0 goto $r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z1 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("MSG_");	return $z1
;block_num 2