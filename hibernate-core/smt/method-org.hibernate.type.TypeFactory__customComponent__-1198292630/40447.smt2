(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3955 0)
(declare-sort var1884 0)
(declare-sort var3634 0)
(declare-sort var515 0)
(declare-sort var486 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var515-init () var515)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/796187277 (var515 String var486) void)
(declare-fun cast-from-var3634-to-var486 (var3634) var486)
(declare-fun cast-from-var515-to-var486 (var515) var486)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3955 var3955)
(declare-const null-var1884 var1884)
(declare-const null-var3634 var3634)
(declare-const var2395 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2395 null-ClassObject)))
(declare-const var3578 var3955) ; Statement: r2 := @parameter1: java.util.Properties 
(assert (not (= var3578 null-var3955)))
(declare-const var2507 var1884) ; Statement: r11 := @parameter2: org.hibernate.type.TypeFactory$TypeScope 
(assert (not (= var2507 null-var1884)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var412 var3634) ; Statement: $r4 := @caughtexception 
(assert (not (= var412 null-var3634)))
(define-const var3585 var515 var515-init) ; Statement: $r15 = new org.hibernate.MappingException 
(define-const var137 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var137)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var137!1 String)
(assert (= var137!1 ""))
(assert true)
(define-const var3865 String (append/672562846 var137!1 "Unable to instantiate custom type: ")) ; Statement: $r8 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to instantiate custom type: ") 
(declare-const var137!2 String)
(assert (= var137!2 (str.++ var137!1 "Unable to instantiate custom type: ")))
(assert true)
(define-const var200 String (getName/-1958580599 var2395)) ; Statement: $r7 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var220 String (append/672562846 var3865 var200)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3865!1 String)
(assert (= var3865!1 (str.++ var3865 var200)))
(assert true)
(define-const var2482 String (toString/-2075883882 var220)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/796187277 var3585 var2482 (cast-from-var3634-to-var486 var412))) ; Statement: specialinvoke $r15.<org.hibernate.MappingException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r4) 

(declare-const var3585!1 var515)
(declare-const var2482!1 String)
(declare-const var412!1 var3634)
(define-const var1004 var486 (cast-from-var515-to-var486 var3585!1)) ; Statement: $r16 = (java.lang.Throwable) $r15 
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var515-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/796187277=([org.hibernate.MappingException, java.lang.String, java.lang.Throwable], void), cast-from-var3634-to-var486=([java.lang.Exception], java.lang.Throwable), cast-from-var515-to-var486=([org.hibernate.MappingException], java.lang.Throwable)}
; {var2395=r0, var3955=java.util.Properties, var3578=r2, var1884=org.hibernate.type.TypeFactory$TypeScope, var2507=r11, var3634=java.lang.Exception, var412=$r4, var515=org.hibernate.MappingException, var3585=$r15, var137=$r14, var3865=$r8, var200=$r7, var220=$r9, var2482=$r10, var486=java.lang.Throwable, var1004=$r16}
; {r0=var2395, java.util.Properties=var3955, r2=var3578, org.hibernate.type.TypeFactory$TypeScope=var1884, r11=var2507, java.lang.Exception=var3634, $r4=var412, org.hibernate.MappingException=var515, $r15=var3585, $r14=var137, $r8=var3865, $r7=var200, $r9=var220, $r10=var2482, java.lang.Throwable=var486, $r16=var1004}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r2 := @parameter1: java.util.Properties;	r11 := @parameter2: org.hibernate.type.TypeFactory$TypeScope;	$r4 := @caughtexception;	$r15 = new org.hibernate.MappingException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to instantiate custom type: ");	$r7 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<org.hibernate.MappingException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r4);	$r16 = (java.lang.Throwable) $r15;	throw $r16
;block_num 2