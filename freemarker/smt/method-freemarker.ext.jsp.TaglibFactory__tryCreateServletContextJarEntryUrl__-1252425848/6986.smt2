(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var296 0)
(declare-sort var426 0)
(declare-sort var1702 0)
(declare-sort var186 0)
(declare-sort var3950 0)
(declare-sort var306 0)
(declare-sort var1291 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var306_jQuoteNoXSS/34347637 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun error/-784347014 (var186 String var1291) void)
(declare-fun cast-from-var1702-to-var1291 (var1702) var1291)
(declare-const null-var296 var296)
(declare-const null-String String)
(declare-const null-var1702 var1702)
(declare-const var3950-LOG var186)
(declare-const var1495 var296) ; Statement: r0 := @parameter0: javax.servlet.ServletContext 
(assert (not (= var1495 null-var296)))
(declare-const var2460 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2460 null-String)))
(declare-const var854 String) ; Statement: r7 := @parameter2: java.lang.String 
(assert (not (= var854 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2305 var1702) ; Statement: $r18 := @caughtexception 
(assert (not (= var2305 null-var1702)))
(define-const var1644 var186 var3950-LOG) ; Statement: $r20 = <freemarker.ext.jsp.TaglibFactory: freemarker.log.Logger LOG> 
(define-const var1384 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1384)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1384!1 String)
(assert (= var1384!1 ""))
(assert true)
(define-const var172 String (append/672562846 var1384!1 "Couldn\u0027t get URL for serlvetContext resource ")) ; Statement: $r22 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Couldn\'t get URL for serlvetContext resource ") 
(declare-const var1384!2 String)
(assert (= var1384!2 (str.++ var1384!1 "Couldn\u0027t get URL for serlvetContext resource ")))
(define-const var3348 String (var306_jQuoteNoXSS/34347637 var2460)) ; Statement: $r21 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.String)>(r1) 
(assert true)
(define-const var1342 String (append/672562846 var172 var3348)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var172!1 String)
(assert (= var172!1 (str.++ var172 var3348)))
(assert true)
(define-const var2186 String (append/672562846 var1342 " / jar entry ")) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" / jar entry ") 
(declare-const var1342!1 String)
(assert (= var1342!1 (str.++ var1342 " / jar entry ")))
(define-const var3369 String (var306_jQuoteNoXSS/34347637 var854)) ; Statement: $r24 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.String)>(r7) 
(assert true)
(define-const var2837 String (append/672562846 var2186 var3369)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var2186!1 String)
(assert (= var2186!1 (str.++ var2186 var3369)))
(assert true)
(define-const var2496 String (toString/-2075883882 var2837)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (error/-784347014 var1644 var2496 (cast-from-var1702-to-var1291 var2305))) ; Statement: virtualinvoke $r20.<freemarker.log.Logger: void error(java.lang.String,java.lang.Throwable)>($r27, $r18) 

(declare-const var1644!1 var186)
(declare-const var2496!1 String)
(declare-const var2305!1 var1702)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var306_jQuoteNoXSS/34347637=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), error/-784347014=([freemarker.log.Logger, java.lang.String, java.lang.Throwable], void), cast-from-var1702-to-var1291=([java.lang.Exception], java.lang.Throwable)}
; {var296=javax.servlet.ServletContext, var1495=r0, var2460=r1, var426=null_type, var854=r7, var1702=java.lang.Exception, var2305=$r18, var186=freemarker.log.Logger, var3950=freemarker.ext.jsp.TaglibFactory, var1644=$r20, var1384=$r19, var172=$r22, var306=freemarker.template.utility.StringUtil, var3348=$r21, var1342=$r23, var2186=$r25, var3369=$r24, var2837=$r26, var2496=$r27, var1291=java.lang.Throwable}
; {javax.servlet.ServletContext=var296, r0=var1495, r1=var2460, null_type=var426, r7=var854, java.lang.Exception=var1702, $r18=var2305, freemarker.log.Logger=var186, freemarker.ext.jsp.TaglibFactory=var3950, $r20=var1644, $r19=var1384, $r22=var172, freemarker.template.utility.StringUtil=var306, $r21=var3348, $r23=var1342, $r25=var2186, $r24=var3369, $r26=var2837, $r27=var2496, java.lang.Throwable=var1291}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: javax.servlet.ServletContext;	r1 := @parameter1: java.lang.String;	r7 := @parameter2: java.lang.String;	$r18 := @caughtexception;	$r20 = <freemarker.ext.jsp.TaglibFactory: freemarker.log.Logger LOG>;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Couldn\'t get URL for serlvetContext resource ");	$r21 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.String)>(r1);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" / jar entry ");	$r24 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.String)>(r7);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r20.<freemarker.log.Logger: void error(java.lang.String,java.lang.Throwable)>($r27, $r18);	return null
;block_num 2