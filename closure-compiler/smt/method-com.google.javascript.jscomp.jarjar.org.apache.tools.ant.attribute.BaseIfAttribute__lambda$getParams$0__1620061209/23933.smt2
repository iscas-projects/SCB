(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3637 0)
(declare-sort var1391 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3637_getKey/-33423493 (var3637) var1391)
(declare-fun cast-from-var1391-to-String (var1391) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var3637 var3637)
(declare-const var1578 var3637) ; Statement: r0 := @parameter0: java.util.Map$Entry 
(assert (not (= var1578 null-var3637)))
(define-const var1094 var1391 (var3637_getKey/-33423493 var1578)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var1134 String (cast-from-var1391-to-String var1094)) ; Statement: $r2 = (java.lang.String) $r1 
(assert true)
(define-const var3205 Bool (startsWith/-1785782452 var1134 "ant-attribute:param")) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean startsWith(java.lang.String)>("ant-attribute:param") 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3637_getKey/-33423493=([java.util.Map$Entry], java.lang.Object), cast-from-var1391-to-String=([java.lang.Object], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3637=java.util.Map$Entry, var1578=r0, var1391=java.lang.Object, var1094=$r1, var1134=$r2, var3205=$z0}
; {java.util.Map$Entry=var3637, r0=var1578, java.lang.Object=var1391, $r1=var1094, $r2=var1134, $z0=var3205}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.util.Map$Entry;	$r1 = interfaceinvoke r0.<java.util.Map$Entry: java.lang.Object getKey()>();	$r2 = (java.lang.String) $r1;	$z0 = virtualinvoke $r2.<java.lang.String: boolean startsWith(java.lang.String)>("ant-attribute:param");	return $z0
;block_num 1