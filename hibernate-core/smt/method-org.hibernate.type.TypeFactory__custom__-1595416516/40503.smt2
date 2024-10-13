(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1734 0)
(declare-sort var531 0)
(declare-sort var3644 0)
(declare-sort var407 0)
(declare-sort var2784 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var407-init () var407)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/796187277 (var407 String var2784) void)
(declare-fun cast-from-var3644-to-var2784 (var3644) var2784)
(declare-fun cast-from-var407-to-var2784 (var407) var2784)
(declare-const null-var1734 var1734)
(declare-const null-ClassObject ClassObject)
(declare-const null-var531 var531)
(declare-const null-var3644 var3644)
(declare-const var3412 var1734) ; Statement: r5 := @this: org.hibernate.type.TypeFactory 
(assert (not (= var3412 null-var1734)))
(declare-const var444 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var444 null-ClassObject)))
(declare-const var2834 var531) ; Statement: r3 := @parameter1: java.util.Properties 
(assert (not (= var2834 null-var531)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var766 var3644) ; Statement: $r8 := @caughtexception 
(assert (not (= var766 null-var3644)))
(define-const var3512 var407 var407-init) ; Statement: $r18 = new org.hibernate.MappingException 
(define-const var2342 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2342)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2342!1 String)
(assert (= var2342!1 ""))
(assert true)
(define-const var3672 String (append/672562846 var2342!1 "Unable to instantiate custom type: ")) ; Statement: $r12 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to instantiate custom type: ") 
(declare-const var2342!2 String)
(assert (= var2342!2 (str.++ var2342!1 "Unable to instantiate custom type: ")))
(assert true)
(define-const var1168 String (getName/-1958580599 var444)) ; Statement: $r11 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2877 String (append/672562846 var3672 var1168)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3672!1 String)
(assert (= var3672!1 (str.++ var3672 var1168)))
(assert true)
(define-const var3598 String (toString/-2075883882 var2877)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/796187277 var3512 var3598 (cast-from-var3644-to-var2784 var766))) ; Statement: specialinvoke $r18.<org.hibernate.MappingException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r8) 

(declare-const var3512!1 var407)
(declare-const var3598!1 String)
(declare-const var766!1 var3644)
(define-const var2525 var2784 (cast-from-var407-to-var2784 var3512!1)) ; Statement: $r19 = (java.lang.Throwable) $r18 
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var407-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/796187277=([org.hibernate.MappingException, java.lang.String, java.lang.Throwable], void), cast-from-var3644-to-var2784=([java.lang.Exception], java.lang.Throwable), cast-from-var407-to-var2784=([org.hibernate.MappingException], java.lang.Throwable)}
; {var1734=org.hibernate.type.TypeFactory, var3412=r5, var444=r0, var531=java.util.Properties, var2834=r3, var3644=java.lang.Exception, var766=$r8, var407=org.hibernate.MappingException, var3512=$r18, var2342=$r17, var3672=$r12, var1168=$r11, var2877=$r13, var3598=$r14, var2784=java.lang.Throwable, var2525=$r19}
; {org.hibernate.type.TypeFactory=var1734, r5=var3412, r0=var444, java.util.Properties=var531, r3=var2834, java.lang.Exception=var3644, $r8=var766, org.hibernate.MappingException=var407, $r18=var3512, $r17=var2342, $r12=var3672, $r11=var1168, $r13=var2877, $r14=var3598, java.lang.Throwable=var2784, $r19=var2525}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.type.TypeFactory;	r0 := @parameter0: java.lang.Class;	r3 := @parameter1: java.util.Properties;	$r8 := @caughtexception;	$r18 = new org.hibernate.MappingException;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to instantiate custom type: ");	$r11 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r18.<org.hibernate.MappingException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r8);	$r19 = (java.lang.Throwable) $r18;	throw $r19
;block_num 2