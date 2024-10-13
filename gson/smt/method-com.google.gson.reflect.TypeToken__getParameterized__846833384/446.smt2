(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2303 0)
(declare-sort var1583 0)
(declare-sort var3098 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2303_requireNonNull/-961817614 (var1583) var1583)
(declare-fun cast-from-ClassObject-to-var1583 (ClassObject) var1583)
(declare-fun cast-from-__Array__Int__ClassObject__-to-var1583 ((Array Int ClassObject)) var1583)
(declare-fun var3098-init () var3098)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1583) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3098 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var2317 ClassObject) ; Statement: r0 := @parameter0: java.lang.reflect.Type 
(assert (not (= var2317 null-ClassObject)))
(declare-const var2605 (Array Int ClassObject)) ; Statement: r1 := @parameter1: java.lang.reflect.Type[] 
(assert (not (= var2605 null-__Array__Int__ClassObject__)))
;(assert (var2303_requireNonNull/-961817614 (cast-from-ClassObject-to-var1583 var2317))) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r0) 

(declare-const var2317!1 ClassObject)
;(assert (var2303_requireNonNull/-961817614 (cast-from-__Array__Int__ClassObject__-to-var1583 var2605))) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r1) 

(declare-const var2605!1 (Array Int ClassObject))
(define-const var2667 Bool true) ; Statement: $z0 = r0 instanceof java.lang.Class 
 ; Statement: if $z0 != 0 goto r2 = (java.lang.Class) r0 
(assert (not (not (= (ite var2667 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3829 var3098 var3098-init) ; Statement: $r30 = new java.lang.IllegalArgumentException 
(define-const var1926 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1926)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1926!1 String)
(assert (= var1926!1 ""))
(assert true)
(define-const var574 String (append/672562846 var1926!1 "rawType must be of type Class, but was ")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("rawType must be of type Class, but was ") 
(declare-const var1926!2 String)
(assert (= var1926!2 (str.++ var1926!1 "rawType must be of type Class, but was ")))
(assert true)
(define-const var1078 String (append/-1031950772 var574 (cast-from-ClassObject-to-var1583 var2317!1))) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var574!1 String)
(assert (str.prefixof var574 var574!1))
(assert true)
(define-const var78 String (toString/-2075883882 var1078)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3829 var78)) ; Statement: specialinvoke $r30.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r34) 

(declare-const var3829!1 var3098)
(declare-const var78!1 String)
 ; Statement: throw $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {var2303_requireNonNull/-961817614=([java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var1583=([java.lang.reflect.Type], java.lang.Object), cast-from-__Array__Int__ClassObject__-to-var1583=([java.lang.reflect.Type[]], java.lang.Object), var3098-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2317=r0, var2605=r1, var2303=java.util.Objects, var1583=java.lang.Object, var2667=$z0, var3098=java.lang.IllegalArgumentException, var3829=$r30, var1926=$r31, var574=$r32, var1078=$r33, var78=$r34}
; {r0=var2317, r1=var2605, java.util.Objects=var2303, java.lang.Object=var1583, $z0=var2667, java.lang.IllegalArgumentException=var3098, $r30=var3829, $r31=var1926, $r32=var574, $r33=var1078, $r34=var78}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.reflect.Type;	r1 := @parameter1: java.lang.reflect.Type[];	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r0);	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r1);	$z0 = r0 instanceof java.lang.Class;	if $z0 != 0 goto r2 = (java.lang.Class) r0;	$r30 = new java.lang.IllegalArgumentException;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("rawType must be of type Class, but was ");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r30.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r34);	throw $r30
;block_num 2