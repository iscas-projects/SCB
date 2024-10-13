(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2682 0)
(declare-sort var3217 0)
(declare-sort var2690 0)
(declare-sort var3560 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const Int!class ClassObject)
(declare-fun var3560-init () var3560)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var3560 String var2690) void)
(declare-fun cast-from-var3560-to-var2690 (var3560) var2690)
(declare-const null-var2682 var2682)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var2690 var2690)
(declare-const var2772 var2682) ; Statement: r14 := @this: org.hibernate.hql.internal.ast.util.LiteralProcessor 
(assert (not (= var2772 null-var2682)))
(declare-const var478 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var478 null-String)))
(declare-const var3008 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3008 null-Int)))
(define-const var1600 ClassObject Int!class) ; Statement: r15 = class "Ljava/lang/Integer;" 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var547 var2690) ; Statement: $r3 := @caughtexception 
(assert (not (= var547 null-var2690)))
(define-const var1252 var3560 var3560-init) ; Statement: $r24 = new org.hibernate.HibernateException 
(define-const var3414 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3414)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3414!1 String)
(assert (= var3414!1 ""))
(assert true)
(define-const var3729 String (append/672562846 var3414!1 "Could not parse literal [")) ; Statement: $r6 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not parse literal [") 
(declare-const var3414!2 String)
(assert (= var3414!2 (str.++ var3414!1 "Could not parse literal [")))
(assert true)
(define-const var2161 String (append/672562846 var3729 var478)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3729!1 String)
(assert (= var3729!1 (str.++ var3729 var478)))
(assert true)
(define-const var2583 String (append/672562846 var2161 "] as ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] as ") 
(declare-const var2161!1 String)
(assert (= var2161!1 (str.++ var2161 "] as ")))
(assert true)
(define-const var2954 String (getName/-1958580599 var1600)) ; Statement: $r8 = virtualinvoke r15.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var694 String (append/672562846 var2583 var2954)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2583!1 String)
(assert (= var2583!1 (str.++ var2583 var2954)))
(assert true)
(define-const var3924 String (toString/-2075883882 var694)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1245322999 var1252 var3924 var547)) ; Statement: specialinvoke $r24.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r3) 

(declare-const var1252!1 var3560)
(declare-const var3924!1 String)
(declare-const var547!1 var2690)
(define-const var2623 var2690 (cast-from-var3560-to-var2690 var1252!1)) ; Statement: $r25 = (java.lang.Throwable) $r24 
 ; Statement: throw $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {var3560-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var3560-to-var2690=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var2682=org.hibernate.hql.internal.ast.util.LiteralProcessor, var2772=r14, var478=r0, var3217=null_type, var3008=i0, var1600=r15, var2690=java.lang.Throwable, var547=$r3, var3560=org.hibernate.HibernateException, var1252=$r24, var3414=$r23, var3729=$r6, var2161=$r7, var2583=$r9, var2954=$r8, var694=$r10, var3924=$r11, var2623=$r25}
; {org.hibernate.hql.internal.ast.util.LiteralProcessor=var2682, r14=var2772, r0=var478, null_type=var3217, i0=var3008, r15=var1600, java.lang.Throwable=var2690, $r3=var547, org.hibernate.HibernateException=var3560, $r24=var1252, $r23=var3414, $r6=var3729, $r7=var2161, $r9=var2583, $r8=var2954, $r10=var694, $r11=var3924, $r25=var2623}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r14 := @this: org.hibernate.hql.internal.ast.util.LiteralProcessor;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	r15 = class "Ljava/lang/Integer;";	$r3 := @caughtexception;	$r24 = new org.hibernate.HibernateException;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not parse literal [");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] as ");	$r8 = virtualinvoke r15.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r24.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r3);	$r25 = (java.lang.Throwable) $r24;	throw $r25
;block_num 2