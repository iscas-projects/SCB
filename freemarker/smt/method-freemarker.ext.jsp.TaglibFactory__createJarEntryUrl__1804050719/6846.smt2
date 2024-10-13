(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var771 0)
(declare-sort var8 0)
(declare-sort var861 0)
(declare-sort var2360 0)
(declare-sort var2506 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var771-init () var771)
(declare-fun var2506-init () var2506)
(declare-fun <init>/1546543875 (var2506) void)
(declare-const null-var771 var771)
(declare-const null-String String)
(declare-const var861-PLATFORM_FILE_ENCODING String)
(declare-const null-var2360 var2360)
(declare-const var3315 var771) ; Statement: r1 := @parameter0: java.net.URL 
(assert (not (= var3315 null-var771)))
(declare-const var1842 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var1842 null-String)))
(assert true)
(define-const var1223 Bool (startsWith/-1785782452 var1842 "/")) ; Statement: $z0 = virtualinvoke r6.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto $r0 = new java.net.URL 
(assert (= (ite var1223 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2275 var771 var771-init) ; Statement: $r0 = new java.net.URL 
(define-const var3619 String var861-PLATFORM_FILE_ENCODING) ; Statement: $r2 = <freemarker.ext.jsp.TaglibFactory: java.lang.String PLATFORM_FILE_ENCODING> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2295 var2360) ; Statement: $r4 := @caughtexception 
(assert (not (= var2295 null-var2360)))
(define-const var469 var2506 var2506-init) ; Statement: $r5 = new freemarker.core.BugException 
(assert true)
;(assert (<init>/1546543875 var469)) ; Statement: specialinvoke $r5.<freemarker.core.BugException: void <init>()>() 

(declare-const var469!1 var2506)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var771-init=([], java.net.URL), var2506-init=([], freemarker.core.BugException), <init>/1546543875=([freemarker.core.BugException], void)}
; {var771=java.net.URL, var3315=r1, var1842=r6, var8=null_type, var1223=$z0, var2275=$r0, var861=freemarker.ext.jsp.TaglibFactory, var3619=$r2, var2360=java.io.UnsupportedEncodingException, var2295=$r4, var2506=freemarker.core.BugException, var469=$r5}
; {java.net.URL=var771, r1=var3315, r6=var1842, null_type=var8, $z0=var1223, $r0=var2275, freemarker.ext.jsp.TaglibFactory=var861, $r2=var3619, java.io.UnsupportedEncodingException=var2360, $r4=var2295, freemarker.core.BugException=var2506, $r5=var469}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @parameter0: java.net.URL;	r6 := @parameter1: java.lang.String;	$z0 = virtualinvoke r6.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 == 0 goto $r0 = new java.net.URL;	$r0 = new java.net.URL;	$r2 = <freemarker.ext.jsp.TaglibFactory: java.lang.String PLATFORM_FILE_ENCODING>;	$r4 := @caughtexception;	$r5 = new freemarker.core.BugException;	specialinvoke $r5.<freemarker.core.BugException: void <init>()>();	throw $r5
;block_num 3