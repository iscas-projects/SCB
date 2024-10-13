(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1654 0)
(declare-sort var1509 0)
(declare-sort var2403 0)
(declare-sort var1331 0)
(declare-sort var2377 0)
(declare-sort var1673 0)
(declare-sort var629 0)
(declare-sort var2689 0)
(declare-sort var1889 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1654-init () var1654)
(declare-fun <init>/-325640736 (var1654) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var629) String)
(declare-fun cast-from-var2377-to-var629 (var2377) var629)
(declare-fun getMessage/849299655 (var2689) String)
(declare-fun cast-from-var1509-to-var2689 (var1509) var2689)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1889_log/979489950 (var2403 var1331 String) void)
(declare-const null-var1509 var1509)
(declare-const var2403-JFR var2403)
(declare-const var1331-WARN var1331)
(declare-const var1673-JFC_DIRECTORY var2377)
(define-const var395 var1654 var1654-init) ; Statement: $r0 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var395)) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>()>() 

(declare-const var395!1 var1654)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1522 var1509) ; Statement: $r7 := @caughtexception 
(assert (not (= var1522 null-var1509)))
(define-const var2690 var2403 var2403-JFR) ; Statement: $r9 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR> 
(define-const var1785 var1331 var1331-WARN) ; Statement: $r10 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel WARN> 
(define-const var2336 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2336)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2336!1 String)
(assert (= var2336!1 ""))
(assert true)
(define-const var3447 String (append/672562846 var2336!1 "Could not access .jfc-files in ")) ; Statement: $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not access .jfc-files in ") 
(declare-const var2336!2 String)
(assert (= var2336!2 (str.++ var2336!1 "Could not access .jfc-files in ")))
(define-const var1108 var2377 var1673-JFC_DIRECTORY) ; Statement: $r11 = <jdk.jfr.internal.SecuritySupport: jdk.jfr.internal.SecuritySupport$SafePath JFC_DIRECTORY> 
(assert true)
(define-const var497 String (append/-1031950772 var3447 (cast-from-var2377-to-var629 var1108))) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11) 
(declare-const var3447!1 String)
(assert (str.prefixof var3447 var3447!1))
(assert true)
(define-const var3613 String (append/672562846 var497 ", ")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var497!1 String)
(assert (= var497!1 (str.++ var497 ", ")))
(assert true)
(define-const var2281 String (getMessage/849299655 (cast-from-var1509-to-var2689 var1522))) ; Statement: $r14 = virtualinvoke $r7.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var22 String (append/672562846 var3613 var2281)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var3613!1 String)
(assert (= var3613!1 (str.++ var3613 var2281)))
(assert true)
(define-const var2354 String (toString/-2075883882 var22)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1889_log/979489950 var2690 var1785 var2354)) ; Statement: staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r9, $r10, $r17) 

(declare-const var2690!1 var2403)
(declare-const var1785!1 var1331)
(declare-const var2354!1 String)
(assert true) ; Non Conditional
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1654-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2377-to-var629=([jdk.jfr.internal.SecuritySupport$SafePath], java.lang.Object), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1509-to-var2689=([java.io.IOException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1889_log/979489950=([jdk.jfr.internal.LogTag, jdk.jfr.internal.LogLevel, java.lang.String], void)}
; {var1654=java.util.ArrayList, var395=$r0, var1509=java.io.IOException, var1522=$r7, var2403=jdk.jfr.internal.LogTag, var2690=$r9, var1331=jdk.jfr.internal.LogLevel, var1785=$r10, var2336=$r8, var3447=$r12, var2377=jdk.jfr.internal.SecuritySupport$SafePath, var1673=jdk.jfr.internal.SecuritySupport, var1108=$r11, var629=java.lang.Object, var497=$r13, var3613=$r15, var2689=java.lang.Throwable, var2281=$r14, var22=$r16, var2354=$r17, var1889=jdk.jfr.internal.Logger}
; {java.util.ArrayList=var1654, $r0=var395, java.io.IOException=var1509, $r7=var1522, jdk.jfr.internal.LogTag=var2403, $r9=var2690, jdk.jfr.internal.LogLevel=var1331, $r10=var1785, $r8=var2336, $r12=var3447, jdk.jfr.internal.SecuritySupport$SafePath=var2377, jdk.jfr.internal.SecuritySupport=var1673, $r11=var1108, java.lang.Object=var629, $r13=var497, $r15=var3613, java.lang.Throwable=var2689, $r14=var2281, $r16=var22, $r17=var2354, jdk.jfr.internal.Logger=var1889}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = new java.util.ArrayList;	specialinvoke $r0.<java.util.ArrayList: void <init>()>();	$r7 := @caughtexception;	$r9 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR>;	$r10 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel WARN>;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not access .jfc-files in ");	$r11 = <jdk.jfr.internal.SecuritySupport: jdk.jfr.internal.SecuritySupport$SafePath JFC_DIRECTORY>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11);	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r14 = virtualinvoke $r7.<java.io.IOException: java.lang.String getMessage()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r9, $r10, $r17);	return $r0
;block_num 3