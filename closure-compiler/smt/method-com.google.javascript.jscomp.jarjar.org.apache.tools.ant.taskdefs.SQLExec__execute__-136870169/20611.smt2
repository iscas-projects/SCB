(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var663 0)
(declare-sort var704 0)
(declare-sort var1747 0)
(declare-sort var3632 0)
(declare-sort var2612 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var704-init () var704)
(declare-fun transactions/553303715 (var663) var1747)
(declare-fun <init>/-263654046 (var704 var3632) void)
(declare-fun cast-from-var1747-to-var3632 (var1747) var3632)
(declare-fun sqlCommand/553303715 (var663) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun cast-from-var704-to-var1747 (var704) var1747)
(declare-const null-var663 var663)
(declare-const null-var2612 var2612)
(declare-const var2337 var663) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec 
(assert (not (= var2337 null-var663)))
(define-const var1994 var704 var704-init) ; Statement: $r0 = new java.util.Vector 
(define-const var2104 var1747 (transactions/553303715 var2337)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.util.List transactions> 
(assert true)
;(assert (<init>/-263654046 var1994 (cast-from-var1747-to-var3632 var2104))) ; Statement: specialinvoke $r0.<java.util.Vector: void <init>(java.util.Collection)>($r2) 

(declare-const var1994!1 var704)
(declare-const var2104!1 var1747)
(define-const var3123 String (sqlCommand/553303715 var2337)) ; Statement: r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.lang.String sqlCommand> 
(define-const var3816 String (sqlCommand/553303715 var2337)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.lang.String sqlCommand> 
(assert true)
(define-const var513 String (trim/-847153721 var3816)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String trim()>() 
(declare-const var2337!1 var663)
(assert (not (= var2337!1 null-var663)))
(assert (= (sqlCommand/553303715 var2337!1) var513)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.lang.String sqlCommand> = $r5 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2841 var2612) ; Statement: $r62 := @caughtexception 
(assert (not (= var2841 null-var2612)))
(assert true) ; Non Conditional
(declare-const var2337!2 var663)
(assert (not (= var2337!2 null-var663)))
(assert (= (transactions/553303715 var2337!2) (cast-from-var704-to-var1747 var1994!1))) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.util.List transactions> = $r0 
(declare-const var2337!3 var663)
(assert (not (= var2337!3 null-var663)))
(assert (= (sqlCommand/553303715 var2337!3) var3123)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.lang.String sqlCommand> = r3 
 ; Statement: throw $r62 
(check-sat)
(get-model)
(get-unsat-core)
; {var704-init=([], java.util.Vector), transactions/553303715=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec], java.util.List), <init>/-263654046=([java.util.Vector, java.util.Collection], void), cast-from-var1747-to-var3632=([java.util.List], java.util.Collection), sqlCommand/553303715=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), cast-from-var704-to-var1747=([java.util.Vector], java.util.List)}
; {var663=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec, var2337=r1, var704=java.util.Vector, var1994=$r0, var1747=java.util.List, var2104=$r2, var3632=java.util.Collection, var3123=r3, var3816=$r4, var513=$r5, var2612=java.lang.Throwable, var2841=$r62}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec=var663, r1=var2337, java.util.Vector=var704, $r0=var1994, java.util.List=var1747, $r2=var2104, java.util.Collection=var3632, r3=var3123, $r4=var3816, $r5=var513, java.lang.Throwable=var2612, $r62=var2841}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec;	$r0 = new java.util.Vector;	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.util.List transactions>;	specialinvoke $r0.<java.util.Vector: void <init>(java.util.Collection)>($r2);	r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.lang.String sqlCommand>;	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.lang.String sqlCommand>;	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String trim()>();	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.lang.String sqlCommand> = $r5;	$r62 := @caughtexception;	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.util.List transactions> = $r0;	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.lang.String sqlCommand> = r3;	throw $r62
;block_num 3