(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1052 0)
(declare-sort var3067 0)
(declare-sort var2512 0)
(declare-sort var3452 0)
(declare-sort var1073 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var3067) String)
(declare-fun log/-2053243914 (var1052 var2512 String var3452) void)
(declare-const null-var1052 var1052)
(declare-const null-var3067 var3067)
(declare-const var2512-FINE var2512)
(declare-const null-NullType var1073)
(declare-const null-var3452 var3452)
(declare-const var570 var1052) ; Statement: r0 := @this: org.apache.commons.logging.impl.Jdk14Logger 
(assert (not (= var570 null-var1052)))
(declare-const var588 var3067) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var588 null-var3067)))
(define-const var2327 var2512 var2512-FINE) ; Statement: $r2 = <java.util.logging.Level: java.util.logging.Level FINE> 
(define-const var3176 String (String_valueOf/-333372740 var588)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (log/-2053243914 var570 var2327 var3176 null-var3452)) ; Statement: virtualinvoke r0.<org.apache.commons.logging.impl.Jdk14Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r3, null) 

(declare-const var570!1 var1052)
(declare-const var2327!1 var2512)
(declare-const var3176!1 String)
(declare-const var353 var1073)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), log/-2053243914=([org.apache.commons.logging.impl.Jdk14Logger, java.util.logging.Level, java.lang.String, java.lang.Throwable], void)}
; {var1052=org.apache.commons.logging.impl.Jdk14Logger, var570=r0, var3067=java.lang.Object, var588=r1, var2512=java.util.logging.Level, var2327=$r2, var3176=$r3, var3452=java.lang.Throwable, var353=null, var1073=null_type}
; {org.apache.commons.logging.impl.Jdk14Logger=var1052, r0=var570, java.lang.Object=var3067, r1=var588, java.util.logging.Level=var2512, $r2=var2327, $r3=var3176, java.lang.Throwable=var3452, null=var353, null_type=var1073}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Jdk14Logger;	r1 := @parameter0: java.lang.Object;	$r2 = <java.util.logging.Level: java.util.logging.Level FINE>;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	virtualinvoke r0.<org.apache.commons.logging.impl.Jdk14Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r3, null);	return
;block_num 1