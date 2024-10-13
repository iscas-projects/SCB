(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3264 0)
(declare-sort var4 0)
(declare-sort var1470 0)
(declare-sort var844 0)
(declare-sort var3560 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1470_checkNotNull/1446102589 (var844) var844)
(declare-fun cast-from-var4-to-var844 (var4) var844)
(declare-fun var1470_checkPositionIndex/1928365885 (Int Int) Int)
(declare-fun var3560-init () var3560)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun key/458632265 (var3264) var844)
(declare-fun append/-1031950772 (String var844) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3560 String) void)
(declare-const null-var3264 var3264)
(declare-const null-Int Int)
(declare-const null-var4 var4)
(declare-const var2908 var3264) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.FilteredKeyMultimap$AddRejectingList 
(assert (not (= var2908 null-var3264)))
(declare-const var2404 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2404 null-Int)))
(declare-const var3480 var4) ; Statement: r0 := @parameter1: java.util.Collection 
(assert (not (= var3480 null-var4)))
;(assert (var1470_checkNotNull/1446102589 (cast-from-var4-to-var844 var3480))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var3480!1 var4)
;(assert (var1470_checkPositionIndex/1928365885 var2404 0)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: int checkPositionIndex(int,int)>(i0, 0) 

(declare-const var2404!1 Int)
(declare-const var297 Int)
(define-const var1968 var3560 var3560-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var542 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var542)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var542!1 String)
(assert (= var542!1 ""))
(assert true)
(define-const var1008 String (append/672562846 var542!1 "Key does not satisfy predicate: ")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Key does not satisfy predicate: ") 
(declare-const var542!2 String)
(assert (= var542!2 (str.++ var542!1 "Key does not satisfy predicate: ")))
(define-const var3410 var844 (key/458632265 var2908)) ; Statement: $r4 = r3.<com.google.javascript.jscomp.jarjar.com.google.common.collect.FilteredKeyMultimap$AddRejectingList: java.lang.Object key> 
(assert true)
(define-const var1557 String (append/-1031950772 var1008 var3410)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var1008!1 String)
(assert (str.prefixof var1008 var1008!1))
(assert true)
(define-const var267 String (toString/-2075883882 var1557)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1968 var267)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var1968!1 var3560)
(declare-const var267!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1470_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-var4-to-var844=([java.util.Collection], java.lang.Object), var1470_checkPositionIndex/1928365885=([int, int], int), var3560-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), key/458632265=([com.google.javascript.jscomp.jarjar.com.google.common.collect.FilteredKeyMultimap$AddRejectingList], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3264=com.google.javascript.jscomp.jarjar.com.google.common.collect.FilteredKeyMultimap$AddRejectingList, var2908=r3, var2404=i0, var4=java.util.Collection, var3480=r0, var1470=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var844=java.lang.Object, var297=0, var3560=java.lang.IllegalArgumentException, var1968=$r1, var542=$r2, var1008=$r5, var3410=$r4, var1557=$r6, var267=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.FilteredKeyMultimap$AddRejectingList=var3264, r3=var2908, i0=var2404, java.util.Collection=var4, r0=var3480, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1470, java.lang.Object=var844, 0=var297, java.lang.IllegalArgumentException=var3560, $r1=var1968, $r2=var542, $r5=var1008, $r4=var3410, $r6=var1557, $r7=var267}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.FilteredKeyMultimap$AddRejectingList;	i0 := @parameter0: int;	r0 := @parameter1: java.util.Collection;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: int checkPositionIndex(int,int)>(i0, 0);	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Key does not satisfy predicate: ");	$r4 = r3.<com.google.javascript.jscomp.jarjar.com.google.common.collect.FilteredKeyMultimap$AddRejectingList: java.lang.Object key>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r1
;block_num 1