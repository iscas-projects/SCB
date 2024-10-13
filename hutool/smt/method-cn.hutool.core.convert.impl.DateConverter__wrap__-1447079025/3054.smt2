(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var263 0)
(declare-sort var1092 0)
(declare-sort var2461 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun format/-1579012344 (var263) String)
(declare-fun var2461_date/-1725065658 (Int) var1092)
(declare-const null-var263 var263)
(declare-const null-Int Int)
(declare-const var2253 var263) ; Statement: r0 := @this: cn.hutool.core.convert.impl.DateConverter 
(assert (not (= var2253 null-var263)))
(declare-const var359 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var359 null-Int)))
(define-const var1458 String "#sss") ; Statement: $r2 = "#sss" 
(define-const var1954 String (format/-1579012344 var2253)) ; Statement: $r1 = r0.<cn.hutool.core.convert.impl.DateConverter: java.lang.String format> 
(assert true)
(define-const var3711 Bool (= var1458 var1954)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $r3 = r0.<cn.hutool.core.convert.impl.DateConverter: java.lang.Class targetType> 
(assert (not (= (ite var3711 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2844 Int (* var359 1000)) ; Statement: $l1 = l0 * 1000L 
(define-const var3930 var1092 (var2461_date/-1725065658 var2844)) ; Statement: $r18 = staticinvoke <cn.hutool.core.date.DateUtil: cn.hutool.core.date.DateTime date(long)>($l1) 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {format/-1579012344=([cn.hutool.core.convert.impl.DateConverter], java.lang.String), var2461_date/-1725065658=([long], cn.hutool.core.date.DateTime)}
; {var263=cn.hutool.core.convert.impl.DateConverter, var2253=r0, var359=l0, var1458=$r2, var1954=$r1, var3711=$z0, var2844=$l1, var1092=cn.hutool.core.date.DateTime, var2461=cn.hutool.core.date.DateUtil, var3930=$r18}
; {cn.hutool.core.convert.impl.DateConverter=var263, r0=var2253, l0=var359, $r2=var1458, $r1=var1954, $z0=var3711, $l1=var2844, cn.hutool.core.date.DateTime=var1092, cn.hutool.core.date.DateUtil=var2461, $r18=var3930}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: cn.hutool.core.convert.impl.DateConverter;	l0 := @parameter0: long;	$r2 = "#sss";	$r1 = r0.<cn.hutool.core.convert.impl.DateConverter: java.lang.String format>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $r3 = r0.<cn.hutool.core.convert.impl.DateConverter: java.lang.Class targetType>;	$l1 = l0 * 1000L;	$r18 = staticinvoke <cn.hutool.core.date.DateUtil: cn.hutool.core.date.DateTime date(long)>($l1);	return $r18
;block_num 2