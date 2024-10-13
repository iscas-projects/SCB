(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var856 0)
(declare-sort var661 0)
(declare-sort var1021 0)
(declare-sort var3724 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var661) String)
(declare-fun log/-2053243914 (var856 var3724 String var1021) void)
(declare-const null-var856 var856)
(declare-const null-var661 var661)
(declare-const null-var1021 var1021)
(declare-const var3724-SEVERE var3724)
(declare-const var2379 var856) ; Statement: r0 := @this: org.apache.commons.logging.impl.Jdk14Logger 
(assert (not (= var2379 null-var856)))
(declare-const var3248 var661) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var3248 null-var661)))
(declare-const var1587 var1021) ; Statement: r3 := @parameter1: java.lang.Throwable 
(assert (not (= var1587 null-var1021)))
(define-const var1721 var3724 var3724-SEVERE) ; Statement: $r2 = <java.util.logging.Level: java.util.logging.Level SEVERE> 
(define-const var818 String (String_valueOf/-333372740 var3248)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (log/-2053243914 var2379 var1721 var818 var1587)) ; Statement: virtualinvoke r0.<org.apache.commons.logging.impl.Jdk14Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r4, r3) 

(declare-const var2379!1 var856)
(declare-const var1721!1 var3724)
(declare-const var818!1 String)
(declare-const var1587!1 var1021)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), log/-2053243914=([org.apache.commons.logging.impl.Jdk14Logger, java.util.logging.Level, java.lang.String, java.lang.Throwable], void)}
; {var856=org.apache.commons.logging.impl.Jdk14Logger, var2379=r0, var661=java.lang.Object, var3248=r1, var1021=java.lang.Throwable, var1587=r3, var3724=java.util.logging.Level, var1721=$r2, var818=$r4}
; {org.apache.commons.logging.impl.Jdk14Logger=var856, r0=var2379, java.lang.Object=var661, r1=var3248, java.lang.Throwable=var1021, r3=var1587, java.util.logging.Level=var3724, $r2=var1721, $r4=var818}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Jdk14Logger;	r1 := @parameter0: java.lang.Object;	r3 := @parameter1: java.lang.Throwable;	$r2 = <java.util.logging.Level: java.util.logging.Level SEVERE>;	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	virtualinvoke r0.<org.apache.commons.logging.impl.Jdk14Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r4, r3);	return
;block_num 1