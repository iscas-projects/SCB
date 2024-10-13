(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var107 0)
(declare-sort var1787 0)
(declare-sort var2361 0)
(declare-sort var2906 0)
(declare-sort var1276 0)
(declare-sort var20 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isJDK/592470581 (var1787) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLogName/-1622746903 (var1276) String)
(declare-fun cast-from-var1787-to-var1276 (var1787) var1276)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var20_log/979489950 (var2361 var2906 String) void)
(declare-const null-String String)
(declare-const null-var1787 var1787)
(declare-const var2361-JFR_SYSTEM_EVENT var2361)
(declare-const var2906-INFO var2906)
(declare-const var3703 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3703 null-String)))
(declare-const var2699 var1787) ; Statement: r0 := @parameter1: jdk.jfr.internal.PlatformEventType 
(assert (not (= var2699 null-var1787)))
(assert true)
(define-const var3665 Bool (isJDK/592470581 var2699)) ; Statement: $z0 = virtualinvoke r0.<jdk.jfr.internal.PlatformEventType: boolean isJDK()>() 
 ; Statement: if $z0 != 0 goto $r2 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SYSTEM_EVENT> 
(assert (not (= (ite var3665 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1235 var2361 var2361-JFR_SYSTEM_EVENT) ; Statement: $r2 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SYSTEM_EVENT> 
(define-const var2138 var2906 var2906-INFO) ; Statement: $r3 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel INFO> 
(define-const var155 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var155)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var155!1 String)
(assert (= var155!1 ""))
(assert true)
(define-const var1099 String (append/672562846 var155!1 var3703)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var155!2 String)
(assert (= var155!2 (str.++ var155!1 var3703)))
(assert true)
(define-const var4 String (append/672562846 var1099 " periodic hook for ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" periodic hook for ") 
(declare-const var1099!1 String)
(assert (= var1099!1 (str.++ var1099 " periodic hook for ")))
(assert true)
(define-const var220 String (getLogName/-1622746903 (cast-from-var1787-to-var1276 var2699))) ; Statement: $r6 = virtualinvoke r0.<jdk.jfr.internal.PlatformEventType: java.lang.String getLogName()>() 
(assert true)
(define-const var2579 String (append/672562846 var4 var220)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var4!1 String)
(assert (= var4!1 (str.++ var4 var220)))
(assert true)
(define-const var1782 String (toString/-2075883882 var2579)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var20_log/979489950 var1235 var2138 var1782)) ; Statement: staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r2, $r3, $r9) 

(declare-const var1235!1 var2361)
(declare-const var2138!1 var2906)
(declare-const var1782!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isJDK/592470581=([jdk.jfr.internal.PlatformEventType], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLogName/-1622746903=([jdk.jfr.internal.Type], java.lang.String), cast-from-var1787-to-var1276=([jdk.jfr.internal.PlatformEventType], jdk.jfr.internal.Type), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var20_log/979489950=([jdk.jfr.internal.LogTag, jdk.jfr.internal.LogLevel, java.lang.String], void)}
; {var3703=r4, var107=null_type, var1787=jdk.jfr.internal.PlatformEventType, var2699=r0, var3665=$z0, var2361=jdk.jfr.internal.LogTag, var1235=$r2, var2906=jdk.jfr.internal.LogLevel, var2138=$r3, var155=$r1, var1099=$r5, var4=$r7, var1276=jdk.jfr.internal.Type, var220=$r6, var2579=$r8, var1782=$r9, var20=jdk.jfr.internal.Logger}
; {r4=var3703, null_type=var107, jdk.jfr.internal.PlatformEventType=var1787, r0=var2699, $z0=var3665, jdk.jfr.internal.LogTag=var2361, $r2=var1235, jdk.jfr.internal.LogLevel=var2906, $r3=var2138, $r1=var155, $r5=var1099, $r7=var4, jdk.jfr.internal.Type=var1276, $r6=var220, $r8=var2579, $r9=var1782, jdk.jfr.internal.Logger=var20}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @parameter0: java.lang.String;	r0 := @parameter1: jdk.jfr.internal.PlatformEventType;	$z0 = virtualinvoke r0.<jdk.jfr.internal.PlatformEventType: boolean isJDK()>();	if $z0 != 0 goto $r2 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SYSTEM_EVENT>;	$r2 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SYSTEM_EVENT>;	$r3 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel INFO>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" periodic hook for ");	$r6 = virtualinvoke r0.<jdk.jfr.internal.PlatformEventType: java.lang.String getLogName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r2, $r3, $r9);	goto [?= return];	return
;block_num 3