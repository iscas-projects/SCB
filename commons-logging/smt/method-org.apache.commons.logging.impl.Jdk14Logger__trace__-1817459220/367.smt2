(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2847 0)
(declare-sort var1212 0)
(declare-sort var2036 0)
(declare-sort var3823 0)
(declare-sort var3973 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var1212) String)
(declare-fun log/-2053243914 (var2847 var2036 String var3823) void)
(declare-const null-var2847 var2847)
(declare-const null-var1212 var1212)
(declare-const var2036-FINEST var2036)
(declare-const null-NullType var3973)
(declare-const null-var3823 var3823)
(declare-const var3018 var2847) ; Statement: r0 := @this: org.apache.commons.logging.impl.Jdk14Logger 
(assert (not (= var3018 null-var2847)))
(declare-const var2584 var1212) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var2584 null-var1212)))
(define-const var1388 var2036 var2036-FINEST) ; Statement: $r2 = <java.util.logging.Level: java.util.logging.Level FINEST> 
(define-const var1005 String (String_valueOf/-333372740 var2584)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (log/-2053243914 var3018 var1388 var1005 null-var3823)) ; Statement: virtualinvoke r0.<org.apache.commons.logging.impl.Jdk14Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r3, null) 

(declare-const var3018!1 var2847)
(declare-const var1388!1 var2036)
(declare-const var1005!1 String)
(declare-const var34 var3973)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), log/-2053243914=([org.apache.commons.logging.impl.Jdk14Logger, java.util.logging.Level, java.lang.String, java.lang.Throwable], void)}
; {var2847=org.apache.commons.logging.impl.Jdk14Logger, var3018=r0, var1212=java.lang.Object, var2584=r1, var2036=java.util.logging.Level, var1388=$r2, var1005=$r3, var3823=java.lang.Throwable, var34=null, var3973=null_type}
; {org.apache.commons.logging.impl.Jdk14Logger=var2847, r0=var3018, java.lang.Object=var1212, r1=var2584, java.util.logging.Level=var2036, $r2=var1388, $r3=var1005, java.lang.Throwable=var3823, null=var34, null_type=var3973}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Jdk14Logger;	r1 := @parameter0: java.lang.Object;	$r2 = <java.util.logging.Level: java.util.logging.Level FINEST>;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	virtualinvoke r0.<org.apache.commons.logging.impl.Jdk14Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r3, null);	return
;block_num 1