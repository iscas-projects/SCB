(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3446 0)
(declare-sort var3085 0)
(declare-sort var769 0)
(declare-sort var3235 0)
(declare-sort var729 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var769_checkNotNullParameter/-2060636419 (var3235 String) void)
(declare-fun cast-from-var3085-to-var3235 (var3085) var3235)
(define-fun cast-from-var3446-to-var3446 ((arg var3446)) var3446 arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var729-init () var729)
(declare-fun toString/-522406933 (var3235) String)
(declare-fun cast-from-String-to-var3235 (String) var3235)
(declare-fun <init>/875830710 (var729 String) void)
(declare-const null-var3446 var3446)
(declare-const null-Int Int)
(declare-const null-var3085 var3085)
(declare-const var3415 var3446) ; Statement: r1 := @this: okhttp3.CacheControl$Builder 
(assert (not (= var3415 null-var3446)))
(declare-const var2261 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2261 null-Int)))
(declare-const var3993 var3085) ; Statement: r0 := @parameter1: java.util.concurrent.TimeUnit 
(assert (not (= var3993 null-var3085)))
;(assert (var769_checkNotNullParameter/-2060636419 (cast-from-var3085-to-var3235 var3993) "timeUnit")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "timeUnit") 

(declare-const var3993!1 var3085)
(declare-const var3899 String)
(define-const var272 var3446 (cast-from-var3446-to-var3446 var3415)) ; Statement: $r2 = (okhttp3.CacheControl$Builder) r1 
 ; Statement: if i0 < 0 goto $z0 = 0 
(assert (< var2261 0)) ; Cond: i0 < 0 
(define-const var1461 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $l1 = (long) i0 
(assert (not (not (= (ite var1461 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2342 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2342)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2342!1 String)
(assert (= var2342!1 ""))
(assert true)
(define-const var3917 String (append/672562846 var2342!1 "minFresh < 0: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("minFresh < 0: ") 
(declare-const var2342!2 String)
(assert (= var2342!2 (str.++ var2342!1 "minFresh < 0: ")))
(assert true)
(define-const var1199 String (append/-1001720160 var3917 var2261)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3917!1 String)
(assert (str.prefixof var3917 var3917!1))
(assert true)
(define-const var517 String (toString/-2075883882 var1199)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2836 var729 var729-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var3495 String (toString/-522406933 (cast-from-String-to-var3235 var517))) ; Statement: $r8 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2836 var3495)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var2836!1 var729)
(declare-const var3495!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var769_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var3085-to-var3235=([java.util.concurrent.TimeUnit], java.lang.Object), cast-from-var3446-to-var3446=([okhttp3.CacheControl$Builder], okhttp3.CacheControl$Builder), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var729-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var3235=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3446=okhttp3.CacheControl$Builder, var3415=r1, var2261=i0, var3085=java.util.concurrent.TimeUnit, var3993=r0, var769=kotlin.jvm.internal.Intrinsics, var3235=java.lang.Object, var3899="timeUnit", var272=$r2, var1461=$z0, var2342=$r4, var3917=$r5, var1199=$r6, var517=$r9, var729=java.lang.IllegalArgumentException, var2836=$r7, var3495=$r8}
; {okhttp3.CacheControl$Builder=var3446, r1=var3415, i0=var2261, java.util.concurrent.TimeUnit=var3085, r0=var3993, kotlin.jvm.internal.Intrinsics=var769, java.lang.Object=var3235, "timeUnit"=var3899, $r2=var272, $z0=var1461, $r4=var2342, $r5=var3917, $r6=var1199, $r9=var517, java.lang.IllegalArgumentException=var729, $r7=var2836, $r8=var3495}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.CacheControl$Builder;	i0 := @parameter0: int;	r0 := @parameter1: java.util.concurrent.TimeUnit;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "timeUnit");	$r2 = (okhttp3.CacheControl$Builder) r1;	if i0 < 0 goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto $l1 = (long) i0;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("minFresh < 0: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = new java.lang.IllegalArgumentException;	$r8 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r7
;block_num 4