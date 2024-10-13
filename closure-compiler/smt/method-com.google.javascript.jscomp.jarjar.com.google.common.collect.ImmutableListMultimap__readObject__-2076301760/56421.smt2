(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var21 0)
(declare-sort var470 0)
(declare-sort var1965 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun defaultReadObject/610298106 (var470) void)
(declare-fun readInt/-619649650 (var470) Int)
(declare-fun var1965-init () var1965)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/237997851 (var1965 String) void)
(declare-const null-var21 var21)
(declare-const null-var470 var470)
(declare-const var413 var21) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap 
(assert (not (= var413 null-var21)))
(declare-const var856 var470) ; Statement: r0 := @parameter0: java.io.ObjectInputStream 
(assert (not (= var856 null-var470)))
(assert true)
;(assert (defaultReadObject/610298106 var856)) ; Statement: virtualinvoke r0.<java.io.ObjectInputStream: void defaultReadObject()>() 

(declare-const var856!1 var470)
(assert true)
(define-const var876 Int (readInt/-619649650 var856!1)) ; Statement: i0 = virtualinvoke r0.<java.io.ObjectInputStream: int readInt()>() 
 ; Statement: if i0 >= 0 goto r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder builder()>() 
(assert (not (>= var876 0))) ; Negate: Cond: i0 >= 0  
(define-const var1652 var1965 var1965-init) ; Statement: $r13 = new java.io.InvalidObjectException 
(define-const var1925 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1925)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1925!1 String)
(assert (= var1925!1 ""))
(assert true)
(define-const var348 String (append/672562846 var1925!1 "Invalid key count ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid key count ") 
(declare-const var1925!2 String)
(assert (= var1925!2 (str.++ var1925!1 "Invalid key count ")))
(assert true)
(define-const var1548 String (append/-1001720160 var348 var876)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var348!1 String)
(assert (str.prefixof var348 var348!1))
(assert true)
(define-const var583 String (toString/-2075883882 var1548)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/237997851 var1652 var583)) ; Statement: specialinvoke $r13.<java.io.InvalidObjectException: void <init>(java.lang.String)>($r17) 

(declare-const var1652!1 var1965)
(declare-const var583!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {defaultReadObject/610298106=([java.io.ObjectInputStream], void), readInt/-619649650=([java.io.ObjectInputStream], int), var1965-init=([], java.io.InvalidObjectException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/237997851=([java.io.InvalidObjectException, java.lang.String], void)}
; {var21=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap, var413=r2, var470=java.io.ObjectInputStream, var856=r0, var876=i0, var1965=java.io.InvalidObjectException, var1652=$r13, var1925=$r14, var348=$r15, var1548=$r16, var583=$r17}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap=var21, r2=var413, java.io.ObjectInputStream=var470, r0=var856, i0=var876, java.io.InvalidObjectException=var1965, $r13=var1652, $r14=var1925, $r15=var348, $r16=var1548, $r17=var583}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap;	r0 := @parameter0: java.io.ObjectInputStream;	virtualinvoke r0.<java.io.ObjectInputStream: void defaultReadObject()>();	i0 = virtualinvoke r0.<java.io.ObjectInputStream: int readInt()>();	if i0 >= 0 goto r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder builder()>();	$r13 = new java.io.InvalidObjectException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid key count ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<java.io.InvalidObjectException: void <init>(java.lang.String)>($r17);	throw $r13
;block_num 2