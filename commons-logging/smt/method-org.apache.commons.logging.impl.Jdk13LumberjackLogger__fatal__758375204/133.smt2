(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2375 0)
(declare-sort var3645 0)
(declare-sort var624 0)
(declare-sort var1779 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var3645) String)
(declare-fun log/-1292381875 (var2375 var1779 String var624) void)
(declare-const null-var2375 var2375)
(declare-const null-var3645 var3645)
(declare-const null-var624 var624)
(declare-const var1779-SEVERE var1779)
(declare-const var3171 var2375) ; Statement: r0 := @this: org.apache.commons.logging.impl.Jdk13LumberjackLogger 
(assert (not (= var3171 null-var2375)))
(declare-const var2653 var3645) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var2653 null-var3645)))
(declare-const var2118 var624) ; Statement: r3 := @parameter1: java.lang.Throwable 
(assert (not (= var2118 null-var624)))
(define-const var2766 var1779 var1779-SEVERE) ; Statement: $r2 = <java.util.logging.Level: java.util.logging.Level SEVERE> 
(define-const var817 String (String_valueOf/-333372740 var2653)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (log/-1292381875 var3171 var2766 var817 var2118)) ; Statement: specialinvoke r0.<org.apache.commons.logging.impl.Jdk13LumberjackLogger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r4, r3) 

(declare-const var3171!1 var2375)
(declare-const var2766!1 var1779)
(declare-const var817!1 String)
(declare-const var2118!1 var624)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), log/-1292381875=([org.apache.commons.logging.impl.Jdk13LumberjackLogger, java.util.logging.Level, java.lang.String, java.lang.Throwable], void)}
; {var2375=org.apache.commons.logging.impl.Jdk13LumberjackLogger, var3171=r0, var3645=java.lang.Object, var2653=r1, var624=java.lang.Throwable, var2118=r3, var1779=java.util.logging.Level, var2766=$r2, var817=$r4}
; {org.apache.commons.logging.impl.Jdk13LumberjackLogger=var2375, r0=var3171, java.lang.Object=var3645, r1=var2653, java.lang.Throwable=var624, r3=var2118, java.util.logging.Level=var1779, $r2=var2766, $r4=var817}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Jdk13LumberjackLogger;	r1 := @parameter0: java.lang.Object;	r3 := @parameter1: java.lang.Throwable;	$r2 = <java.util.logging.Level: java.util.logging.Level SEVERE>;	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	specialinvoke r0.<org.apache.commons.logging.impl.Jdk13LumberjackLogger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r4, r3);	return
;block_num 1