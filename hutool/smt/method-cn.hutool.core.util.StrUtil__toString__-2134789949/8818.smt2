(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2410 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var2410) String)
(declare-const null-var2410 var2410)
(declare-const var1636 var2410) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1636 null-var2410)))
(define-const var3572 String (String_valueOf/-333372740 var1636)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String)}
; {var2410=java.lang.Object, var1636=r0, var3572=$r1}
; {java.lang.Object=var2410, r0=var1636, $r1=var3572}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0);	return $r1
;block_num 1