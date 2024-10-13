(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1244 0)
(declare-sort var1272 0)
(declare-sort var1723 0)
(declare-sort var926 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var1272) String)
(declare-fun log/-1292381875 (var1244 var926 String var1723) void)
(declare-const null-var1244 var1244)
(declare-const null-var1272 var1272)
(declare-const null-var1723 var1723)
(declare-const var926-WARNING var926)
(declare-const var1878 var1244) ; Statement: r0 := @this: org.apache.commons.logging.impl.Jdk13LumberjackLogger 
(assert (not (= var1878 null-var1244)))
(declare-const var3430 var1272) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var3430 null-var1272)))
(declare-const var331 var1723) ; Statement: r3 := @parameter1: java.lang.Throwable 
(assert (not (= var331 null-var1723)))
(define-const var12 var926 var926-WARNING) ; Statement: $r2 = <java.util.logging.Level: java.util.logging.Level WARNING> 
(define-const var3265 String (String_valueOf/-333372740 var3430)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (log/-1292381875 var1878 var12 var3265 var331)) ; Statement: specialinvoke r0.<org.apache.commons.logging.impl.Jdk13LumberjackLogger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r4, r3) 

(declare-const var1878!1 var1244)
(declare-const var12!1 var926)
(declare-const var3265!1 String)
(declare-const var331!1 var1723)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), log/-1292381875=([org.apache.commons.logging.impl.Jdk13LumberjackLogger, java.util.logging.Level, java.lang.String, java.lang.Throwable], void)}
; {var1244=org.apache.commons.logging.impl.Jdk13LumberjackLogger, var1878=r0, var1272=java.lang.Object, var3430=r1, var1723=java.lang.Throwable, var331=r3, var926=java.util.logging.Level, var12=$r2, var3265=$r4}
; {org.apache.commons.logging.impl.Jdk13LumberjackLogger=var1244, r0=var1878, java.lang.Object=var1272, r1=var3430, java.lang.Throwable=var1723, r3=var331, java.util.logging.Level=var926, $r2=var12, $r4=var3265}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Jdk13LumberjackLogger;	r1 := @parameter0: java.lang.Object;	r3 := @parameter1: java.lang.Throwable;	$r2 = <java.util.logging.Level: java.util.logging.Level WARNING>;	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	specialinvoke r0.<org.apache.commons.logging.impl.Jdk13LumberjackLogger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r4, r3);	return
;block_num 1