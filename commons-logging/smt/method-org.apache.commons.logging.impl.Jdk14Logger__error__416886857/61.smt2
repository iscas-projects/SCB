(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2224 0)
(declare-sort var1609 0)
(declare-sort var3109 0)
(declare-sort var1298 0)
(declare-sort var3580 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var1609) String)
(declare-fun log/-2053243914 (var2224 var3109 String var1298) void)
(declare-const null-var2224 var2224)
(declare-const null-var1609 var1609)
(declare-const var3109-SEVERE var3109)
(declare-const null-NullType var3580)
(declare-const null-var1298 var1298)
(declare-const var607 var2224) ; Statement: r0 := @this: org.apache.commons.logging.impl.Jdk14Logger 
(assert (not (= var607 null-var2224)))
(declare-const var676 var1609) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var676 null-var1609)))
(define-const var2695 var3109 var3109-SEVERE) ; Statement: $r2 = <java.util.logging.Level: java.util.logging.Level SEVERE> 
(define-const var1921 String (String_valueOf/-333372740 var676)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (log/-2053243914 var607 var2695 var1921 null-var1298)) ; Statement: virtualinvoke r0.<org.apache.commons.logging.impl.Jdk14Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r3, null) 

(declare-const var607!1 var2224)
(declare-const var2695!1 var3109)
(declare-const var1921!1 String)
(declare-const var1772 var3580)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), log/-2053243914=([org.apache.commons.logging.impl.Jdk14Logger, java.util.logging.Level, java.lang.String, java.lang.Throwable], void)}
; {var2224=org.apache.commons.logging.impl.Jdk14Logger, var607=r0, var1609=java.lang.Object, var676=r1, var3109=java.util.logging.Level, var2695=$r2, var1921=$r3, var1298=java.lang.Throwable, var1772=null, var3580=null_type}
; {org.apache.commons.logging.impl.Jdk14Logger=var2224, r0=var607, java.lang.Object=var1609, r1=var676, java.util.logging.Level=var3109, $r2=var2695, $r3=var1921, java.lang.Throwable=var1298, null=var1772, null_type=var3580}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Jdk14Logger;	r1 := @parameter0: java.lang.Object;	$r2 = <java.util.logging.Level: java.util.logging.Level SEVERE>;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	virtualinvoke r0.<org.apache.commons.logging.impl.Jdk14Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r3, null);	return
;block_num 1