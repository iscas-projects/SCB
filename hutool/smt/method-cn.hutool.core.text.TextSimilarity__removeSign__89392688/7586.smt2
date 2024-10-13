(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3058 0)
(declare-sort var842 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var842_builder/-1703069709 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var1304 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1304 null-String)))
(assert true)
(define-const var173 Int (length/-134980193 var1304)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2618 String (var842_builder/-1703069709 var173)) ; Statement: r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder(int)>(i0) 
(define-const var3185 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto $r2 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3185 var173)) ; Cond: i2 >= i0 
(assert true)
(define-const var43 String (toString/-2075883882 var2618)) ; Statement: $r2 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var842_builder/-1703069709=([int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1304=r0, var3058=null_type, var173=i0, var842=cn.hutool.core.util.StrUtil, var2618=r1, var3185=i2, var43=$r2}
; {r0=var1304, null_type=var3058, i0=var173, cn.hutool.core.util.StrUtil=var842, r1=var2618, i2=var3185, $r2=var43}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder(int)>(i0);	i2 = 0;	if i2 >= i0 goto $r2 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3