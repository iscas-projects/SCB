(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1530 0)
(declare-sort var546 0)
(declare-sort var3506 0)
(declare-sort var3808 0)
(declare-sort var3550 0)
(declare-sort var3492 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$value/-421849361 (var1530) String)
(declare-fun getClass/1258963082 (var3550) ClassObject)
(declare-fun cast-from-var1530-to-var3550 (var1530) var3550)
(declare-fun append/-1031950772 (String var3550) String)
(declare-fun cast-from-ClassObject-to-var3550 (ClassObject) var3550)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3492_log/979489950 (var3506 var3808 String) void)
(declare-const null-var1530 var1530)
(declare-const null-var546 var546)
(declare-const var3506-JFR_SETTING var3506)
(declare-const var3808-WARN var3808)
(declare-const var3422 var1530) ; Statement: r0 := @this: jdk.jfr.internal.Control$2 
(assert (not (= var3422 null-var1530)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2549 var546) ; Statement: $r3 := @caughtexception 
(assert (not (= var2549 null-var546)))
(define-const var1924 var3506 var3506-JFR_SETTING) ; Statement: $r5 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SETTING> 
(define-const var430 var3808 var3808-WARN) ; Statement: $r6 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel WARN> 
(define-const var1935 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1935)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1935!1 String)
(assert (= var1935!1 ""))
(assert true)
(define-const var3903 String (append/672562846 var1935!1 "Exception occured when setting value \u0022")) ; Statement: $r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception occured when setting value \"") 
(declare-const var1935!2 String)
(assert (= var1935!2 (str.++ var1935!1 "Exception occured when setting value \u0022")))
(define-const var1238 String (val$value/-421849361 var3422)) ; Statement: $r7 = r0.<jdk.jfr.internal.Control$2: java.lang.String val$value> 
(assert true)
(define-const var1054 String (append/672562846 var3903 var1238)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3903!1 String)
(assert (= var3903!1 (str.++ var3903 var1238)))
(assert true)
(define-const var2918 String (append/672562846 var1054 "\u0022 for ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" for ") 
(declare-const var1054!1 String)
(assert (= var1054!1 (str.++ var1054 "\u0022 for ")))
(assert true)
(define-const var129 ClassObject (getClass/1258963082 (cast-from-var1530-to-var3550 var3422))) ; Statement: $r10 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var538 String (append/-1031950772 var2918 (cast-from-ClassObject-to-var3550 var129))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var2918!1 String)
(assert (str.prefixof var2918 var2918!1))
(assert true)
(define-const var3053 String (toString/-2075883882 var538)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3492_log/979489950 var1924 var430 var3053)) ; Statement: staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r5, $r6, $r13) 

(declare-const var1924!1 var3506)
(declare-const var430!1 var3808)
(declare-const var3053!1 String)
(assert true) ; Non Conditional
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), val$value/-421849361=([jdk.jfr.internal.Control$2], java.lang.String), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1530-to-var3550=([jdk.jfr.internal.Control$2], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3550=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3492_log/979489950=([jdk.jfr.internal.LogTag, jdk.jfr.internal.LogLevel, java.lang.String], void)}
; {var1530=jdk.jfr.internal.Control$2, var3422=r0, var546=java.lang.Throwable, var2549=$r3, var3506=jdk.jfr.internal.LogTag, var1924=$r5, var3808=jdk.jfr.internal.LogLevel, var430=$r6, var1935=$r4, var3903=$r8, var1238=$r7, var1054=$r9, var2918=$r11, var3550=java.lang.Object, var129=$r10, var538=$r12, var3053=$r13, var3492=jdk.jfr.internal.Logger}
; {jdk.jfr.internal.Control$2=var1530, r0=var3422, java.lang.Throwable=var546, $r3=var2549, jdk.jfr.internal.LogTag=var3506, $r5=var1924, jdk.jfr.internal.LogLevel=var3808, $r6=var430, $r4=var1935, $r8=var3903, $r7=var1238, $r9=var1054, $r11=var2918, java.lang.Object=var3550, $r10=var129, $r12=var538, $r13=var3053, jdk.jfr.internal.Logger=var3492}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.internal.Control$2;	$r3 := @caughtexception;	$r5 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SETTING>;	$r6 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel WARN>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception occured when setting value \"");	$r7 = r0.<jdk.jfr.internal.Control$2: java.lang.String val$value>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" for ");	$r10 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r5, $r6, $r13);	return null
;block_num 3