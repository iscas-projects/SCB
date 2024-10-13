(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var402 0)
(declare-sort var265 0)
(declare-sort var2202 0)
(declare-sort var100 0)
(declare-sort var84 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var265) String)
(declare-fun log/-2053243914 (var402 var2202 String var100) void)
(declare-const null-var402 var402)
(declare-const null-var265 var265)
(declare-const var2202-INFO var2202)
(declare-const null-NullType var84)
(declare-const null-var100 var100)
(declare-const var996 var402) ; Statement: r0 := @this: org.apache.commons.logging.impl.Jdk14Logger 
(assert (not (= var996 null-var402)))
(declare-const var3773 var265) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var3773 null-var265)))
(define-const var2082 var2202 var2202-INFO) ; Statement: $r2 = <java.util.logging.Level: java.util.logging.Level INFO> 
(define-const var1999 String (String_valueOf/-333372740 var3773)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (log/-2053243914 var996 var2082 var1999 null-var100)) ; Statement: virtualinvoke r0.<org.apache.commons.logging.impl.Jdk14Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r3, null) 

(declare-const var996!1 var402)
(declare-const var2082!1 var2202)
(declare-const var1999!1 String)
(declare-const var3058 var84)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), log/-2053243914=([org.apache.commons.logging.impl.Jdk14Logger, java.util.logging.Level, java.lang.String, java.lang.Throwable], void)}
; {var402=org.apache.commons.logging.impl.Jdk14Logger, var996=r0, var265=java.lang.Object, var3773=r1, var2202=java.util.logging.Level, var2082=$r2, var1999=$r3, var100=java.lang.Throwable, var3058=null, var84=null_type}
; {org.apache.commons.logging.impl.Jdk14Logger=var402, r0=var996, java.lang.Object=var265, r1=var3773, java.util.logging.Level=var2202, $r2=var2082, $r3=var1999, java.lang.Throwable=var100, null=var3058, null_type=var84}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Jdk14Logger;	r1 := @parameter0: java.lang.Object;	$r2 = <java.util.logging.Level: java.util.logging.Level INFO>;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	virtualinvoke r0.<org.apache.commons.logging.impl.Jdk14Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r3, null);	return
;block_num 1