(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var575 0)
(declare-sort var1553 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isName/-1249361959 (var575) Bool)
(declare-fun getString/-897720134 (var575) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var575 var575)
(declare-const null-String String)
(declare-const var1906 var575) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var1906 null-var575)))
(assert true)
(define-const var1226 Bool (isName/-1249361959 var1906)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGetProp()>() 
(assert (not (= (ite var1226 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1893 String (getString/-897720134 var1906)) ; Statement: r6 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var1149 Bool (isEmpty/-1285796103 var1893)) ; Statement: $z3 = virtualinvoke r6.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z3 == 0 goto $r7 = r6 
(assert (not (= (ite var1149 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var2669 String null-String) ; Statement: $r7 = null 
 ; Statement: goto [?= return $r7] 
(assert true) ; Non Conditional
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {isName/-1249361959=([com.google.javascript.rhino.Node], boolean), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var575=com.google.javascript.rhino.Node, var1906=r0, var1226=$z0, var1893=r6, var1149=$z3, var1553=null_type, var2669=$r7}
; {com.google.javascript.rhino.Node=var575, r0=var1906, $z0=var1226, r6=var1893, $z3=var1149, null_type=var1553, $r7=var2669}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>();	if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGetProp()>();	r6 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z3 = virtualinvoke r6.<java.lang.String: boolean isEmpty()>();	if $z3 == 0 goto $r7 = r6;	$r7 = null;	goto [?= return $r7];	return $r7
;block_num 4