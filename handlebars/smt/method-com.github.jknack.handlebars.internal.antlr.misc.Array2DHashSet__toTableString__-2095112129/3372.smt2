(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1787 0)
(declare-sort var3376 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun buckets/-1682346005 (var1787) (Array Int (Array Int var3376)))
(declare-fun getLength-Arr-var3376-2 ((Array Int (Array Int var3376))) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1787 var1787)
(declare-const var3478 var1787) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.misc.Array2DHashSet 
(assert (not (= var3478 null-var1787)))
(define-const var2774 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2774)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2774!1 String)
(assert (= var2774!1 ""))
(define-const var3562 (Array Int (Array Int var3376)) (buckets/-1682346005 var3478)) ; Statement: r2 = r1.<com.github.jknack.handlebars.internal.antlr.misc.Array2DHashSet: java.lang.Object[][] buckets> 
(define-const var1884 Int (getLength-Arr-var3376-2 var3562)) ; Statement: i0 = lengthof r2 
(define-const var193 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var193 var1884)) ; Cond: i2 >= i0 
(assert true)
(define-const var2588 String (toString/-2075883882 var2774!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), buckets/-1682346005=([com.github.jknack.handlebars.internal.antlr.misc.Array2DHashSet], java.lang.Object[][]), getLength-Arr-var3376-2=([java.lang.Object[][]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1787=com.github.jknack.handlebars.internal.antlr.misc.Array2DHashSet, var3478=r1, var2774=$r0, var3376=java.lang.Object, var3562=r2, var1884=i0, var193=i2, var2588=$r3}
; {com.github.jknack.handlebars.internal.antlr.misc.Array2DHashSet=var1787, r1=var3478, $r0=var2774, java.lang.Object=var3376, r2=var3562, i0=var1884, i2=var193, $r3=var2588}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.misc.Array2DHashSet;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = r1.<com.github.jknack.handlebars.internal.antlr.misc.Array2DHashSet: java.lang.Object[][] buckets>;	i0 = lengthof r2;	i2 = 0;	if i2 >= i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3