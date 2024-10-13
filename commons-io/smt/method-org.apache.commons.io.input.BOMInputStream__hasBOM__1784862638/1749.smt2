(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3226 0)
(declare-sort var2409 0)
(declare-sort var3779 0)
(declare-sort var675 0)
(declare-sort var884 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun boms/631444026 (var3226) var3779)
(declare-fun var3779_contains/-441121415 (var3779 var675) Bool)
(declare-fun cast-from-var2409-to-var675 (var2409) var675)
(declare-fun var884-init () var884)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var675) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var884 String) void)
(declare-const null-var3226 var3226)
(declare-const null-var2409 var2409)
(declare-const var1211 var3226) ; Statement: r0 := @this: org.apache.commons.io.input.BOMInputStream 
(assert (not (= var1211 null-var3226)))
(declare-const var1310 var2409) ; Statement: r1 := @parameter0: org.apache.commons.io.ByteOrderMark 
(assert (not (= var1310 null-var2409)))
(define-const var3844 var3779 (boms/631444026 var1211)) ; Statement: $r2 = r0.<org.apache.commons.io.input.BOMInputStream: java.util.List boms> 
(define-const var1223 Bool (var3779_contains/-441121415 var3844 (cast-from-var2409-to-var675 var1310))) ; Statement: $z0 = interfaceinvoke $r2.<java.util.List: boolean contains(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $r3 = virtualinvoke r0.<org.apache.commons.io.input.BOMInputStream: org.apache.commons.io.ByteOrderMark getBOM()>() 
(assert (not (not (= (ite var1223 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2291 var884 var884-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var1528 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1528)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1528!1 String)
(assert (= var1528!1 ""))
(assert true)
(define-const var2135 String (append/672562846 var1528!1 "Stream not configured to detect ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Stream not configured to detect ") 
(declare-const var1528!2 String)
(assert (= var1528!2 (str.++ var1528!1 "Stream not configured to detect ")))
(assert true)
(define-const var1385 String (append/-1031950772 var2135 (cast-from-var2409-to-var675 var1310))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2135!1 String)
(assert (str.prefixof var2135 var2135!1))
(assert true)
(define-const var3442 String (toString/-2075883882 var1385)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2291 var3442)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var2291!1 var884)
(declare-const var3442!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {boms/631444026=([org.apache.commons.io.input.BOMInputStream], java.util.List), var3779_contains/-441121415=([java.util.List, java.lang.Object], boolean), cast-from-var2409-to-var675=([org.apache.commons.io.ByteOrderMark], java.lang.Object), var884-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3226=org.apache.commons.io.input.BOMInputStream, var1211=r0, var2409=org.apache.commons.io.ByteOrderMark, var1310=r1, var3779=java.util.List, var3844=$r2, var675=java.lang.Object, var1223=$z0, var884=java.lang.IllegalArgumentException, var2291=$r4, var1528=$r5, var2135=$r6, var1385=$r7, var3442=$r8}
; {org.apache.commons.io.input.BOMInputStream=var3226, r0=var1211, org.apache.commons.io.ByteOrderMark=var2409, r1=var1310, java.util.List=var3779, $r2=var3844, java.lang.Object=var675, $z0=var1223, java.lang.IllegalArgumentException=var884, $r4=var2291, $r5=var1528, $r6=var2135, $r7=var1385, $r8=var3442}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.io.input.BOMInputStream;	r1 := @parameter0: org.apache.commons.io.ByteOrderMark;	$r2 = r0.<org.apache.commons.io.input.BOMInputStream: java.util.List boms>;	$z0 = interfaceinvoke $r2.<java.util.List: boolean contains(java.lang.Object)>(r1);	if $z0 != 0 goto $r3 = virtualinvoke r0.<org.apache.commons.io.input.BOMInputStream: org.apache.commons.io.ByteOrderMark getBOM()>();	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Stream not configured to detect ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2