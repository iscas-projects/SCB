(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var40 0)
(declare-sort var589 0)
(declare-sort var247 0)
(declare-sort var343 0)
(declare-sort var2005 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var247_checkNotNullParameter/-2060636419 (var343 String) void)
(declare-fun cast-from-var589-to-var343 (var589) var343)
(define-fun cast-from-var40-to-var40 ((arg var40)) var40 arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2005-init () var2005)
(declare-fun toString/-522406933 (var343) String)
(declare-fun cast-from-String-to-var343 (String) var343)
(declare-fun <init>/875830710 (var2005 String) void)
(declare-const null-var40 var40)
(declare-const null-Int Int)
(declare-const null-var589 var589)
(declare-const var3450 var40) ; Statement: r1 := @this: okhttp3.CacheControl$Builder 
(assert (not (= var3450 null-var40)))
(declare-const var2227 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2227 null-Int)))
(declare-const var3320 var589) ; Statement: r0 := @parameter1: java.util.concurrent.TimeUnit 
(assert (not (= var3320 null-var589)))
;(assert (var247_checkNotNullParameter/-2060636419 (cast-from-var589-to-var343 var3320) "timeUnit")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "timeUnit") 

(declare-const var3320!1 var589)
(declare-const var1869 String)
(define-const var689 var40 (cast-from-var40-to-var40 var3450)) ; Statement: $r2 = (okhttp3.CacheControl$Builder) r1 
 ; Statement: if i0 < 0 goto $z0 = 0 
(assert (< var2227 0)) ; Cond: i0 < 0 
(define-const var3452 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $l1 = (long) i0 
(assert (not (not (= (ite var3452 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1116 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1116)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1116!1 String)
(assert (= var1116!1 ""))
(assert true)
(define-const var2617 String (append/672562846 var1116!1 "maxStale < 0: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxStale < 0: ") 
(declare-const var1116!2 String)
(assert (= var1116!2 (str.++ var1116!1 "maxStale < 0: ")))
(assert true)
(define-const var1217 String (append/-1001720160 var2617 var2227)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2617!1 String)
(assert (str.prefixof var2617 var2617!1))
(assert true)
(define-const var737 String (toString/-2075883882 var1217)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3821 var2005 var2005-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var3748 String (toString/-522406933 (cast-from-String-to-var343 var737))) ; Statement: $r8 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3821 var3748)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var3821!1 var2005)
(declare-const var3748!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var247_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var589-to-var343=([java.util.concurrent.TimeUnit], java.lang.Object), cast-from-var40-to-var40=([okhttp3.CacheControl$Builder], okhttp3.CacheControl$Builder), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2005-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var343=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var40=okhttp3.CacheControl$Builder, var3450=r1, var2227=i0, var589=java.util.concurrent.TimeUnit, var3320=r0, var247=kotlin.jvm.internal.Intrinsics, var343=java.lang.Object, var1869="timeUnit", var689=$r2, var3452=$z0, var1116=$r4, var2617=$r5, var1217=$r6, var737=$r9, var2005=java.lang.IllegalArgumentException, var3821=$r7, var3748=$r8}
; {okhttp3.CacheControl$Builder=var40, r1=var3450, i0=var2227, java.util.concurrent.TimeUnit=var589, r0=var3320, kotlin.jvm.internal.Intrinsics=var247, java.lang.Object=var343, "timeUnit"=var1869, $r2=var689, $z0=var3452, $r4=var1116, $r5=var2617, $r6=var1217, $r9=var737, java.lang.IllegalArgumentException=var2005, $r7=var3821, $r8=var3748}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.CacheControl$Builder;	i0 := @parameter0: int;	r0 := @parameter1: java.util.concurrent.TimeUnit;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "timeUnit");	$r2 = (okhttp3.CacheControl$Builder) r1;	if i0 < 0 goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto $l1 = (long) i0;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxStale < 0: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = new java.lang.IllegalArgumentException;	$r8 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r7
;block_num 4