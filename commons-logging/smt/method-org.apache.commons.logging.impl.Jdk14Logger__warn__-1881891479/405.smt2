(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3313 0)
(declare-sort var539 0)
(declare-sort var3089 0)
(declare-sort var3552 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var539) String)
(declare-fun log/-2053243914 (var3313 var3552 String var3089) void)
(declare-const null-var3313 var3313)
(declare-const null-var539 var539)
(declare-const null-var3089 var3089)
(declare-const var3552-WARNING var3552)
(declare-const var330 var3313) ; Statement: r0 := @this: org.apache.commons.logging.impl.Jdk14Logger 
(assert (not (= var330 null-var3313)))
(declare-const var3546 var539) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var3546 null-var539)))
(declare-const var1227 var3089) ; Statement: r3 := @parameter1: java.lang.Throwable 
(assert (not (= var1227 null-var3089)))
(define-const var1100 var3552 var3552-WARNING) ; Statement: $r2 = <java.util.logging.Level: java.util.logging.Level WARNING> 
(define-const var910 String (String_valueOf/-333372740 var3546)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (log/-2053243914 var330 var1100 var910 var1227)) ; Statement: virtualinvoke r0.<org.apache.commons.logging.impl.Jdk14Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r4, r3) 

(declare-const var330!1 var3313)
(declare-const var1100!1 var3552)
(declare-const var910!1 String)
(declare-const var1227!1 var3089)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), log/-2053243914=([org.apache.commons.logging.impl.Jdk14Logger, java.util.logging.Level, java.lang.String, java.lang.Throwable], void)}
; {var3313=org.apache.commons.logging.impl.Jdk14Logger, var330=r0, var539=java.lang.Object, var3546=r1, var3089=java.lang.Throwable, var1227=r3, var3552=java.util.logging.Level, var1100=$r2, var910=$r4}
; {org.apache.commons.logging.impl.Jdk14Logger=var3313, r0=var330, java.lang.Object=var539, r1=var3546, java.lang.Throwable=var3089, r3=var1227, java.util.logging.Level=var3552, $r2=var1100, $r4=var910}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Jdk14Logger;	r1 := @parameter0: java.lang.Object;	r3 := @parameter1: java.lang.Throwable;	$r2 = <java.util.logging.Level: java.util.logging.Level WARNING>;	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	virtualinvoke r0.<org.apache.commons.logging.impl.Jdk14Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r4, r3);	return
;block_num 1