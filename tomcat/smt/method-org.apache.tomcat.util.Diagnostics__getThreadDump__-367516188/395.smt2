(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1521 0)
(declare-sort var1759 0)
(declare-sort var2414 0)
(declare-sort var3 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-const null-var1521 var1521)
(declare-const var2414-timeformat var1759)
(declare-const null-var3 var3)
(declare-const var560 var1521) ; Statement: r5 := @parameter0: org.apache.tomcat.util.res.StringManager 
(assert (not (= var560 null-var1521)))
(define-const var2403 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2403)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2403!1 String)
(assert (= var2403!1 ""))
(define-const var848 var1759 var2414-timeformat) ; Statement: $r1 = <org.apache.tomcat.util.Diagnostics: java.text.SimpleDateFormat timeformat> 
 ; Statement: entermonitor $r1 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1554 var3) ; Statement: $r17 := @caughtexception 
(assert (not (= var1554 null-var3)))
(assert true) ; Non Conditional
 ; Statement: exitmonitor $r1 
(assert true) ; Non Conditional
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void)}
; {var1521=org.apache.tomcat.util.res.StringManager, var560=r5, var2403=$r0, var1759=java.text.SimpleDateFormat, var2414=org.apache.tomcat.util.Diagnostics, var848=$r1, var3=java.lang.Throwable, var1554=$r17}
; {org.apache.tomcat.util.res.StringManager=var1521, r5=var560, $r0=var2403, java.text.SimpleDateFormat=var1759, org.apache.tomcat.util.Diagnostics=var2414, $r1=var848, java.lang.Throwable=var3, $r17=var1554}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r5 := @parameter0: org.apache.tomcat.util.res.StringManager;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = <org.apache.tomcat.util.Diagnostics: java.text.SimpleDateFormat timeformat>;	entermonitor $r1;	$r17 := @caughtexception;	exitmonitor $r1;	throw $r17
;block_num 4