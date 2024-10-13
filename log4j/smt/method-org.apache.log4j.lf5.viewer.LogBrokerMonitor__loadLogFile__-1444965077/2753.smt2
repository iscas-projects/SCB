(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2215 0)
(declare-sort var1652 0)
(declare-sort var2975 0)
(declare-sort var256 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2975-init () var2975)
(declare-fun openStream/913863501 (var1652) var256)
(declare-fun <init>/1393002687 (var2975 var256) void)
(declare-fun parse/1978443864 (var2975 var2215) void)
(declare-const null-var2215 var2215)
(declare-const null-var1652 var1652)
(declare-const var3671 var2215) ; Statement: r3 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var3671 null-var2215)))
(declare-const var2877 var1652) ; Statement: r1 := @parameter0: java.net.URL 
(assert (not (= var2877 null-var1652)))
(define-const var1728 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(define-const var810 var2975 var2975-init) ; Statement: $r0 = new org.apache.log4j.lf5.util.LogFileParser 
(assert true) ; Non Conditional
(assert true)
(define-const var1266 var256 (openStream/913863501 var2877)) ; Statement: $r2 = virtualinvoke r1.<java.net.URL: java.io.InputStream openStream()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/1393002687 var810 var1266)) ; Statement: specialinvoke $r0.<org.apache.log4j.lf5.util.LogFileParser: void <init>(java.io.InputStream)>($r2) 

(declare-const var810!1 var2975)
(declare-const var1266!1 var256)
(assert true) ; Non Conditional
(assert true)
;(assert (parse/1978443864 var810!1 var3671)) ; Statement: virtualinvoke $r0.<org.apache.log4j.lf5.util.LogFileParser: void parse(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r3) 

(declare-const var810!2 var2975)
(declare-const var3671!1 var2215)
(assert true) ; Non Conditional
(define-const var1728!1 Bool (ite (= 1 1) true false)) ; Statement: z0 = 1 
 ; Statement: goto [?= return z0] 
(assert true) ; Non Conditional
 ; Statement: return z0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2975-init=([], org.apache.log4j.lf5.util.LogFileParser), openStream/913863501=([java.net.URL], java.io.InputStream), <init>/1393002687=([org.apache.log4j.lf5.util.LogFileParser, java.io.InputStream], void), parse/1978443864=([org.apache.log4j.lf5.util.LogFileParser, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void)}
; {var2215=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var3671=r3, var1652=java.net.URL, var2877=r1, var1728=z0, var2975=org.apache.log4j.lf5.util.LogFileParser, var810=$r0, var256=java.io.InputStream, var1266=$r2}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var2215, r3=var3671, java.net.URL=var1652, r1=var2877, z0=var1728, org.apache.log4j.lf5.util.LogFileParser=var2975, $r0=var810, java.io.InputStream=var256, $r2=var1266}
;seq 
;cnt {}
;stmts r3 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	r1 := @parameter0: java.net.URL;	z0 = 0;	$r0 = new org.apache.log4j.lf5.util.LogFileParser;	$r2 = virtualinvoke r1.<java.net.URL: java.io.InputStream openStream()>();	specialinvoke $r0.<org.apache.log4j.lf5.util.LogFileParser: void <init>(java.io.InputStream)>($r2);	virtualinvoke $r0.<org.apache.log4j.lf5.util.LogFileParser: void parse(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r3);	z0 = 1;	goto [?= return z0];	return z0
;block_num 6