(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var282 0)
(declare-sort var541 0)
(declare-sort var2346 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/-388188862 (var282) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2346_lineSeparator/-342590142 () String)
(declare-const null-var282 var282)
(declare-const null-String String)
(declare-const var3621 var282) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger 
(assert (not (= var3621 null-var282)))
(declare-const var1842 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1842 null-String)))
(define-const var2049 String (buffer/-388188862 var3621)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger: java.lang.StringBuffer buffer> 
(assert true)
(define-const var1814 String (append/1560614132 var2049 var1842)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var2049!1 String)
(assert (str.prefixof var2049 var2049!1))
(define-const var415 String var2346_lineSeparator/-342590142) ; Statement: $r3 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>() 
(assert true)
;(assert (append/1560614132 var1814 var415)) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var1814!1 String)
(assert (str.prefixof var1814 var1814!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/-388188862=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger], java.lang.StringBuffer), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), var2346_lineSeparator/-342590142=([], java.lang.String)}
; {var282=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger, var3621=r0, var1842=r1, var541=null_type, var2049=$r2, var1814=$r4, var2346=java.lang.System, var415=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger=var282, r0=var3621, r1=var1842, null_type=var541, $r2=var2049, $r4=var1814, java.lang.System=var2346, $r3=var415}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger;	r1 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger: java.lang.StringBuffer buffer>;	$r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r3 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>();	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	return
;block_num 1