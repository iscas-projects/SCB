(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var275 0)
(declare-sort var2424 0)
(declare-sort var1316 0)
(declare-sort var122 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var2424) String)
(declare-fun log/-2053243914 (var275 var122 String var1316) void)
(declare-const null-var275 var275)
(declare-const null-var2424 var2424)
(declare-const null-var1316 var1316)
(declare-const var122-FINE var122)
(declare-const var2743 var275) ; Statement: r0 := @this: org.apache.commons.logging.impl.Jdk14Logger 
(assert (not (= var2743 null-var275)))
(declare-const var264 var2424) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var264 null-var2424)))
(declare-const var2759 var1316) ; Statement: r3 := @parameter1: java.lang.Throwable 
(assert (not (= var2759 null-var1316)))
(define-const var3969 var122 var122-FINE) ; Statement: $r2 = <java.util.logging.Level: java.util.logging.Level FINE> 
(define-const var2357 String (String_valueOf/-333372740 var264)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (log/-2053243914 var2743 var3969 var2357 var2759)) ; Statement: virtualinvoke r0.<org.apache.commons.logging.impl.Jdk14Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r4, r3) 

(declare-const var2743!1 var275)
(declare-const var3969!1 var122)
(declare-const var2357!1 String)
(declare-const var2759!1 var1316)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), log/-2053243914=([org.apache.commons.logging.impl.Jdk14Logger, java.util.logging.Level, java.lang.String, java.lang.Throwable], void)}
; {var275=org.apache.commons.logging.impl.Jdk14Logger, var2743=r0, var2424=java.lang.Object, var264=r1, var1316=java.lang.Throwable, var2759=r3, var122=java.util.logging.Level, var3969=$r2, var2357=$r4}
; {org.apache.commons.logging.impl.Jdk14Logger=var275, r0=var2743, java.lang.Object=var2424, r1=var264, java.lang.Throwable=var1316, r3=var2759, java.util.logging.Level=var122, $r2=var3969, $r4=var2357}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Jdk14Logger;	r1 := @parameter0: java.lang.Object;	r3 := @parameter1: java.lang.Throwable;	$r2 = <java.util.logging.Level: java.util.logging.Level FINE>;	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	virtualinvoke r0.<org.apache.commons.logging.impl.Jdk14Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r4, r3);	return
;block_num 1