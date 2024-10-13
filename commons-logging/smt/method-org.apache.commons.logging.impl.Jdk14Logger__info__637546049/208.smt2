(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3850 0)
(declare-sort var336 0)
(declare-sort var3910 0)
(declare-sort var3722 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var336) String)
(declare-fun log/-2053243914 (var3850 var3722 String var3910) void)
(declare-const null-var3850 var3850)
(declare-const null-var336 var336)
(declare-const null-var3910 var3910)
(declare-const var3722-INFO var3722)
(declare-const var523 var3850) ; Statement: r0 := @this: org.apache.commons.logging.impl.Jdk14Logger 
(assert (not (= var523 null-var3850)))
(declare-const var2705 var336) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var2705 null-var336)))
(declare-const var507 var3910) ; Statement: r3 := @parameter1: java.lang.Throwable 
(assert (not (= var507 null-var3910)))
(define-const var1598 var3722 var3722-INFO) ; Statement: $r2 = <java.util.logging.Level: java.util.logging.Level INFO> 
(define-const var2515 String (String_valueOf/-333372740 var2705)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (log/-2053243914 var523 var1598 var2515 var507)) ; Statement: virtualinvoke r0.<org.apache.commons.logging.impl.Jdk14Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r4, r3) 

(declare-const var523!1 var3850)
(declare-const var1598!1 var3722)
(declare-const var2515!1 String)
(declare-const var507!1 var3910)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), log/-2053243914=([org.apache.commons.logging.impl.Jdk14Logger, java.util.logging.Level, java.lang.String, java.lang.Throwable], void)}
; {var3850=org.apache.commons.logging.impl.Jdk14Logger, var523=r0, var336=java.lang.Object, var2705=r1, var3910=java.lang.Throwable, var507=r3, var3722=java.util.logging.Level, var1598=$r2, var2515=$r4}
; {org.apache.commons.logging.impl.Jdk14Logger=var3850, r0=var523, java.lang.Object=var336, r1=var2705, java.lang.Throwable=var3910, r3=var507, java.util.logging.Level=var3722, $r2=var1598, $r4=var2515}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Jdk14Logger;	r1 := @parameter0: java.lang.Object;	r3 := @parameter1: java.lang.Throwable;	$r2 = <java.util.logging.Level: java.util.logging.Level INFO>;	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	virtualinvoke r0.<org.apache.commons.logging.impl.Jdk14Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r4, r3);	return
;block_num 1