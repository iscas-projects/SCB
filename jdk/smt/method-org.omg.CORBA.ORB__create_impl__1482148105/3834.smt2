(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2742 0)
(declare-sort var486 0)
(declare-sort var210 0)
(declare-sort var207 0)
(declare-sort var403 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var486_currentThread/-1037784612 () var486)
(declare-fun getContextClassLoader/1719676180 (var486) var210)
(declare-fun var403-init () var403)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1492981998 (var403 String) void)
(declare-fun initCause/2003336360 (var207 var207) var207)
(declare-fun cast-from-var403-to-var207 (var403) var207)
(declare-const null-String String)
(declare-const null-var210 var210)
(declare-const null-var207 var207)
(declare-const var861 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var861 null-String)))
(define-const var2349 var486 var486_currentThread/-1037784612) ; Statement: $r0 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var1895 var210 (getContextClassLoader/1719676180 var2349)) ; Statement: r12 = virtualinvoke $r0.<java.lang.Thread: java.lang.ClassLoader getContextClassLoader()>() 
 ; Statement: if r12 != null goto staticinvoke <sun.reflect.misc.ReflectUtil: void checkPackageAccess(java.lang.String)>(r1) 
(assert (not (not (= var1895 null-var210)))) ; Negate: Cond: r12 != null  
(declare-const var3955 var207) ; Statement: $r6 := @caughtexception 
(assert (not (= var3955 null-var207)))
(define-const var320 var403 var403-init) ; Statement: $r7 = new org.omg.CORBA.INITIALIZE 
(define-const var368 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var368)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var368!1 String)
(assert (= var368!1 ""))
(assert true)
(define-const var2727 String (append/672562846 var368!1 "can\u0027t instantiate default ORB implementation ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("can\'t instantiate default ORB implementation ") 
(declare-const var368!2 String)
(assert (= var368!2 (str.++ var368!1 "can\u0027t instantiate default ORB implementation ")))
(assert true)
(define-const var2864 String (append/672562846 var2727 var861)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2727!1 String)
(assert (= var2727!1 (str.++ var2727 var861)))
(assert true)
(define-const var3957 String (toString/-2075883882 var2864)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1492981998 var320 var3957)) ; Statement: specialinvoke $r7.<org.omg.CORBA.INITIALIZE: void <init>(java.lang.String)>($r11) 

(declare-const var320!1 var403)
(declare-const var3957!1 String)
(assert true)
;(assert (initCause/2003336360 (cast-from-var403-to-var207 var320!1) var3955)) ; Statement: virtualinvoke $r7.<org.omg.CORBA.SystemException: java.lang.Throwable initCause(java.lang.Throwable)>($r6) 

(declare-const var320!2 var403)
(declare-const var3955!1 var207)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var486_currentThread/-1037784612=([], java.lang.Thread), getContextClassLoader/1719676180=([java.lang.Thread], java.lang.ClassLoader), var403-init=([], org.omg.CORBA.INITIALIZE), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1492981998=([org.omg.CORBA.INITIALIZE, java.lang.String], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var403-to-var207=([org.omg.CORBA.INITIALIZE], java.lang.Throwable)}
; {var861=r1, var2742=null_type, var486=java.lang.Thread, var2349=$r0, var210=java.lang.ClassLoader, var1895=r12, var207=java.lang.Throwable, var3955=$r6, var403=org.omg.CORBA.INITIALIZE, var320=$r7, var368=$r8, var2727=$r9, var2864=$r10, var3957=$r11}
; {r1=var861, null_type=var2742, java.lang.Thread=var486, $r0=var2349, java.lang.ClassLoader=var210, r12=var1895, java.lang.Throwable=var207, $r6=var3955, org.omg.CORBA.INITIALIZE=var403, $r7=var320, $r8=var368, $r9=var2727, $r10=var2864, $r11=var3957}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	r12 = virtualinvoke $r0.<java.lang.Thread: java.lang.ClassLoader getContextClassLoader()>();	if r12 != null goto staticinvoke <sun.reflect.misc.ReflectUtil: void checkPackageAccess(java.lang.String)>(r1);	$r6 := @caughtexception;	$r7 = new org.omg.CORBA.INITIALIZE;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("can\'t instantiate default ORB implementation ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<org.omg.CORBA.INITIALIZE: void <init>(java.lang.String)>($r11);	virtualinvoke $r7.<org.omg.CORBA.SystemException: java.lang.Throwable initCause(java.lang.Throwable)>($r6);	throw $r7
;block_num 2