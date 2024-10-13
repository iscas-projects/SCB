(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2624 0)
(declare-sort var138 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var138_builder/-311177978 () String)
(declare-fun get/335439681 (var2624 Int) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2624 var2624)
(declare-const var3100 var2624) ; Statement: r0 := @parameter0: java.util.Calendar 
(assert (not (= var3100 null-var2624)))
(define-const var120 String var138_builder/-311177978) ; Statement: $r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>() 
(assert true)
(define-const var2028 Int (get/335439681 var3100 1)) ; Statement: $i0 = virtualinvoke r0.<java.util.Calendar: int get(int)>(1) 
(assert true)
(define-const var2045 String (append/-1001720160 var120 var2028)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var120!1 String)
(assert (str.prefixof var120 var120!1))
(assert true)
(define-const var3050 Int (get/335439681 var3100 2)) ; Statement: $i1 = virtualinvoke r0.<java.util.Calendar: int get(int)>(2) 
(define-const var1527 Int (div var3050 3)) ; Statement: $i2 = $i1 / 3 
(define-const var2219 Int (+ var1527 1)) ; Statement: $i3 = $i2 + 1 
(assert true)
(define-const var1926 String (append/-1001720160 var2045 var2219)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var2045!1 String)
(assert (str.prefixof var2045 var2045!1))
(assert true)
(define-const var3355 String (toString/-2075883882 var1926)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var138_builder/-311177978=([], java.lang.StringBuilder), get/335439681=([java.util.Calendar, int], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2624=java.util.Calendar, var3100=r0, var138=cn.hutool.core.util.StrUtil, var120=$r1, var2028=$i0, var2045=$r2, var3050=$i1, var1527=$i2, var2219=$i3, var1926=$r3, var3355=$r4}
; {java.util.Calendar=var2624, r0=var3100, cn.hutool.core.util.StrUtil=var138, $r1=var120, $i0=var2028, $r2=var2045, $i1=var3050, $i2=var1527, $i3=var2219, $r3=var1926, $r4=var3355}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.util.Calendar;	$r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>();	$i0 = virtualinvoke r0.<java.util.Calendar: int get(int)>(1);	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$i1 = virtualinvoke r0.<java.util.Calendar: int get(int)>(2);	$i2 = $i1 / 3;	$i3 = $i2 + 1;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1