(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2008 0)
(declare-sort var2199 0)
(declare-sort var1070 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun defaultReadObject/610298106 (var2199) void)
(declare-fun readInt/-619649650 (var2199) Int)
(declare-fun var1070-init () var1070)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/237997851 (var1070 String) void)
(declare-const null-var2008 var2008)
(declare-const null-var2199 var2199)
(declare-const var3150 var2008) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.CompactHashSet 
(assert (not (= var3150 null-var2008)))
(declare-const var1428 var2199) ; Statement: r0 := @parameter0: java.io.ObjectInputStream 
(assert (not (= var1428 null-var2199)))
(assert true)
;(assert (defaultReadObject/610298106 var1428)) ; Statement: virtualinvoke r0.<java.io.ObjectInputStream: void defaultReadObject()>() 

(declare-const var1428!1 var2199)
(assert true)
(define-const var934 Int (readInt/-619649650 var1428!1)) ; Statement: i0 = virtualinvoke r0.<java.io.ObjectInputStream: int readInt()>() 
 ; Statement: if i0 >= 0 goto virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.CompactHashSet: void init(int)>(i0) 
(assert (not (>= var934 0))) ; Negate: Cond: i0 >= 0  
(define-const var2926 var1070 var1070-init) ; Statement: $r3 = new java.io.InvalidObjectException 
(define-const var3906 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3906)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3906!1 String)
(assert (= var3906!1 ""))
(assert true)
(define-const var1653 String (append/672562846 var3906!1 "Invalid size: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid size: ") 
(declare-const var3906!2 String)
(assert (= var3906!2 (str.++ var3906!1 "Invalid size: ")))
(assert true)
(define-const var3556 String (append/-1001720160 var1653 var934)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1653!1 String)
(assert (str.prefixof var1653 var1653!1))
(assert true)
(define-const var925 String (toString/-2075883882 var3556)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/237997851 var2926 var925)) ; Statement: specialinvoke $r3.<java.io.InvalidObjectException: void <init>(java.lang.String)>($r7) 

(declare-const var2926!1 var1070)
(declare-const var925!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {defaultReadObject/610298106=([java.io.ObjectInputStream], void), readInt/-619649650=([java.io.ObjectInputStream], int), var1070-init=([], java.io.InvalidObjectException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/237997851=([java.io.InvalidObjectException, java.lang.String], void)}
; {var2008=com.google.javascript.jscomp.jarjar.com.google.common.collect.CompactHashSet, var3150=r1, var2199=java.io.ObjectInputStream, var1428=r0, var934=i0, var1070=java.io.InvalidObjectException, var2926=$r3, var3906=$r4, var1653=$r5, var3556=$r6, var925=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.CompactHashSet=var2008, r1=var3150, java.io.ObjectInputStream=var2199, r0=var1428, i0=var934, java.io.InvalidObjectException=var1070, $r3=var2926, $r4=var3906, $r5=var1653, $r6=var3556, $r7=var925}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.CompactHashSet;	r0 := @parameter0: java.io.ObjectInputStream;	virtualinvoke r0.<java.io.ObjectInputStream: void defaultReadObject()>();	i0 = virtualinvoke r0.<java.io.ObjectInputStream: int readInt()>();	if i0 >= 0 goto virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.CompactHashSet: void init(int)>(i0);	$r3 = new java.io.InvalidObjectException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid size: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.io.InvalidObjectException: void <init>(java.lang.String)>($r7);	throw $r3
;block_num 2