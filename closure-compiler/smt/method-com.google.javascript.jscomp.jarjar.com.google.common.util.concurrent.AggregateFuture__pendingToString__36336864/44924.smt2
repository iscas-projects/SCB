(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1615 0)
(declare-sort var167 0)
(declare-sort var2038 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun futures/-654286005 (var1615) var167)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2038) String)
(declare-fun cast-from-var167-to-var2038 (var167) var2038)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1615 var1615)
(declare-const null-var167 var167)
(declare-const var2871 var1615) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AggregateFuture 
(assert (not (= var2871 null-var1615)))
(define-const var1003 var167 (futures/-654286005 var2871)) ; Statement: r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AggregateFuture: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableCollection futures> 
 ; Statement: if r1 == null goto $r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AggregateFutureState: java.lang.String pendingToString()>() 
(assert (not (= var1003 null-var167))) ; Negate: Cond: r1 == null  
(define-const var3476 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3476)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3476!1 String)
(assert (= var3476!1 ""))
(assert true)
(define-const var3807 String (append/672562846 var3476!1 "futures=")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("futures=") 
(declare-const var3476!2 String)
(assert (= var3476!2 (str.++ var3476!1 "futures=")))
(assert true)
(define-const var2628 String (append/-1031950772 var3807 (cast-from-var167-to-var2038 var1003))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3807!1 String)
(assert (str.prefixof var3807 var3807!1))
(assert true)
(define-const var2368 String (toString/-2075883882 var2628)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {futures/-654286005=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AggregateFuture], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableCollection), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var167-to-var2038=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableCollection], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1615=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AggregateFuture, var2871=r0, var167=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableCollection, var1003=r1, var3476=$r3, var3807=$r4, var2038=java.lang.Object, var2628=$r5, var2368=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AggregateFuture=var1615, r0=var2871, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableCollection=var167, r1=var1003, $r3=var3476, $r4=var3807, java.lang.Object=var2038, $r5=var2628, $r6=var2368}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AggregateFuture;	r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AggregateFuture: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableCollection futures>;	if r1 == null goto $r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AggregateFutureState: java.lang.String pendingToString()>();	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("futures=");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2