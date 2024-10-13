(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2517 0)
(declare-sort var1446 0)
(declare-sort var3985 0)
(declare-sort var3132 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var1446) String)
(declare-fun log/-1292381875 (var2517 var3132 String var3985) void)
(declare-const null-var2517 var2517)
(declare-const null-var1446 var1446)
(declare-const null-var3985 var3985)
(declare-const var3132-SEVERE var3132)
(declare-const var3628 var2517) ; Statement: r0 := @this: org.apache.commons.logging.impl.Jdk13LumberjackLogger 
(assert (not (= var3628 null-var2517)))
(declare-const var2512 var1446) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var2512 null-var1446)))
(declare-const var345 var3985) ; Statement: r3 := @parameter1: java.lang.Throwable 
(assert (not (= var345 null-var3985)))
(define-const var320 var3132 var3132-SEVERE) ; Statement: $r2 = <java.util.logging.Level: java.util.logging.Level SEVERE> 
(define-const var1549 String (String_valueOf/-333372740 var2512)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (log/-1292381875 var3628 var320 var1549 var345)) ; Statement: specialinvoke r0.<org.apache.commons.logging.impl.Jdk13LumberjackLogger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r4, r3) 

(declare-const var3628!1 var2517)
(declare-const var320!1 var3132)
(declare-const var1549!1 String)
(declare-const var345!1 var3985)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), log/-1292381875=([org.apache.commons.logging.impl.Jdk13LumberjackLogger, java.util.logging.Level, java.lang.String, java.lang.Throwable], void)}
; {var2517=org.apache.commons.logging.impl.Jdk13LumberjackLogger, var3628=r0, var1446=java.lang.Object, var2512=r1, var3985=java.lang.Throwable, var345=r3, var3132=java.util.logging.Level, var320=$r2, var1549=$r4}
; {org.apache.commons.logging.impl.Jdk13LumberjackLogger=var2517, r0=var3628, java.lang.Object=var1446, r1=var2512, java.lang.Throwable=var3985, r3=var345, java.util.logging.Level=var3132, $r2=var320, $r4=var1549}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Jdk13LumberjackLogger;	r1 := @parameter0: java.lang.Object;	r3 := @parameter1: java.lang.Throwable;	$r2 = <java.util.logging.Level: java.util.logging.Level SEVERE>;	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	specialinvoke r0.<org.apache.commons.logging.impl.Jdk13LumberjackLogger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r4, r3);	return
;block_num 1