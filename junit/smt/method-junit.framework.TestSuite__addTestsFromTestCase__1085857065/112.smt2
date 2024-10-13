(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3959 0)
(declare-sort var664 0)
(declare-sort var1830 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun fName/-60423050 (var3959) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3959_warning/1983827524 (String) var1830)
(declare-fun addTest/1168072696 (var3959 var1830) void)
(declare-const null-var3959 var3959)
(declare-const null-ClassObject ClassObject)
(declare-const null-var664 var664)
(declare-const var1518 var3959) ; Statement: r0 := @this: junit.framework.TestSuite 
(assert (not (= var1518 null-var3959)))
(declare-const var3972 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var3972 null-ClassObject)))
(assert true)
(define-const var2832 String (getName/-1958580599 var3972)) ; Statement: $r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(declare-const var1518!1 var3959)
(assert (not (= var1518!1 null-var3959)))
(assert (= (fName/-60423050 var1518!1) var2832)) ; Statement: r0.<junit.framework.TestSuite: java.lang.String fName> = $r2 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1327 var664) ; Statement: $r21 := @caughtexception 
(assert (not (= var1327 null-var664)))
(define-const var1871 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1871)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1871!1 String)
(assert (= var1871!1 ""))
(assert true)
(define-const var2869 String (append/672562846 var1871!1 "Class ")) ; Statement: $r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class ") 
(declare-const var1871!2 String)
(assert (= var1871!2 (str.++ var1871!1 "Class ")))
(assert true)
(define-const var2219 String (getName/-1958580599 var3972)) ; Statement: $r23 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2974 String (append/672562846 var2869 var2219)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var2869!1 String)
(assert (= var2869!1 (str.++ var2869 var2219)))
(assert true)
(define-const var2491 String (append/672562846 var2974 " has no public constructor TestCase(String name) or TestCase()")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" has no public constructor TestCase(String name) or TestCase()") 
(declare-const var2974!1 String)
(assert (= var2974!1 (str.++ var2974 " has no public constructor TestCase(String name) or TestCase()")))
(assert true)
(define-const var2271 String (toString/-2075883882 var2491)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3823 var1830 (var3959_warning/1983827524 var2271)) ; Statement: $r28 = staticinvoke <junit.framework.TestSuite: junit.framework.Test warning(java.lang.String)>($r27) 
(assert true)
;(assert (addTest/1168072696 var1518!1 var3823)) ; Statement: virtualinvoke r0.<junit.framework.TestSuite: void addTest(junit.framework.Test)>($r28) 

(declare-const var1518!2 var3959)
(declare-const var3823!1 var1830)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String), fName/-60423050=([junit.framework.TestSuite], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3959_warning/1983827524=([java.lang.String], junit.framework.Test), addTest/1168072696=([junit.framework.TestSuite, junit.framework.Test], void)}
; {var3959=junit.framework.TestSuite, var1518=r0, var3972=r1, var2832=$r2, var664=java.lang.NoSuchMethodException, var1327=$r21, var1871=$r22, var2869=$r24, var2219=$r23, var2974=$r25, var2491=$r26, var2271=$r27, var1830=junit.framework.Test, var3823=$r28}
; {junit.framework.TestSuite=var3959, r0=var1518, r1=var3972, $r2=var2832, java.lang.NoSuchMethodException=var664, $r21=var1327, $r22=var1871, $r24=var2869, $r23=var2219, $r25=var2974, $r26=var2491, $r27=var2271, junit.framework.Test=var1830, $r28=var3823}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: junit.framework.TestSuite;	r1 := @parameter0: java.lang.Class;	$r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	r0.<junit.framework.TestSuite: java.lang.String fName> = $r2;	$r21 := @caughtexception;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class ");	$r23 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" has no public constructor TestCase(String name) or TestCase()");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r28 = staticinvoke <junit.framework.TestSuite: junit.framework.Test warning(java.lang.String)>($r27);	virtualinvoke r0.<junit.framework.TestSuite: void addTest(junit.framework.Test)>($r28);	return
;block_num 2