(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3196 0)
(declare-sort var3274 0)
(declare-sort var1339 0)
(declare-sort var106 0)
(declare-sort var1856 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1339_checkNotNullParameter/-2060636419 (var106 String) void)
(declare-fun cast-from-String-to-var106 (String) var106)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1856-init () var1856)
(declare-fun toString/-522406933 (var106) String)
(declare-fun <init>/-1092629202 (var1856 String) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3274 var3274)
(declare-const var2334 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2334 null-String)))
(declare-const var1650 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var1650 null-Int)))
(declare-const var2190 var3274) ; Statement: r1 := @parameter2: java.util.concurrent.TimeUnit 
(assert (not (= var2190 null-var3274)))
;(assert (var1339_checkNotNullParameter/-2060636419 (cast-from-String-to-var106 var2334) "name")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "name") 

(declare-const var2334!1 String)
(declare-const var2532 String)
(define-const var2153 Int (ite (> var1650 0) 1 (ite (< var1650 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var719 Int (cast-from-Int-to-Int var2153)) ; Statement: $i7 = (int) $b1 
 ; Statement: if $i7 < 0 goto $z0 = 0 
(assert (< var719 0)) ; Cond: $i7 < 0 
(define-const var3533 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto (branch) 
(assert (not (not (= (ite var3533 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1877 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1877)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1877!1 String)
(assert (= var1877!1 ""))
(assert true)
(define-const var2451 String (append/672562846 var1877!1 var2334!1)) ; Statement: $r15 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1877!2 String)
(assert (= var1877!2 (str.++ var1877!1 var2334!1)))
(assert true)
(define-const var574 String (append/672562846 var2451 " < 0")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" < 0") 
(declare-const var2451!1 String)
(assert (= var2451!1 (str.++ var2451 " < 0")))
(assert true)
(define-const var2974 String (toString/-2075883882 var574)) ; Statement: $r19 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2376 var1856 var1856-init) ; Statement: $r24 = new java.lang.IllegalStateException 
(assert true)
(define-const var2328 String (toString/-522406933 (cast-from-String-to-var106 var2974))) ; Statement: $r18 = virtualinvoke $r19.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2376 var2328)) ; Statement: specialinvoke $r24.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r18) 

(declare-const var2376!1 var1856)
(declare-const var2328!1 String)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {var1339_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var106=([java.lang.String], java.lang.Object), cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1856-init=([], java.lang.IllegalStateException), toString/-522406933=([java.lang.Object], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2334=r0, var3196=null_type, var1650=l0, var3274=java.util.concurrent.TimeUnit, var2190=r1, var1339=kotlin.jvm.internal.Intrinsics, var106=java.lang.Object, var2532="name", var2153=$b1, var719=$i7, var3533=$z0, var1877=$r23, var2451=$r15, var574=$r16, var2974=$r19, var1856=java.lang.IllegalStateException, var2376=$r24, var2328=$r18}
; {r0=var2334, null_type=var3196, l0=var1650, java.util.concurrent.TimeUnit=var3274, r1=var2190, kotlin.jvm.internal.Intrinsics=var1339, java.lang.Object=var106, "name"=var2532, $b1=var2153, $i7=var719, $z0=var3533, $r23=var1877, $r15=var2451, $r16=var574, $r19=var2974, java.lang.IllegalStateException=var1856, $r24=var2376, $r18=var2328}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	l0 := @parameter1: long;	r1 := @parameter2: java.util.concurrent.TimeUnit;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "name");	$b1 = l0 cmp 0L;	$i7 = (int) $b1;	if $i7 < 0 goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto (branch);	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" < 0");	$r19 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r24 = new java.lang.IllegalStateException;	$r18 = virtualinvoke $r19.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r24.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r18);	throw $r24
;block_num 4