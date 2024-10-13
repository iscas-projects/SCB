(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2943 0)
(declare-sort var1612 0)
(declare-sort var1875 0)
(declare-sort var3084 0)
(declare-sort var3106 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1875_checkNotNullParameter/-2060636419 (var3084 String) void)
(declare-fun cast-from-var1612-to-var3084 (var1612) var3084)
(define-fun cast-from-var2943-to-var2943 ((arg var2943)) var2943 arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3106-init () var3106)
(declare-fun toString/-522406933 (var3084) String)
(declare-fun cast-from-String-to-var3084 (String) var3084)
(declare-fun <init>/875830710 (var3106 String) void)
(declare-const null-var2943 var2943)
(declare-const null-Int Int)
(declare-const null-var1612 var1612)
(declare-const var2640 var2943) ; Statement: r1 := @this: okhttp3.CacheControl$Builder 
(assert (not (= var2640 null-var2943)))
(declare-const var2671 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2671 null-Int)))
(declare-const var2620 var1612) ; Statement: r0 := @parameter1: java.util.concurrent.TimeUnit 
(assert (not (= var2620 null-var1612)))
;(assert (var1875_checkNotNullParameter/-2060636419 (cast-from-var1612-to-var3084 var2620) "timeUnit")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "timeUnit") 

(declare-const var2620!1 var1612)
(declare-const var79 String)
(define-const var2164 var2943 (cast-from-var2943-to-var2943 var2640)) ; Statement: $r2 = (okhttp3.CacheControl$Builder) r1 
 ; Statement: if i0 < 0 goto $z0 = 0 
(assert (not (< var2671 0))) ; Negate: Cond: i0 < 0  
(define-const var1689 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $l1 = (long) i0 
(assert (not (not (= (ite var1689 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1143 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1143)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1143!1 String)
(assert (= var1143!1 ""))
(assert true)
(define-const var80 String (append/672562846 var1143!1 "maxAge < 0: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxAge < 0: ") 
(declare-const var1143!2 String)
(assert (= var1143!2 (str.++ var1143!1 "maxAge < 0: ")))
(assert true)
(define-const var1608 String (append/-1001720160 var80 var2671)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var80!1 String)
(assert (str.prefixof var80 var80!1))
(assert true)
(define-const var2737 String (toString/-2075883882 var1608)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2044 var3106 var3106-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var3944 String (toString/-522406933 (cast-from-String-to-var3084 var2737))) ; Statement: $r8 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2044 var3944)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var2044!1 var3106)
(declare-const var3944!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var1875_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var1612-to-var3084=([java.util.concurrent.TimeUnit], java.lang.Object), cast-from-var2943-to-var2943=([okhttp3.CacheControl$Builder], okhttp3.CacheControl$Builder), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3106-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var3084=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2943=okhttp3.CacheControl$Builder, var2640=r1, var2671=i0, var1612=java.util.concurrent.TimeUnit, var2620=r0, var1875=kotlin.jvm.internal.Intrinsics, var3084=java.lang.Object, var79="timeUnit", var2164=$r2, var1689=$z0, var1143=$r4, var80=$r5, var1608=$r6, var2737=$r9, var3106=java.lang.IllegalArgumentException, var2044=$r7, var3944=$r8}
; {okhttp3.CacheControl$Builder=var2943, r1=var2640, i0=var2671, java.util.concurrent.TimeUnit=var1612, r0=var2620, kotlin.jvm.internal.Intrinsics=var1875, java.lang.Object=var3084, "timeUnit"=var79, $r2=var2164, $z0=var1689, $r4=var1143, $r5=var80, $r6=var1608, $r9=var2737, java.lang.IllegalArgumentException=var3106, $r7=var2044, $r8=var3944}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.CacheControl$Builder;	i0 := @parameter0: int;	r0 := @parameter1: java.util.concurrent.TimeUnit;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "timeUnit");	$r2 = (okhttp3.CacheControl$Builder) r1;	if i0 < 0 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto $l1 = (long) i0;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxAge < 0: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = new java.lang.IllegalArgumentException;	$r8 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r7
;block_num 4