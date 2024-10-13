(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2592 0)
(declare-sort var105 0)
(declare-sort var178 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var105-init () var105)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var178) ClassObject)
(declare-fun cast-from-var2592-to-var178 (var2592) var178)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var105 String) void)
(declare-const null-var2592 var2592)
(declare-const null-Int Int)
(declare-const var842 var2592) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$Builder 
(assert (not (= var842 null-var2592)))
(declare-const var625 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var625 null-Int)))
(define-const var3333 var105 var105-init) ; Statement: $r0 = new java.lang.RuntimeException 
(define-const var2156 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2156)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2156!1 String)
(assert (= var2156!1 ""))
(assert true)
(define-const var722 String (append/672562846 var2156!1 "No map fields found in ")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No map fields found in ") 
(declare-const var2156!2 String)
(assert (= var2156!2 (str.++ var2156!1 "No map fields found in ")))
(assert true)
(define-const var11 ClassObject (getClass/1258963082 (cast-from-var2592-to-var178 var842))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var123 String (getName/-1958580599 var11)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2979 String (append/672562846 var722 var123)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var722!1 String)
(assert (= var722!1 (str.++ var722 var123)))
(assert true)
(define-const var2461 String (toString/-2075883882 var2979)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var3333 var2461)) ; Statement: specialinvoke $r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r7) 

(declare-const var3333!1 var105)
(declare-const var2461!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var105-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2592-to-var178=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$Builder], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var2592=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$Builder, var842=r2, var625=i0, var105=java.lang.RuntimeException, var3333=$r0, var2156=$r1, var722=$r5, var178=java.lang.Object, var11=$r3, var123=$r4, var2979=$r6, var2461=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$Builder=var2592, r2=var842, i0=var625, java.lang.RuntimeException=var105, $r0=var3333, $r1=var2156, $r5=var722, java.lang.Object=var178, $r3=var11, $r4=var123, $r6=var2979, $r7=var2461}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$Builder;	i0 := @parameter0: int;	$r0 = new java.lang.RuntimeException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No map fields found in ");	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1