(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1015 0)
(declare-sort var384 0)
(declare-sort var926 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var384-init () var384)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var926) ClassObject)
(declare-fun cast-from-var1015-to-var926 (var1015) var926)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var384 String) void)
(declare-const null-var1015 var1015)
(declare-const null-Int Int)
(declare-const var448 var1015) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3 
(assert (not (= var448 null-var1015)))
(declare-const var3328 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3328 null-Int)))
(define-const var3905 var384 var384-init) ; Statement: $r0 = new java.lang.RuntimeException 
(define-const var1602 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1602)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1602!1 String)
(assert (= var1602!1 ""))
(assert true)
(define-const var496 String (append/672562846 var1602!1 "No map fields found in ")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No map fields found in ") 
(declare-const var1602!2 String)
(assert (= var1602!2 (str.++ var1602!1 "No map fields found in ")))
(assert true)
(define-const var674 ClassObject (getClass/1258963082 (cast-from-var1015-to-var926 var448))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2577 String (getName/-1958580599 var674)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2593 String (append/672562846 var496 var2577)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var496!1 String)
(assert (= var496!1 (str.++ var496 var2577)))
(assert true)
(define-const var3909 String (toString/-2075883882 var2593)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var3905 var3909)) ; Statement: specialinvoke $r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r7) 

(declare-const var3905!1 var384)
(declare-const var3909!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var384-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1015-to-var926=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var1015=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3, var448=r2, var3328=i0, var384=java.lang.RuntimeException, var3905=$r0, var1602=$r1, var496=$r5, var926=java.lang.Object, var674=$r3, var2577=$r4, var2593=$r6, var3909=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3=var1015, r2=var448, i0=var3328, java.lang.RuntimeException=var384, $r0=var3905, $r1=var1602, $r5=var496, java.lang.Object=var926, $r3=var674, $r4=var2577, $r6=var2593, $r7=var3909}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3;	i0 := @parameter0: int;	$r0 = new java.lang.RuntimeException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No map fields found in ");	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1