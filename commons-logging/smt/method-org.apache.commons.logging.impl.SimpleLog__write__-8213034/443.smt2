(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var602 0)
(declare-sort var1261 0)
(declare-sort var1170 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun println/1773605060 (var1261 String) void)
(declare-const null-var602 var602)
(declare-const null-String String)
(declare-const var1170-err var1261)
(declare-const var109 var602) ; Statement: r3 := @this: org.apache.commons.logging.impl.SimpleLog 
(assert (not (= var109 null-var602)))
(declare-const var1770 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var1770 null-String)))
(define-const var3379 var1261 var1170-err) ; Statement: $r1 = <java.lang.System: java.io.PrintStream err> 
(assert true)
(define-const var995 String (toString/-222306083 var1770)) ; Statement: $r2 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3379 var995)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r2) 

(declare-const var3379!1 var1261)
(declare-const var995!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-222306083=([java.lang.StringBuffer], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var602=org.apache.commons.logging.impl.SimpleLog, var109=r3, var1770=r0, var1261=java.io.PrintStream, var1170=java.lang.System, var3379=$r1, var995=$r2}
; {org.apache.commons.logging.impl.SimpleLog=var602, r3=var109, r0=var1770, java.io.PrintStream=var1261, java.lang.System=var1170, $r1=var3379, $r2=var995}
;seq <java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.commons.logging.impl.SimpleLog;	r0 := @parameter0: java.lang.StringBuffer;	$r1 = <java.lang.System: java.io.PrintStream err>;	$r2 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r2);	return
;block_num 1