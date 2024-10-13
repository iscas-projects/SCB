(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var838 0)
(declare-sort var144 0)
(declare-sort var1135 0)
(declare-sort var3684 0)
(declare-sort var1237 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var144) String)
(declare-fun log/-1292381875 (var838 var1135 String var3684) void)
(declare-const null-var838 var838)
(declare-const null-var144 var144)
(declare-const var1135-WARNING var1135)
(declare-const null-NullType var1237)
(declare-const null-var3684 var3684)
(declare-const var3392 var838) ; Statement: r0 := @this: org.apache.commons.logging.impl.Jdk13LumberjackLogger 
(assert (not (= var3392 null-var838)))
(declare-const var819 var144) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var819 null-var144)))
(define-const var3718 var1135 var1135-WARNING) ; Statement: $r2 = <java.util.logging.Level: java.util.logging.Level WARNING> 
(define-const var748 String (String_valueOf/-333372740 var819)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (log/-1292381875 var3392 var3718 var748 null-var3684)) ; Statement: specialinvoke r0.<org.apache.commons.logging.impl.Jdk13LumberjackLogger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r3, null) 

(declare-const var3392!1 var838)
(declare-const var3718!1 var1135)
(declare-const var748!1 String)
(declare-const var1285 var1237)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), log/-1292381875=([org.apache.commons.logging.impl.Jdk13LumberjackLogger, java.util.logging.Level, java.lang.String, java.lang.Throwable], void)}
; {var838=org.apache.commons.logging.impl.Jdk13LumberjackLogger, var3392=r0, var144=java.lang.Object, var819=r1, var1135=java.util.logging.Level, var3718=$r2, var748=$r3, var3684=java.lang.Throwable, var1285=null, var1237=null_type}
; {org.apache.commons.logging.impl.Jdk13LumberjackLogger=var838, r0=var3392, java.lang.Object=var144, r1=var819, java.util.logging.Level=var1135, $r2=var3718, $r3=var748, java.lang.Throwable=var3684, null=var1285, null_type=var1237}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Jdk13LumberjackLogger;	r1 := @parameter0: java.lang.Object;	$r2 = <java.util.logging.Level: java.util.logging.Level WARNING>;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	specialinvoke r0.<org.apache.commons.logging.impl.Jdk13LumberjackLogger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r3, null);	return
;block_num 1