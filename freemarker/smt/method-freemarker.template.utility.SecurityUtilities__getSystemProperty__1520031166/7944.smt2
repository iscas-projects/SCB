(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3704 0)
(declare-sort var1433 0)
(declare-sort var462 0)
(declare-sort var823 0)
(declare-sort var1784 0)
(declare-sort var3411 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1433-init () var1433)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3411_jQuoteNoXSS/34347637 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun warn/-1154811012 (var823 String) void)
(declare-const null-String String)
(declare-const null-var462 var462)
(declare-const var1784-LOG var823)
(declare-const var445 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var445 null-String)))
(declare-const var2402 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2402 null-String)))
(define-const var1243 var1433 var1433-init) ; Statement: $r0 = new freemarker.template.utility.SecurityUtilities$2 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3087 var462) ; Statement: $r5 := @caughtexception 
(assert (not (= var3087 null-var462)))
(define-const var634 var823 var1784-LOG) ; Statement: $r7 = <freemarker.template.utility.SecurityUtilities: freemarker.log.Logger LOG> 
(define-const var1354 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1354)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1354!1 String)
(assert (= var1354!1 ""))
(assert true)
(define-const var842 String (append/672562846 var1354!1 "Insufficient permissions to read system property ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Insufficient permissions to read system property ") 
(declare-const var1354!2 String)
(assert (= var1354!2 (str.++ var1354!1 "Insufficient permissions to read system property ")))
(define-const var607 String (var3411_jQuoteNoXSS/34347637 var445)) ; Statement: $r8 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.String)>(r1) 
(assert true)
(define-const var526 String (append/672562846 var842 var607)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var842!1 String)
(assert (= var842!1 (str.++ var842 var607)))
(assert true)
(define-const var1193 String (append/672562846 var526 ", using default value ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", using default value ") 
(declare-const var526!1 String)
(assert (= var526!1 (str.++ var526 ", using default value ")))
(define-const var2984 String (var3411_jQuoteNoXSS/34347637 var2402)) ; Statement: $r11 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.String)>(r2) 
(assert true)
(define-const var1163 String (append/672562846 var1193 var2984)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1193!1 String)
(assert (= var1193!1 (str.++ var1193 var2984)))
(assert true)
(define-const var841 String (toString/-2075883882 var1163)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (warn/-1154811012 var634 var841)) ; Statement: virtualinvoke $r7.<freemarker.log.Logger: void warn(java.lang.String)>($r14) 

(declare-const var634!1 var823)
(declare-const var841!1 String)
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var1433-init=([], freemarker.template.utility.SecurityUtilities$2), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3411_jQuoteNoXSS/34347637=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), warn/-1154811012=([freemarker.log.Logger, java.lang.String], void)}
; {var445=r1, var3704=null_type, var2402=r2, var1433=freemarker.template.utility.SecurityUtilities$2, var1243=$r0, var462=java.security.AccessControlException, var3087=$r5, var823=freemarker.log.Logger, var1784=freemarker.template.utility.SecurityUtilities, var634=$r7, var1354=$r6, var842=$r9, var3411=freemarker.template.utility.StringUtil, var607=$r8, var526=$r10, var1193=$r12, var2984=$r11, var1163=$r13, var841=$r14}
; {r1=var445, null_type=var3704, r2=var2402, freemarker.template.utility.SecurityUtilities$2=var1433, $r0=var1243, java.security.AccessControlException=var462, $r5=var3087, freemarker.log.Logger=var823, freemarker.template.utility.SecurityUtilities=var1784, $r7=var634, $r6=var1354, $r9=var842, freemarker.template.utility.StringUtil=var3411, $r8=var607, $r10=var526, $r12=var1193, $r11=var2984, $r13=var1163, $r14=var841}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	$r0 = new freemarker.template.utility.SecurityUtilities$2;	$r5 := @caughtexception;	$r7 = <freemarker.template.utility.SecurityUtilities: freemarker.log.Logger LOG>;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Insufficient permissions to read system property ");	$r8 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.String)>(r1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", using default value ");	$r11 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.String)>(r2);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r7.<freemarker.log.Logger: void warn(java.lang.String)>($r14);	return r2
;block_num 2