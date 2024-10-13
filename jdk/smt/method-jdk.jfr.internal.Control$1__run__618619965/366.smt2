(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3502 0)
(declare-sort var2594 0)
(declare-sort var585 0)
(declare-sort var906 0)
(declare-sort var2470 0)
(declare-sort var3408 0)
(declare-sort var3496 0)
(declare-sort var177 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var2470) ClassObject)
(declare-fun cast-from-var3502-to-var2470 (var3502) var2470)
(declare-fun append/-1031950772 (String var2470) String)
(declare-fun cast-from-ClassObject-to-var2470 (ClassObject) var2470)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3408_log/979489950 (var585 var906 String) void)
(declare-fun this$0/-421849362 (var3502) var3496)
(declare-fun var3496_access$000/1614492118 (var3496) String)
(declare-const null-var3502 var3502)
(declare-const null-var2594 var2594)
(declare-const var585-JFR_SETTING var585)
(declare-const var906-WARN var906)
(declare-const null-String String)
(declare-const var1241 var3502) ; Statement: r0 := @this: jdk.jfr.internal.Control$1 
(assert (not (= var1241 null-var3502)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var897 var2594) ; Statement: $r3 := @caughtexception 
(assert (not (= var897 null-var2594)))
(define-const var1938 var585 var585-JFR_SETTING) ; Statement: $r5 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SETTING> 
(define-const var1566 var906 var906-WARN) ; Statement: $r6 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel WARN> 
(define-const var605 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var605)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var605!1 String)
(assert (= var605!1 ""))
(assert true)
(define-const var3747 String (append/672562846 var605!1 "Exception occured when trying to get value for ")) ; Statement: $r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception occured when trying to get value for ") 
(declare-const var605!2 String)
(assert (= var605!2 (str.++ var605!1 "Exception occured when trying to get value for ")))
(assert true)
(define-const var1349 ClassObject (getClass/1258963082 (cast-from-var3502-to-var2470 var1241))) ; Statement: $r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var951 String (append/-1031950772 var3747 (cast-from-ClassObject-to-var2470 var1349))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var3747!1 String)
(assert (str.prefixof var3747 var3747!1))
(assert true)
(define-const var3238 String (toString/-2075883882 var951)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3408_log/979489950 var1938 var1566 var3238)) ; Statement: staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r5, $r6, $r10) 

(declare-const var1938!1 var585)
(declare-const var1566!1 var906)
(declare-const var3238!1 String)
(define-const var3880 var3496 (this$0/-421849362 var1241)) ; Statement: $r11 = r0.<jdk.jfr.internal.Control$1: jdk.jfr.internal.Control this$0> 
(define-const var2747 String (var3496_access$000/1614492118 var3880)) ; Statement: $r12 = staticinvoke <jdk.jfr.internal.Control: java.lang.String access$000(jdk.jfr.internal.Control)>($r11) 
 ; Statement: if $r12 == null goto $r14 = "" 
(assert (= var2747 null-String)) ; Cond: $r12 == null 
(define-const var1988 String "") ; Statement: $r14 = "" 
(assert true) ; Non Conditional
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3502-to-var2470=([jdk.jfr.internal.Control$1], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2470=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3408_log/979489950=([jdk.jfr.internal.LogTag, jdk.jfr.internal.LogLevel, java.lang.String], void), this$0/-421849362=([jdk.jfr.internal.Control$1], jdk.jfr.internal.Control), var3496_access$000/1614492118=([jdk.jfr.internal.Control], java.lang.String)}
; {var3502=jdk.jfr.internal.Control$1, var1241=r0, var2594=java.lang.Throwable, var897=$r3, var585=jdk.jfr.internal.LogTag, var1938=$r5, var906=jdk.jfr.internal.LogLevel, var1566=$r6, var605=$r4, var3747=$r8, var2470=java.lang.Object, var1349=$r7, var951=$r9, var3238=$r10, var3408=jdk.jfr.internal.Logger, var3496=jdk.jfr.internal.Control, var3880=$r11, var2747=$r12, var177=null_type, var1988=$r14}
; {jdk.jfr.internal.Control$1=var3502, r0=var1241, java.lang.Throwable=var2594, $r3=var897, jdk.jfr.internal.LogTag=var585, $r5=var1938, jdk.jfr.internal.LogLevel=var906, $r6=var1566, $r4=var605, $r8=var3747, java.lang.Object=var2470, $r7=var1349, $r9=var951, $r10=var3238, jdk.jfr.internal.Logger=var3408, jdk.jfr.internal.Control=var3496, $r11=var3880, $r12=var2747, null_type=var177, $r14=var1988}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.internal.Control$1;	$r3 := @caughtexception;	$r5 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SETTING>;	$r6 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel WARN>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception occured when trying to get value for ");	$r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r5, $r6, $r10);	$r11 = r0.<jdk.jfr.internal.Control$1: jdk.jfr.internal.Control this$0>;	$r12 = staticinvoke <jdk.jfr.internal.Control: java.lang.String access$000(jdk.jfr.internal.Control)>($r11);	if $r12 == null goto $r14 = "";	$r14 = "";	return $r14
;block_num 4