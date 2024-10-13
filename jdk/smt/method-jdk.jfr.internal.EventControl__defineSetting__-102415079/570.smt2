(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2264 0)
(declare-sort var264 0)
(declare-sort var3047 0)
(declare-sort var1950 0)
(declare-sort var1276 0)
(declare-sort var203 0)
(declare-sort var372 0)
(declare-sort var1961 0)
(declare-sort var3106 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun settingInfos/-995646817 (var2264) var1276)
(declare-fun var372-init () var372)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getLogName/-1622746903 (var1961) String)
(declare-fun cast-from-var3047-to-var1961 (var3047) var1961)
(declare-fun getMessage/849299655 (var3106) String)
(declare-fun cast-from-var203-to-var3106 (var203) var3106)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2016723416 (var372 String) void)
(declare-const null-var2264 var2264)
(declare-const null-ClassObject ClassObject)
(declare-const null-var264 var264)
(declare-const null-var3047 var3047)
(declare-const null-String String)
(declare-const null-var203 var203)
(declare-const var2291 var2264) ; Statement: r0 := @this: jdk.jfr.internal.EventControl 
(assert (not (= var2291 null-var2264)))
(declare-const var674 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var674 null-ClassObject)))
(declare-const var3217 var264) ; Statement: r13 := @parameter1: java.lang.reflect.Method 
(assert (not (= var3217 null-var264)))
(declare-const var2634 var3047) ; Statement: r18 := @parameter2: jdk.jfr.internal.PlatformEventType 
(assert (not (= var2634 null-var3047)))
(declare-const var3126 String) ; Statement: r15 := @parameter3: java.lang.String 
(assert (not (= var3126 null-String)))
(define-const var2240 var1276 (settingInfos/-995646817 var2291)) ; Statement: $r1 = r0.<jdk.jfr.internal.EventControl: java.util.List settingInfos> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1374 var203) ; Statement: $r24 := @caughtexception 
(assert (not (= var1374 null-var203)))
(define-const var723 var372 var372-init) ; Statement: $r25 = new java.lang.IllegalAccessError 
(define-const var1011 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1011)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1011!1 String)
(assert (= var1011!1 ""))
(assert true)
(define-const var2055 String (append/672562846 var1011!1 "Could not access setting ")) ; Statement: $r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not access setting ") 
(declare-const var1011!2 String)
(assert (= var1011!2 (str.++ var1011!1 "Could not access setting ")))
(assert true)
(define-const var2553 String (getName/-1958580599 var674)) ; Statement: $r27 = virtualinvoke r7.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2224 String (append/672562846 var2055 var2553)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var2055!1 String)
(assert (= var2055!1 (str.++ var2055 var2553)))
(assert true)
(define-const var1407 String (append/672562846 var2224 " for event ")) ; Statement: $r31 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for event ") 
(declare-const var2224!1 String)
(assert (= var2224!1 (str.++ var2224 " for event ")))
(assert true)
(define-const var284 String (getLogName/-1622746903 (cast-from-var3047-to-var1961 var2634))) ; Statement: $r30 = virtualinvoke r18.<jdk.jfr.internal.PlatformEventType: java.lang.String getLogName()>() 
(assert true)
(define-const var2879 String (append/672562846 var1407 var284)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30) 
(declare-const var1407!1 String)
(assert (= var1407!1 (str.++ var1407 var284)))
(assert true)
(define-const var791 String (append/672562846 var2879 ". ")) ; Statement: $r34 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". ") 
(declare-const var2879!1 String)
(assert (= var2879!1 (str.++ var2879 ". ")))
(assert true)
(define-const var3188 String (getMessage/849299655 (cast-from-var203-to-var3106 var1374))) ; Statement: $r33 = virtualinvoke $r24.<java.lang.IllegalAccessException: java.lang.String getMessage()>() 
(assert true)
(define-const var2623 String (append/672562846 var791 var3188)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r33) 
(declare-const var791!1 String)
(assert (= var791!1 (str.++ var791 var3188)))
(assert true)
(define-const var1585 String (toString/-2075883882 var2623)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2016723416 var723 var1585)) ; Statement: specialinvoke $r25.<java.lang.IllegalAccessError: void <init>(java.lang.String)>($r36) 

(declare-const var723!1 var372)
(declare-const var1585!1 String)
 ; Statement: throw $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {settingInfos/-995646817=([jdk.jfr.internal.EventControl], java.util.List), var372-init=([], java.lang.IllegalAccessError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), getLogName/-1622746903=([jdk.jfr.internal.Type], java.lang.String), cast-from-var3047-to-var1961=([jdk.jfr.internal.PlatformEventType], jdk.jfr.internal.Type), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var203-to-var3106=([java.lang.IllegalAccessException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2016723416=([java.lang.IllegalAccessError, java.lang.String], void)}
; {var2264=jdk.jfr.internal.EventControl, var2291=r0, var674=r7, var264=java.lang.reflect.Method, var3217=r13, var3047=jdk.jfr.internal.PlatformEventType, var2634=r18, var3126=r15, var1950=null_type, var1276=java.util.List, var2240=$r1, var203=java.lang.IllegalAccessException, var1374=$r24, var372=java.lang.IllegalAccessError, var723=$r25, var1011=$r26, var2055=$r28, var2553=$r27, var2224=$r29, var1407=$r31, var1961=jdk.jfr.internal.Type, var284=$r30, var2879=$r32, var791=$r34, var3106=java.lang.Throwable, var3188=$r33, var2623=$r35, var1585=$r36}
; {jdk.jfr.internal.EventControl=var2264, r0=var2291, r7=var674, java.lang.reflect.Method=var264, r13=var3217, jdk.jfr.internal.PlatformEventType=var3047, r18=var2634, r15=var3126, null_type=var1950, java.util.List=var1276, $r1=var2240, java.lang.IllegalAccessException=var203, $r24=var1374, java.lang.IllegalAccessError=var372, $r25=var723, $r26=var1011, $r28=var2055, $r27=var2553, $r29=var2224, $r31=var1407, jdk.jfr.internal.Type=var1961, $r30=var284, $r32=var2879, $r34=var791, java.lang.Throwable=var3106, $r33=var3188, $r35=var2623, $r36=var1585}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.internal.EventControl;	r7 := @parameter0: java.lang.Class;	r13 := @parameter1: java.lang.reflect.Method;	r18 := @parameter2: jdk.jfr.internal.PlatformEventType;	r15 := @parameter3: java.lang.String;	$r1 = r0.<jdk.jfr.internal.EventControl: java.util.List settingInfos>;	$r24 := @caughtexception;	$r25 = new java.lang.IllegalAccessError;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not access setting ");	$r27 = virtualinvoke r7.<java.lang.Class: java.lang.String getName()>();	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r31 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for event ");	$r30 = virtualinvoke r18.<jdk.jfr.internal.PlatformEventType: java.lang.String getLogName()>();	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30);	$r34 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". ");	$r33 = virtualinvoke $r24.<java.lang.IllegalAccessException: java.lang.String getMessage()>();	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r33);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r25.<java.lang.IllegalAccessError: void <init>(java.lang.String)>($r36);	throw $r25
;block_num 2