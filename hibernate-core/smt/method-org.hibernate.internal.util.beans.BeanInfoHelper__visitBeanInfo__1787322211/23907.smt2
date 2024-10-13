(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2960 0)
(declare-sort var739 0)
(declare-sort var1668 0)
(declare-sort var2245 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1668-init () var1668)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-501924842 (var1668 String var2245) void)
(declare-fun cast-from-var739-to-var2245 (var739) var2245)
(declare-fun cast-from-var1668-to-var2245 (var1668) var2245)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2960 var2960)
(declare-const null-var739 var739)
(declare-const var3628 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3628 null-ClassObject)))
(declare-const var3861 ClassObject) ; Statement: r1 := @parameter1: java.lang.Class 
(assert (not (= var3861 null-ClassObject)))
(declare-const var3699 var2960) ; Statement: r2 := @parameter2: org.hibernate.internal.util.beans.BeanInfoHelper$BeanInfoDelegate 
(assert (not (= var3699 null-var2960)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3296 var739) ; Statement: $r3 := @caughtexception 
(assert (not (= var3296 null-var739)))
(define-const var2368 var1668 var1668-init) ; Statement: $r22 = new org.hibernate.internal.util.beans.BeanIntrospectionException 
(define-const var1690 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1690)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1690!1 String)
(assert (= var1690!1 ""))
(assert true)
(define-const var1042 String (append/672562846 var1690!1 "Unable to determine bean info from class [")) ; Statement: $r7 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to determine bean info from class [") 
(declare-const var1690!2 String)
(assert (= var1690!2 (str.++ var1690!1 "Unable to determine bean info from class [")))
(assert true)
(define-const var363 String (getName/-1958580599 var3628)) ; Statement: $r6 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var726 String (append/672562846 var1042 var363)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1042!1 String)
(assert (= var1042!1 (str.++ var1042 var363)))
(assert true)
(define-const var3348 String (append/672562846 var726 "]")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var726!1 String)
(assert (= var726!1 (str.++ var726 "]")))
(assert true)
(define-const var3167 String (toString/-2075883882 var3348)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-501924842 var2368 var3167 (cast-from-var739-to-var2245 var3296))) ; Statement: specialinvoke $r22.<org.hibernate.internal.util.beans.BeanIntrospectionException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r3) 

(declare-const var2368!1 var1668)
(declare-const var3167!1 String)
(declare-const var3296!1 var739)
(define-const var953 var2245 (cast-from-var1668-to-var2245 var2368!1)) ; Statement: $r25 = (java.lang.Throwable) $r22 
 ; Statement: throw $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {var1668-init=([], org.hibernate.internal.util.beans.BeanIntrospectionException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-501924842=([org.hibernate.internal.util.beans.BeanIntrospectionException, java.lang.String, java.lang.Throwable], void), cast-from-var739-to-var2245=([java.beans.IntrospectionException], java.lang.Throwable), cast-from-var1668-to-var2245=([org.hibernate.internal.util.beans.BeanIntrospectionException], java.lang.Throwable)}
; {var3628=r0, var3861=r1, var2960=org.hibernate.internal.util.beans.BeanInfoHelper$BeanInfoDelegate, var3699=r2, var739=java.beans.IntrospectionException, var3296=$r3, var1668=org.hibernate.internal.util.beans.BeanIntrospectionException, var2368=$r22, var1690=$r21, var1042=$r7, var363=$r6, var726=$r8, var3348=$r9, var3167=$r10, var2245=java.lang.Throwable, var953=$r25}
; {r0=var3628, r1=var3861, org.hibernate.internal.util.beans.BeanInfoHelper$BeanInfoDelegate=var2960, r2=var3699, java.beans.IntrospectionException=var739, $r3=var3296, org.hibernate.internal.util.beans.BeanIntrospectionException=var1668, $r22=var2368, $r21=var1690, $r7=var1042, $r6=var363, $r8=var726, $r9=var3348, $r10=var3167, java.lang.Throwable=var2245, $r25=var953}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r1 := @parameter1: java.lang.Class;	r2 := @parameter2: org.hibernate.internal.util.beans.BeanInfoHelper$BeanInfoDelegate;	$r3 := @caughtexception;	$r22 = new org.hibernate.internal.util.beans.BeanIntrospectionException;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to determine bean info from class [");	$r6 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r22.<org.hibernate.internal.util.beans.BeanIntrospectionException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r3);	$r25 = (java.lang.Throwable) $r22;	throw $r25
;block_num 2