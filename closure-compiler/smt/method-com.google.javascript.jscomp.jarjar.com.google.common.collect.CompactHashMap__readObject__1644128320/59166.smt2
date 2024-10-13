(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2039 0)
(declare-sort var1479 0)
(declare-sort var2348 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun defaultReadObject/610298106 (var1479) void)
(declare-fun readInt/-619649650 (var1479) Int)
(declare-fun var2348-init () var2348)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/237997851 (var2348 String) void)
(declare-const null-var2039 var2039)
(declare-const null-var1479 var1479)
(declare-const var792 var2039) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.CompactHashMap 
(assert (not (= var792 null-var2039)))
(declare-const var409 var1479) ; Statement: r0 := @parameter0: java.io.ObjectInputStream 
(assert (not (= var409 null-var1479)))
(assert true)
;(assert (defaultReadObject/610298106 var409)) ; Statement: virtualinvoke r0.<java.io.ObjectInputStream: void defaultReadObject()>() 

(declare-const var409!1 var1479)
(assert true)
(define-const var3446 Int (readInt/-619649650 var409!1)) ; Statement: i0 = virtualinvoke r0.<java.io.ObjectInputStream: int readInt()>() 
 ; Statement: if i0 >= 0 goto virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.CompactHashMap: void init(int)>(i0) 
(assert (not (>= var3446 0))) ; Negate: Cond: i0 >= 0  
(define-const var3289 var2348 var2348-init) ; Statement: $r4 = new java.io.InvalidObjectException 
(define-const var3118 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3118)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3118!1 String)
(assert (= var3118!1 ""))
(assert true)
(define-const var950 String (append/672562846 var3118!1 "Invalid size: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid size: ") 
(declare-const var3118!2 String)
(assert (= var3118!2 (str.++ var3118!1 "Invalid size: ")))
(assert true)
(define-const var478 String (append/-1001720160 var950 var3446)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var950!1 String)
(assert (str.prefixof var950 var950!1))
(assert true)
(define-const var735 String (toString/-2075883882 var478)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/237997851 var3289 var735)) ; Statement: specialinvoke $r4.<java.io.InvalidObjectException: void <init>(java.lang.String)>($r8) 

(declare-const var3289!1 var2348)
(declare-const var735!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {defaultReadObject/610298106=([java.io.ObjectInputStream], void), readInt/-619649650=([java.io.ObjectInputStream], int), var2348-init=([], java.io.InvalidObjectException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/237997851=([java.io.InvalidObjectException, java.lang.String], void)}
; {var2039=com.google.javascript.jscomp.jarjar.com.google.common.collect.CompactHashMap, var792=r1, var1479=java.io.ObjectInputStream, var409=r0, var3446=i0, var2348=java.io.InvalidObjectException, var3289=$r4, var3118=$r5, var950=$r6, var478=$r7, var735=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.CompactHashMap=var2039, r1=var792, java.io.ObjectInputStream=var1479, r0=var409, i0=var3446, java.io.InvalidObjectException=var2348, $r4=var3289, $r5=var3118, $r6=var950, $r7=var478, $r8=var735}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.CompactHashMap;	r0 := @parameter0: java.io.ObjectInputStream;	virtualinvoke r0.<java.io.ObjectInputStream: void defaultReadObject()>();	i0 = virtualinvoke r0.<java.io.ObjectInputStream: int readInt()>();	if i0 >= 0 goto virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.CompactHashMap: void init(int)>(i0);	$r4 = new java.io.InvalidObjectException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid size: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.io.InvalidObjectException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2