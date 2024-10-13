(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3607 0)
(declare-sort var1495 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const var1495-SINGLE_FIELD_PREFIX String)
(declare-const var977 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var977 null-String)))
(define-const var3560 String var1495-SINGLE_FIELD_PREFIX) ; Statement: $r1 = <jdk.nashorn.internal.runtime.StructureLoader: java.lang.String SINGLE_FIELD_PREFIX> 
(assert true)
(define-const var1432 Bool (startsWith/-1785782452 var977 var3560)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>($r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var977=r0, var3607=null_type, var1495=jdk.nashorn.internal.runtime.StructureLoader, var3560=$r1, var1432=$z0}
; {r0=var977, null_type=var3607, jdk.nashorn.internal.runtime.StructureLoader=var1495, $r1=var3560, $z0=var1432}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <jdk.nashorn.internal.runtime.StructureLoader: java.lang.String SINGLE_FIELD_PREFIX>;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>($r1);	return $z0
;block_num 1