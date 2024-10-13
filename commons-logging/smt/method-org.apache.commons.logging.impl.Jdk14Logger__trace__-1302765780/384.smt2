(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2040 0)
(declare-sort var1878 0)
(declare-sort var1569 0)
(declare-sort var1212 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var1878) String)
(declare-fun log/-2053243914 (var2040 var1212 String var1569) void)
(declare-const null-var2040 var2040)
(declare-const null-var1878 var1878)
(declare-const null-var1569 var1569)
(declare-const var1212-FINEST var1212)
(declare-const var86 var2040) ; Statement: r0 := @this: org.apache.commons.logging.impl.Jdk14Logger 
(assert (not (= var86 null-var2040)))
(declare-const var301 var1878) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var301 null-var1878)))
(declare-const var3709 var1569) ; Statement: r3 := @parameter1: java.lang.Throwable 
(assert (not (= var3709 null-var1569)))
(define-const var1455 var1212 var1212-FINEST) ; Statement: $r2 = <java.util.logging.Level: java.util.logging.Level FINEST> 
(define-const var1216 String (String_valueOf/-333372740 var301)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (log/-2053243914 var86 var1455 var1216 var3709)) ; Statement: virtualinvoke r0.<org.apache.commons.logging.impl.Jdk14Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r4, r3) 

(declare-const var86!1 var2040)
(declare-const var1455!1 var1212)
(declare-const var1216!1 String)
(declare-const var3709!1 var1569)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), log/-2053243914=([org.apache.commons.logging.impl.Jdk14Logger, java.util.logging.Level, java.lang.String, java.lang.Throwable], void)}
; {var2040=org.apache.commons.logging.impl.Jdk14Logger, var86=r0, var1878=java.lang.Object, var301=r1, var1569=java.lang.Throwable, var3709=r3, var1212=java.util.logging.Level, var1455=$r2, var1216=$r4}
; {org.apache.commons.logging.impl.Jdk14Logger=var2040, r0=var86, java.lang.Object=var1878, r1=var301, java.lang.Throwable=var1569, r3=var3709, java.util.logging.Level=var1212, $r2=var1455, $r4=var1216}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Jdk14Logger;	r1 := @parameter0: java.lang.Object;	r3 := @parameter1: java.lang.Throwable;	$r2 = <java.util.logging.Level: java.util.logging.Level FINEST>;	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	virtualinvoke r0.<org.apache.commons.logging.impl.Jdk14Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r4, r3);	return
;block_num 1