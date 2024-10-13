(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var165 0)
(declare-sort var596 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const var596-DUAL_FIELD_PREFIX String)
(declare-const var2244 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2244 null-String)))
(define-const var2960 String var596-DUAL_FIELD_PREFIX) ; Statement: $r1 = <jdk.nashorn.internal.runtime.StructureLoader: java.lang.String DUAL_FIELD_PREFIX> 
(assert true)
(define-const var2289 Bool (startsWith/-1785782452 var2244 var2960)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>($r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var2244=r0, var165=null_type, var596=jdk.nashorn.internal.runtime.StructureLoader, var2960=$r1, var2289=$z0}
; {r0=var2244, null_type=var165, jdk.nashorn.internal.runtime.StructureLoader=var596, $r1=var2960, $z0=var2289}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <jdk.nashorn.internal.runtime.StructureLoader: java.lang.String DUAL_FIELD_PREFIX>;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>($r1);	return $z0
;block_num 1