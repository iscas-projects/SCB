(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3386 0)
(declare-sort var2730 0)
(declare-sort var1382 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2730-init () var2730)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var1382) ClassObject)
(declare-fun cast-from-var3386-to-var1382 (var3386) var1382)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var2730 String) void)
(declare-const null-var3386 var3386)
(declare-const null-Int Int)
(declare-const var3457 var3386) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$Builder 
(assert (not (= var3457 null-var3386)))
(declare-const var1330 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1330 null-Int)))
(define-const var3555 var2730 var2730-init) ; Statement: $r0 = new java.lang.RuntimeException 
(define-const var1828 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1828)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1828!1 String)
(assert (= var1828!1 ""))
(assert true)
(define-const var2466 String (append/672562846 var1828!1 "No map fields found in ")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No map fields found in ") 
(declare-const var1828!2 String)
(assert (= var1828!2 (str.++ var1828!1 "No map fields found in ")))
(assert true)
(define-const var1764 ClassObject (getClass/1258963082 (cast-from-var3386-to-var1382 var3457))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1188 String (getName/-1958580599 var1764)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2952 String (append/672562846 var2466 var1188)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2466!1 String)
(assert (= var2466!1 (str.++ var2466 var1188)))
(assert true)
(define-const var3040 String (toString/-2075883882 var2952)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var3555 var3040)) ; Statement: specialinvoke $r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r7) 

(declare-const var3555!1 var2730)
(declare-const var3040!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2730-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3386-to-var1382=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$Builder], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var3386=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$Builder, var3457=r2, var1330=i0, var2730=java.lang.RuntimeException, var3555=$r0, var1828=$r1, var2466=$r5, var1382=java.lang.Object, var1764=$r3, var1188=$r4, var2952=$r6, var3040=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$Builder=var3386, r2=var3457, i0=var1330, java.lang.RuntimeException=var2730, $r0=var3555, $r1=var1828, $r5=var2466, java.lang.Object=var1382, $r3=var1764, $r4=var1188, $r6=var2952, $r7=var3040}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$Builder;	i0 := @parameter0: int;	$r0 = new java.lang.RuntimeException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No map fields found in ");	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1