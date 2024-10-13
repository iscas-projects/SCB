(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var133 0)
(declare-sort var1125 0)
(declare-sort var155 0)
(declare-sort var1137 0)
(declare-sort var2326 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var155_checkNotNullParameter/-2060636419 (var1137 String) void)
(declare-fun cast-from-var1125-to-var1137 (var1125) var1137)
(define-fun cast-from-var133-to-var133 ((arg var133)) var133 arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2326-init () var2326)
(declare-fun toString/-522406933 (var1137) String)
(declare-fun cast-from-String-to-var1137 (String) var1137)
(declare-fun <init>/875830710 (var2326 String) void)
(declare-const null-var133 var133)
(declare-const null-Int Int)
(declare-const null-var1125 var1125)
(declare-const var2144 var133) ; Statement: r1 := @this: okhttp3.CacheControl$Builder 
(assert (not (= var2144 null-var133)))
(declare-const var2465 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2465 null-Int)))
(declare-const var532 var1125) ; Statement: r0 := @parameter1: java.util.concurrent.TimeUnit 
(assert (not (= var532 null-var1125)))
;(assert (var155_checkNotNullParameter/-2060636419 (cast-from-var1125-to-var1137 var532) "timeUnit")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "timeUnit") 

(declare-const var532!1 var1125)
(declare-const var1953 String)
(define-const var1989 var133 (cast-from-var133-to-var133 var2144)) ; Statement: $r2 = (okhttp3.CacheControl$Builder) r1 
 ; Statement: if i0 < 0 goto $z0 = 0 
(assert (not (< var2465 0))) ; Negate: Cond: i0 < 0  
(define-const var2592 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $l1 = (long) i0 
(assert (not (not (= (ite var2592 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3822 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3822)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3822!1 String)
(assert (= var3822!1 ""))
(assert true)
(define-const var655 String (append/672562846 var3822!1 "maxStale < 0: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxStale < 0: ") 
(declare-const var3822!2 String)
(assert (= var3822!2 (str.++ var3822!1 "maxStale < 0: ")))
(assert true)
(define-const var1637 String (append/-1001720160 var655 var2465)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var655!1 String)
(assert (str.prefixof var655 var655!1))
(assert true)
(define-const var773 String (toString/-2075883882 var1637)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var903 var2326 var2326-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var1736 String (toString/-522406933 (cast-from-String-to-var1137 var773))) ; Statement: $r8 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var903 var1736)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var903!1 var2326)
(declare-const var1736!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var155_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var1125-to-var1137=([java.util.concurrent.TimeUnit], java.lang.Object), cast-from-var133-to-var133=([okhttp3.CacheControl$Builder], okhttp3.CacheControl$Builder), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2326-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var1137=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var133=okhttp3.CacheControl$Builder, var2144=r1, var2465=i0, var1125=java.util.concurrent.TimeUnit, var532=r0, var155=kotlin.jvm.internal.Intrinsics, var1137=java.lang.Object, var1953="timeUnit", var1989=$r2, var2592=$z0, var3822=$r4, var655=$r5, var1637=$r6, var773=$r9, var2326=java.lang.IllegalArgumentException, var903=$r7, var1736=$r8}
; {okhttp3.CacheControl$Builder=var133, r1=var2144, i0=var2465, java.util.concurrent.TimeUnit=var1125, r0=var532, kotlin.jvm.internal.Intrinsics=var155, java.lang.Object=var1137, "timeUnit"=var1953, $r2=var1989, $z0=var2592, $r4=var3822, $r5=var655, $r6=var1637, $r9=var773, java.lang.IllegalArgumentException=var2326, $r7=var903, $r8=var1736}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.CacheControl$Builder;	i0 := @parameter0: int;	r0 := @parameter1: java.util.concurrent.TimeUnit;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "timeUnit");	$r2 = (okhttp3.CacheControl$Builder) r1;	if i0 < 0 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto $l1 = (long) i0;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxStale < 0: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = new java.lang.IllegalArgumentException;	$r8 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r7
;block_num 4