(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1365 0)
(declare-sort var1285 0)
(declare-sort var32 0)
(declare-sort var1181 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var32-init () var32)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-501924842 (var32 String var1181) void)
(declare-fun cast-from-var1285-to-var1181 (var1285) var1181)
(declare-fun cast-from-var32-to-var1181 (var32) var1181)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1365 var1365)
(declare-const null-var1285 var1285)
(declare-const var3773 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3773 null-ClassObject)))
(declare-const var3240 ClassObject) ; Statement: r1 := @parameter1: java.lang.Class 
(assert (not (= var3240 null-ClassObject)))
(declare-const var2662 var1365) ; Statement: r2 := @parameter2: org.hibernate.internal.util.beans.BeanInfoHelper$ReturningBeanInfoDelegate 
(assert (not (= var2662 null-var1365)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2824 var1285) ; Statement: $r3 := @caughtexception 
(assert (not (= var2824 null-var1285)))
(define-const var284 var32 var32-init) ; Statement: $r23 = new org.hibernate.internal.util.beans.BeanIntrospectionException 
(define-const var2446 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2446)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2446!1 String)
(assert (= var2446!1 ""))
(assert true)
(define-const var1928 String (append/672562846 var2446!1 "Unable to determine bean info from class [")) ; Statement: $r7 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to determine bean info from class [") 
(declare-const var2446!2 String)
(assert (= var2446!2 (str.++ var2446!1 "Unable to determine bean info from class [")))
(assert true)
(define-const var3361 String (getName/-1958580599 var3773)) ; Statement: $r6 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2905 String (append/672562846 var1928 var3361)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1928!1 String)
(assert (= var1928!1 (str.++ var1928 var3361)))
(assert true)
(define-const var454 String (append/672562846 var2905 "]")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2905!1 String)
(assert (= var2905!1 (str.++ var2905 "]")))
(assert true)
(define-const var2985 String (toString/-2075883882 var454)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-501924842 var284 var2985 (cast-from-var1285-to-var1181 var2824))) ; Statement: specialinvoke $r23.<org.hibernate.internal.util.beans.BeanIntrospectionException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r3) 

(declare-const var284!1 var32)
(declare-const var2985!1 String)
(declare-const var2824!1 var1285)
(define-const var3489 var1181 (cast-from-var32-to-var1181 var284!1)) ; Statement: $r26 = (java.lang.Throwable) $r23 
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {var32-init=([], org.hibernate.internal.util.beans.BeanIntrospectionException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-501924842=([org.hibernate.internal.util.beans.BeanIntrospectionException, java.lang.String, java.lang.Throwable], void), cast-from-var1285-to-var1181=([java.beans.IntrospectionException], java.lang.Throwable), cast-from-var32-to-var1181=([org.hibernate.internal.util.beans.BeanIntrospectionException], java.lang.Throwable)}
; {var3773=r0, var3240=r1, var1365=org.hibernate.internal.util.beans.BeanInfoHelper$ReturningBeanInfoDelegate, var2662=r2, var1285=java.beans.IntrospectionException, var2824=$r3, var32=org.hibernate.internal.util.beans.BeanIntrospectionException, var284=$r23, var2446=$r22, var1928=$r7, var3361=$r6, var2905=$r8, var454=$r9, var2985=$r10, var1181=java.lang.Throwable, var3489=$r26}
; {r0=var3773, r1=var3240, org.hibernate.internal.util.beans.BeanInfoHelper$ReturningBeanInfoDelegate=var1365, r2=var2662, java.beans.IntrospectionException=var1285, $r3=var2824, org.hibernate.internal.util.beans.BeanIntrospectionException=var32, $r23=var284, $r22=var2446, $r7=var1928, $r6=var3361, $r8=var2905, $r9=var454, $r10=var2985, java.lang.Throwable=var1181, $r26=var3489}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r1 := @parameter1: java.lang.Class;	r2 := @parameter2: org.hibernate.internal.util.beans.BeanInfoHelper$ReturningBeanInfoDelegate;	$r3 := @caughtexception;	$r23 = new org.hibernate.internal.util.beans.BeanIntrospectionException;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to determine bean info from class [");	$r6 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r23.<org.hibernate.internal.util.beans.BeanIntrospectionException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r3);	$r26 = (java.lang.Throwable) $r23;	throw $r26
;block_num 2