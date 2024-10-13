(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2023 0)
(declare-sort var1957 0)
(declare-sort var1914 0)
(declare-sort var1053 0)
(declare-sort var3008 0)
(declare-sort var3961 0)
(declare-sort var2891 0)
(declare-sort var2516 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun context/294532769 (var2023) var1914)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var2891) ClassObject)
(declare-fun cast-from-var2023-to-var2891 (var2023) var2891)
(declare-fun append/-1031950772 (String var2891) String)
(declare-fun cast-from-ClassObject-to-var2891 (ClassObject) var2891)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2516_log/979489950 (var3008 var3961 String) void)
(declare-fun lastValue/294532769 (var2023) String)
(declare-const null-var2023 var2023)
(declare-const null-String String)
(declare-const null-var1914 var1914)
(declare-const null-var1053 var1053)
(declare-const var3008-JFR_SETTING var3008)
(declare-const var3961-WARN var3961)
(declare-const var1661 var2023) ; Statement: r0 := @this: jdk.jfr.internal.Control 
(assert (not (= var1661 null-var2023)))
(declare-const var3031 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3031 null-String)))
(define-const var1209 var1914 (context/294532769 var1661)) ; Statement: $r1 = r0.<jdk.jfr.internal.Control: java.security.AccessControlContext context> 
 ; Statement: if $r1 != null goto $r2 = new jdk.jfr.internal.Control$2 
(assert (not (not (= var1209 null-var1914)))) ; Negate: Cond: $r1 != null  
(declare-const var2215 var1053) ; Statement: $r5 := @caughtexception 
(assert (not (= var2215 null-var1053)))
(define-const var904 var3008 var3008-JFR_SETTING) ; Statement: $r7 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SETTING> 
(define-const var2509 var3961 var3961-WARN) ; Statement: $r8 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel WARN> 
(define-const var818 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var818)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var818!1 String)
(assert (= var818!1 ""))
(assert true)
(define-const var978 String (append/672562846 var818!1 "Exception occured when setting value \u0022")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception occured when setting value \"") 
(declare-const var818!2 String)
(assert (= var818!2 (str.++ var818!1 "Exception occured when setting value \u0022")))
(assert true)
(define-const var1688 String (append/672562846 var978 var3031)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var978!1 String)
(assert (= var978!1 (str.++ var978 var3031)))
(assert true)
(define-const var1920 String (append/672562846 var1688 "\u0022 for ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" for ") 
(declare-const var1688!1 String)
(assert (= var1688!1 (str.++ var1688 "\u0022 for ")))
(assert true)
(define-const var433 ClassObject (getClass/1258963082 (cast-from-var2023-to-var2891 var1661))) ; Statement: $r11 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3544 String (append/-1031950772 var1920 (cast-from-ClassObject-to-var2891 var433))) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11) 
(declare-const var1920!1 String)
(assert (str.prefixof var1920 var1920!1))
(assert true)
(define-const var3619 String (toString/-2075883882 var3544)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2516_log/979489950 var904 var2509 var3619)) ; Statement: staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r7, $r8, $r14) 

(declare-const var904!1 var3008)
(declare-const var2509!1 var3961)
(declare-const var3619!1 String)
 ; Statement: goto [?= r0.<jdk.jfr.internal.Control: java.lang.String lastValue> = r3] 
(assert true) ; Non Conditional
(declare-const var1661!1 var2023)
(assert (not (= var1661!1 null-var2023)))
(assert (= (lastValue/294532769 var1661!1) var3031)) ; Statement: r0.<jdk.jfr.internal.Control: java.lang.String lastValue> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {context/294532769=([jdk.jfr.internal.Control], java.security.AccessControlContext), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2023-to-var2891=([jdk.jfr.internal.Control], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2891=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2516_log/979489950=([jdk.jfr.internal.LogTag, jdk.jfr.internal.LogLevel, java.lang.String], void), lastValue/294532769=([jdk.jfr.internal.Control], java.lang.String)}
; {var2023=jdk.jfr.internal.Control, var1661=r0, var3031=r3, var1957=null_type, var1914=java.security.AccessControlContext, var1209=$r1, var1053=java.lang.Throwable, var2215=$r5, var3008=jdk.jfr.internal.LogTag, var904=$r7, var3961=jdk.jfr.internal.LogLevel, var2509=$r8, var818=$r6, var978=$r9, var1688=$r10, var1920=$r12, var2891=java.lang.Object, var433=$r11, var3544=$r13, var3619=$r14, var2516=jdk.jfr.internal.Logger}
; {jdk.jfr.internal.Control=var2023, r0=var1661, r3=var3031, null_type=var1957, java.security.AccessControlContext=var1914, $r1=var1209, java.lang.Throwable=var1053, $r5=var2215, jdk.jfr.internal.LogTag=var3008, $r7=var904, jdk.jfr.internal.LogLevel=var3961, $r8=var2509, $r6=var818, $r9=var978, $r10=var1688, $r12=var1920, java.lang.Object=var2891, $r11=var433, $r13=var3544, $r14=var3619, jdk.jfr.internal.Logger=var2516}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.internal.Control;	r3 := @parameter0: java.lang.String;	$r1 = r0.<jdk.jfr.internal.Control: java.security.AccessControlContext context>;	if $r1 != null goto $r2 = new jdk.jfr.internal.Control$2;	$r5 := @caughtexception;	$r7 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SETTING>;	$r8 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel WARN>;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception occured when setting value \"");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" for ");	$r11 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r7, $r8, $r14);	goto [?= r0.<jdk.jfr.internal.Control: java.lang.String lastValue> = r3];	r0.<jdk.jfr.internal.Control: java.lang.String lastValue> = r3;	return
;block_num 3