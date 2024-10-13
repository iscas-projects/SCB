(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var193 0)
(declare-sort var1491 0)
(declare-sort var86 0)
(declare-sort var715 0)
(declare-sort var3315 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var86_checkNotNullParameter/-2060636419 (var715 String) void)
(declare-fun cast-from-var1491-to-var715 (var1491) var715)
(define-fun cast-from-var193-to-var193 ((arg var193)) var193 arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3315-init () var3315)
(declare-fun toString/-522406933 (var715) String)
(declare-fun cast-from-String-to-var715 (String) var715)
(declare-fun <init>/875830710 (var3315 String) void)
(declare-const null-var193 var193)
(declare-const null-Int Int)
(declare-const null-var1491 var1491)
(declare-const var2696 var193) ; Statement: r1 := @this: okhttp3.CacheControl$Builder 
(assert (not (= var2696 null-var193)))
(declare-const var1913 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1913 null-Int)))
(declare-const var2780 var1491) ; Statement: r0 := @parameter1: java.util.concurrent.TimeUnit 
(assert (not (= var2780 null-var1491)))
;(assert (var86_checkNotNullParameter/-2060636419 (cast-from-var1491-to-var715 var2780) "timeUnit")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "timeUnit") 

(declare-const var2780!1 var1491)
(declare-const var124 String)
(define-const var3211 var193 (cast-from-var193-to-var193 var2696)) ; Statement: $r2 = (okhttp3.CacheControl$Builder) r1 
 ; Statement: if i0 < 0 goto $z0 = 0 
(assert (not (< var1913 0))) ; Negate: Cond: i0 < 0  
(define-const var3276 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $l1 = (long) i0 
(assert (not (not (= (ite var3276 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3481 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3481)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3481!1 String)
(assert (= var3481!1 ""))
(assert true)
(define-const var1727 String (append/672562846 var3481!1 "minFresh < 0: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("minFresh < 0: ") 
(declare-const var3481!2 String)
(assert (= var3481!2 (str.++ var3481!1 "minFresh < 0: ")))
(assert true)
(define-const var2735 String (append/-1001720160 var1727 var1913)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1727!1 String)
(assert (str.prefixof var1727 var1727!1))
(assert true)
(define-const var1714 String (toString/-2075883882 var2735)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3677 var3315 var3315-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var3772 String (toString/-522406933 (cast-from-String-to-var715 var1714))) ; Statement: $r8 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3677 var3772)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var3677!1 var3315)
(declare-const var3772!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var86_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var1491-to-var715=([java.util.concurrent.TimeUnit], java.lang.Object), cast-from-var193-to-var193=([okhttp3.CacheControl$Builder], okhttp3.CacheControl$Builder), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3315-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var715=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var193=okhttp3.CacheControl$Builder, var2696=r1, var1913=i0, var1491=java.util.concurrent.TimeUnit, var2780=r0, var86=kotlin.jvm.internal.Intrinsics, var715=java.lang.Object, var124="timeUnit", var3211=$r2, var3276=$z0, var3481=$r4, var1727=$r5, var2735=$r6, var1714=$r9, var3315=java.lang.IllegalArgumentException, var3677=$r7, var3772=$r8}
; {okhttp3.CacheControl$Builder=var193, r1=var2696, i0=var1913, java.util.concurrent.TimeUnit=var1491, r0=var2780, kotlin.jvm.internal.Intrinsics=var86, java.lang.Object=var715, "timeUnit"=var124, $r2=var3211, $z0=var3276, $r4=var3481, $r5=var1727, $r6=var2735, $r9=var1714, java.lang.IllegalArgumentException=var3315, $r7=var3677, $r8=var3772}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.CacheControl$Builder;	i0 := @parameter0: int;	r0 := @parameter1: java.util.concurrent.TimeUnit;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "timeUnit");	$r2 = (okhttp3.CacheControl$Builder) r1;	if i0 < 0 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto $l1 = (long) i0;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("minFresh < 0: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = new java.lang.IllegalArgumentException;	$r8 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r7
;block_num 4