(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2909 0)
(declare-sort var1538 0)
(declare-sort var266 0)
(declare-sort var3288 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var1538) String)
(declare-fun log/-2053243914 (var2909 var3288 String var266) void)
(declare-const null-var2909 var2909)
(declare-const null-var1538 var1538)
(declare-const null-var266 var266)
(declare-const var3288-SEVERE var3288)
(declare-const var880 var2909) ; Statement: r0 := @this: org.apache.commons.logging.impl.Jdk14Logger 
(assert (not (= var880 null-var2909)))
(declare-const var3432 var1538) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var3432 null-var1538)))
(declare-const var2277 var266) ; Statement: r3 := @parameter1: java.lang.Throwable 
(assert (not (= var2277 null-var266)))
(define-const var23 var3288 var3288-SEVERE) ; Statement: $r2 = <java.util.logging.Level: java.util.logging.Level SEVERE> 
(define-const var2661 String (String_valueOf/-333372740 var3432)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (log/-2053243914 var880 var23 var2661 var2277)) ; Statement: virtualinvoke r0.<org.apache.commons.logging.impl.Jdk14Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r4, r3) 

(declare-const var880!1 var2909)
(declare-const var23!1 var3288)
(declare-const var2661!1 String)
(declare-const var2277!1 var266)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), log/-2053243914=([org.apache.commons.logging.impl.Jdk14Logger, java.util.logging.Level, java.lang.String, java.lang.Throwable], void)}
; {var2909=org.apache.commons.logging.impl.Jdk14Logger, var880=r0, var1538=java.lang.Object, var3432=r1, var266=java.lang.Throwable, var2277=r3, var3288=java.util.logging.Level, var23=$r2, var2661=$r4}
; {org.apache.commons.logging.impl.Jdk14Logger=var2909, r0=var880, java.lang.Object=var1538, r1=var3432, java.lang.Throwable=var266, r3=var2277, java.util.logging.Level=var3288, $r2=var23, $r4=var2661}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Jdk14Logger;	r1 := @parameter0: java.lang.Object;	r3 := @parameter1: java.lang.Throwable;	$r2 = <java.util.logging.Level: java.util.logging.Level SEVERE>;	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	virtualinvoke r0.<org.apache.commons.logging.impl.Jdk14Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r4, r3);	return
;block_num 1