(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2225 0)
(declare-sort var2984 0)
(declare-sort var1926 0)
(declare-sort var366 0)
(declare-sort var542 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1926_checkNotNullParameter/-2060636419 (var366 String) void)
(declare-fun cast-from-var2984-to-var366 (var2984) var366)
(define-fun cast-from-var2225-to-var2225 ((arg var2225)) var2225 arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var542-init () var542)
(declare-fun toString/-522406933 (var366) String)
(declare-fun cast-from-String-to-var366 (String) var366)
(declare-fun <init>/875830710 (var542 String) void)
(declare-const null-var2225 var2225)
(declare-const null-Int Int)
(declare-const null-var2984 var2984)
(declare-const var220 var2225) ; Statement: r1 := @this: okhttp3.CacheControl$Builder 
(assert (not (= var220 null-var2225)))
(declare-const var722 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var722 null-Int)))
(declare-const var1346 var2984) ; Statement: r0 := @parameter1: java.util.concurrent.TimeUnit 
(assert (not (= var1346 null-var2984)))
;(assert (var1926_checkNotNullParameter/-2060636419 (cast-from-var2984-to-var366 var1346) "timeUnit")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "timeUnit") 

(declare-const var1346!1 var2984)
(declare-const var2588 String)
(define-const var279 var2225 (cast-from-var2225-to-var2225 var220)) ; Statement: $r2 = (okhttp3.CacheControl$Builder) r1 
 ; Statement: if i0 < 0 goto $z0 = 0 
(assert (< var722 0)) ; Cond: i0 < 0 
(define-const var43 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $l1 = (long) i0 
(assert (not (not (= (ite var43 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3836 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3836)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3836!1 String)
(assert (= var3836!1 ""))
(assert true)
(define-const var2621 String (append/672562846 var3836!1 "maxAge < 0: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxAge < 0: ") 
(declare-const var3836!2 String)
(assert (= var3836!2 (str.++ var3836!1 "maxAge < 0: ")))
(assert true)
(define-const var2074 String (append/-1001720160 var2621 var722)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2621!1 String)
(assert (str.prefixof var2621 var2621!1))
(assert true)
(define-const var2370 String (toString/-2075883882 var2074)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2623 var542 var542-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var2064 String (toString/-522406933 (cast-from-String-to-var366 var2370))) ; Statement: $r8 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2623 var2064)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var2623!1 var542)
(declare-const var2064!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var1926_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var2984-to-var366=([java.util.concurrent.TimeUnit], java.lang.Object), cast-from-var2225-to-var2225=([okhttp3.CacheControl$Builder], okhttp3.CacheControl$Builder), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var542-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var366=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2225=okhttp3.CacheControl$Builder, var220=r1, var722=i0, var2984=java.util.concurrent.TimeUnit, var1346=r0, var1926=kotlin.jvm.internal.Intrinsics, var366=java.lang.Object, var2588="timeUnit", var279=$r2, var43=$z0, var3836=$r4, var2621=$r5, var2074=$r6, var2370=$r9, var542=java.lang.IllegalArgumentException, var2623=$r7, var2064=$r8}
; {okhttp3.CacheControl$Builder=var2225, r1=var220, i0=var722, java.util.concurrent.TimeUnit=var2984, r0=var1346, kotlin.jvm.internal.Intrinsics=var1926, java.lang.Object=var366, "timeUnit"=var2588, $r2=var279, $z0=var43, $r4=var3836, $r5=var2621, $r6=var2074, $r9=var2370, java.lang.IllegalArgumentException=var542, $r7=var2623, $r8=var2064}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.CacheControl$Builder;	i0 := @parameter0: int;	r0 := @parameter1: java.util.concurrent.TimeUnit;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "timeUnit");	$r2 = (okhttp3.CacheControl$Builder) r1;	if i0 < 0 goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto $l1 = (long) i0;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxAge < 0: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = new java.lang.IllegalArgumentException;	$r8 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r7
;block_num 4