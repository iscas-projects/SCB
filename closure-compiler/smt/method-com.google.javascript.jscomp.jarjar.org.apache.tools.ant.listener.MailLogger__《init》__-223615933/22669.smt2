(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var28 0)
(declare-sort var3808 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1267234477 (var3808) void)
(declare-fun cast-from-var28-to-var3808 (var28) var3808)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun buffer/-388188862 (var28) String)
(declare-const null-var28 var28)
(declare-const var1365 var28) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger 
(assert (not (= var1365 null-var28)))
(assert true)
;(assert (<init>/-1267234477 (cast-from-var28-to-var3808 var1365))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: void <init>()>() 

(declare-const var1365!1 var28)
(define-const var2903 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2903)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2903!1 String)
(declare-const var1365!2 var28)
(assert (not (= var1365!2 null-var28)))
(assert (= (buffer/-388188862 var1365!2) var2903!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger: java.lang.StringBuffer buffer> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1267234477=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger], void), cast-from-var28-to-var3808=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), buffer/-388188862=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger], java.lang.StringBuffer)}
; {var28=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger, var1365=r0, var3808=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger, var2903=$r1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger=var28, r0=var1365, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger=var3808, $r1=var2903}
;seq <java.lang.StringBuffer: void <init>()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: void <init>()>();	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger: java.lang.StringBuffer buffer> = $r1;	return
;block_num 1