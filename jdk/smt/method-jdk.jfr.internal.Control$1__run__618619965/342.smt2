(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var202 0)
(declare-sort var3703 0)
(declare-sort var970 0)
(declare-sort var3033 0)
(declare-sort var1075 0)
(declare-sort var1449 0)
(declare-sort var2934 0)
(declare-sort var1352 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var1075) ClassObject)
(declare-fun cast-from-var202-to-var1075 (var202) var1075)
(declare-fun append/-1031950772 (String var1075) String)
(declare-fun cast-from-ClassObject-to-var1075 (ClassObject) var1075)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1449_log/979489950 (var970 var3033 String) void)
(declare-fun this$0/-421849362 (var202) var2934)
(declare-fun var2934_access$000/1614492118 (var2934) String)
(declare-const null-var202 var202)
(declare-const null-var3703 var3703)
(declare-const var970-JFR_SETTING var970)
(declare-const var3033-WARN var3033)
(declare-const null-String String)
(declare-const var898 var202) ; Statement: r0 := @this: jdk.jfr.internal.Control$1 
(assert (not (= var898 null-var202)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var47 var3703) ; Statement: $r3 := @caughtexception 
(assert (not (= var47 null-var3703)))
(define-const var786 var970 var970-JFR_SETTING) ; Statement: $r5 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SETTING> 
(define-const var688 var3033 var3033-WARN) ; Statement: $r6 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel WARN> 
(define-const var769 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var769)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var769!1 String)
(assert (= var769!1 ""))
(assert true)
(define-const var1271 String (append/672562846 var769!1 "Exception occured when trying to get value for ")) ; Statement: $r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception occured when trying to get value for ") 
(declare-const var769!2 String)
(assert (= var769!2 (str.++ var769!1 "Exception occured when trying to get value for ")))
(assert true)
(define-const var3760 ClassObject (getClass/1258963082 (cast-from-var202-to-var1075 var898))) ; Statement: $r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3148 String (append/-1031950772 var1271 (cast-from-ClassObject-to-var1075 var3760))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var1271!1 String)
(assert (str.prefixof var1271 var1271!1))
(assert true)
(define-const var2123 String (toString/-2075883882 var3148)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1449_log/979489950 var786 var688 var2123)) ; Statement: staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r5, $r6, $r10) 

(declare-const var786!1 var970)
(declare-const var688!1 var3033)
(declare-const var2123!1 String)
(define-const var1616 var2934 (this$0/-421849362 var898)) ; Statement: $r11 = r0.<jdk.jfr.internal.Control$1: jdk.jfr.internal.Control this$0> 
(define-const var917 String (var2934_access$000/1614492118 var1616)) ; Statement: $r12 = staticinvoke <jdk.jfr.internal.Control: java.lang.String access$000(jdk.jfr.internal.Control)>($r11) 
 ; Statement: if $r12 == null goto $r14 = "" 
(assert (not (= var917 null-String))) ; Negate: Cond: $r12 == null  
(define-const var2622 var2934 (this$0/-421849362 var898)) ; Statement: $r13 = r0.<jdk.jfr.internal.Control$1: jdk.jfr.internal.Control this$0> 
(define-const var2860 String (var2934_access$000/1614492118 var2622)) ; Statement: $r14 = staticinvoke <jdk.jfr.internal.Control: java.lang.String access$000(jdk.jfr.internal.Control)>($r13) 
 ; Statement: goto [?= return $r14] 
(assert true) ; Non Conditional
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var202-to-var1075=([jdk.jfr.internal.Control$1], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var1075=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1449_log/979489950=([jdk.jfr.internal.LogTag, jdk.jfr.internal.LogLevel, java.lang.String], void), this$0/-421849362=([jdk.jfr.internal.Control$1], jdk.jfr.internal.Control), var2934_access$000/1614492118=([jdk.jfr.internal.Control], java.lang.String)}
; {var202=jdk.jfr.internal.Control$1, var898=r0, var3703=java.lang.Throwable, var47=$r3, var970=jdk.jfr.internal.LogTag, var786=$r5, var3033=jdk.jfr.internal.LogLevel, var688=$r6, var769=$r4, var1271=$r8, var1075=java.lang.Object, var3760=$r7, var3148=$r9, var2123=$r10, var1449=jdk.jfr.internal.Logger, var2934=jdk.jfr.internal.Control, var1616=$r11, var917=$r12, var1352=null_type, var2622=$r13, var2860=$r14}
; {jdk.jfr.internal.Control$1=var202, r0=var898, java.lang.Throwable=var3703, $r3=var47, jdk.jfr.internal.LogTag=var970, $r5=var786, jdk.jfr.internal.LogLevel=var3033, $r6=var688, $r4=var769, $r8=var1271, java.lang.Object=var1075, $r7=var3760, $r9=var3148, $r10=var2123, jdk.jfr.internal.Logger=var1449, jdk.jfr.internal.Control=var2934, $r11=var1616, $r12=var917, null_type=var1352, $r13=var2622, $r14=var2860}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.internal.Control$1;	$r3 := @caughtexception;	$r5 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SETTING>;	$r6 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel WARN>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception occured when trying to get value for ");	$r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r5, $r6, $r10);	$r11 = r0.<jdk.jfr.internal.Control$1: jdk.jfr.internal.Control this$0>;	$r12 = staticinvoke <jdk.jfr.internal.Control: java.lang.String access$000(jdk.jfr.internal.Control)>($r11);	if $r12 == null goto $r14 = "";	$r13 = r0.<jdk.jfr.internal.Control$1: jdk.jfr.internal.Control this$0>;	$r14 = staticinvoke <jdk.jfr.internal.Control: java.lang.String access$000(jdk.jfr.internal.Control)>($r13);	goto [?= return $r14];	return $r14
;block_num 4