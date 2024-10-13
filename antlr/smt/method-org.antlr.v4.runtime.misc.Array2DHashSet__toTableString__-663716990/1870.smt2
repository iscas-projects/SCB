(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2807 0)
(declare-sort var1300 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun buckets/-818340976 (var2807) (Array Int (Array Int var1300)))
(declare-fun getLength-Arr-var1300-2 ((Array Int (Array Int var1300))) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2807 var2807)
(declare-const var3471 var2807) ; Statement: r1 := @this: org.antlr.v4.runtime.misc.Array2DHashSet 
(assert (not (= var3471 null-var2807)))
(define-const var3410 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3410)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3410!1 String)
(assert (= var3410!1 ""))
(define-const var2888 (Array Int (Array Int var1300)) (buckets/-818340976 var3471)) ; Statement: r2 = r1.<org.antlr.v4.runtime.misc.Array2DHashSet: java.lang.Object[][] buckets> 
(define-const var2984 Int (getLength-Arr-var1300-2 var2888)) ; Statement: i0 = lengthof r2 
(define-const var741 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var741 var2984)) ; Cond: i2 >= i0 
(assert true)
(define-const var3013 String (toString/-2075883882 var3410!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), buckets/-818340976=([org.antlr.v4.runtime.misc.Array2DHashSet], java.lang.Object[][]), getLength-Arr-var1300-2=([java.lang.Object[][]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2807=org.antlr.v4.runtime.misc.Array2DHashSet, var3471=r1, var3410=$r0, var1300=java.lang.Object, var2888=r2, var2984=i0, var741=i2, var3013=$r3}
; {org.antlr.v4.runtime.misc.Array2DHashSet=var2807, r1=var3471, $r0=var3410, java.lang.Object=var1300, r2=var2888, i0=var2984, i2=var741, $r3=var3013}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.misc.Array2DHashSet;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = r1.<org.antlr.v4.runtime.misc.Array2DHashSet: java.lang.Object[][] buckets>;	i0 = lengthof r2;	i2 = 0;	if i2 >= i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3