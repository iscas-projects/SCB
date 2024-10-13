(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3202 0)
(declare-sort var202 0)
(declare-sort var2121 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2121-init () var2121)
(declare-fun <init>/-443093615 (var2121 var202) void)
(declare-fun parse/1978443864 (var2121 var3202) void)
(declare-const null-var3202 var3202)
(declare-const null-var202 var202)
(declare-const var779 var3202) ; Statement: r2 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var779 null-var3202)))
(declare-const var3848 var202) ; Statement: r1 := @parameter0: java.io.File 
(assert (not (= var3848 null-var202)))
(define-const var3568 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(define-const var436 var2121 var2121-init) ; Statement: $r0 = new org.apache.log4j.lf5.util.LogFileParser 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-443093615 var436 var3848)) ; Statement: specialinvoke $r0.<org.apache.log4j.lf5.util.LogFileParser: void <init>(java.io.File)>(r1) 

(declare-const var436!1 var2121)
(declare-const var3848!1 var202)
(assert true) ; Non Conditional
(assert true)
;(assert (parse/1978443864 var436!1 var779)) ; Statement: virtualinvoke $r0.<org.apache.log4j.lf5.util.LogFileParser: void parse(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r2) 

(declare-const var436!2 var2121)
(declare-const var779!1 var3202)
(assert true) ; Non Conditional
(define-const var3568!1 Bool (ite (= 1 1) true false)) ; Statement: z0 = 1 
 ; Statement: goto [?= return z0] 
(assert true) ; Non Conditional
 ; Statement: return z0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2121-init=([], org.apache.log4j.lf5.util.LogFileParser), <init>/-443093615=([org.apache.log4j.lf5.util.LogFileParser, java.io.File], void), parse/1978443864=([org.apache.log4j.lf5.util.LogFileParser, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void)}
; {var3202=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var779=r2, var202=java.io.File, var3848=r1, var3568=z0, var2121=org.apache.log4j.lf5.util.LogFileParser, var436=$r0}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var3202, r2=var779, java.io.File=var202, r1=var3848, z0=var3568, org.apache.log4j.lf5.util.LogFileParser=var2121, $r0=var436}
;seq 
;cnt {}
;stmts r2 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	r1 := @parameter0: java.io.File;	z0 = 0;	$r0 = new org.apache.log4j.lf5.util.LogFileParser;	specialinvoke $r0.<org.apache.log4j.lf5.util.LogFileParser: void <init>(java.io.File)>(r1);	virtualinvoke $r0.<org.apache.log4j.lf5.util.LogFileParser: void parse(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r2);	z0 = 1;	goto [?= return z0];	return z0
;block_num 5