(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2360 0)
(declare-sort var3035 0)
(declare-sort var2073 0)
(declare-sort var3398 0)
(declare-sort var1211 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var3035) String)
(declare-fun log/-2053243914 (var2360 var2073 String var3398) void)
(declare-const null-var2360 var2360)
(declare-const null-var3035 var3035)
(declare-const var2073-SEVERE var2073)
(declare-const null-NullType var1211)
(declare-const null-var3398 var3398)
(declare-const var1272 var2360) ; Statement: r0 := @this: org.apache.commons.logging.impl.Jdk14Logger 
(assert (not (= var1272 null-var2360)))
(declare-const var2649 var3035) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var2649 null-var3035)))
(define-const var3728 var2073 var2073-SEVERE) ; Statement: $r2 = <java.util.logging.Level: java.util.logging.Level SEVERE> 
(define-const var1772 String (String_valueOf/-333372740 var2649)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (log/-2053243914 var1272 var3728 var1772 null-var3398)) ; Statement: virtualinvoke r0.<org.apache.commons.logging.impl.Jdk14Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r3, null) 

(declare-const var1272!1 var2360)
(declare-const var3728!1 var2073)
(declare-const var1772!1 String)
(declare-const var2220 var1211)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), log/-2053243914=([org.apache.commons.logging.impl.Jdk14Logger, java.util.logging.Level, java.lang.String, java.lang.Throwable], void)}
; {var2360=org.apache.commons.logging.impl.Jdk14Logger, var1272=r0, var3035=java.lang.Object, var2649=r1, var2073=java.util.logging.Level, var3728=$r2, var1772=$r3, var3398=java.lang.Throwable, var2220=null, var1211=null_type}
; {org.apache.commons.logging.impl.Jdk14Logger=var2360, r0=var1272, java.lang.Object=var3035, r1=var2649, java.util.logging.Level=var2073, $r2=var3728, $r3=var1772, java.lang.Throwable=var3398, null=var2220, null_type=var1211}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Jdk14Logger;	r1 := @parameter0: java.lang.Object;	$r2 = <java.util.logging.Level: java.util.logging.Level SEVERE>;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	virtualinvoke r0.<org.apache.commons.logging.impl.Jdk14Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r3, null);	return
;block_num 1