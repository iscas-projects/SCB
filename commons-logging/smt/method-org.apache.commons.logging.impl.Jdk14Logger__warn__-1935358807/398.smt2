(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1721 0)
(declare-sort var549 0)
(declare-sort var2590 0)
(declare-sort var1411 0)
(declare-sort var3925 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var549) String)
(declare-fun log/-2053243914 (var1721 var2590 String var1411) void)
(declare-const null-var1721 var1721)
(declare-const null-var549 var549)
(declare-const var2590-WARNING var2590)
(declare-const null-NullType var3925)
(declare-const null-var1411 var1411)
(declare-const var1881 var1721) ; Statement: r0 := @this: org.apache.commons.logging.impl.Jdk14Logger 
(assert (not (= var1881 null-var1721)))
(declare-const var2571 var549) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var2571 null-var549)))
(define-const var1079 var2590 var2590-WARNING) ; Statement: $r2 = <java.util.logging.Level: java.util.logging.Level WARNING> 
(define-const var2851 String (String_valueOf/-333372740 var2571)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (log/-2053243914 var1881 var1079 var2851 null-var1411)) ; Statement: virtualinvoke r0.<org.apache.commons.logging.impl.Jdk14Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r3, null) 

(declare-const var1881!1 var1721)
(declare-const var1079!1 var2590)
(declare-const var2851!1 String)
(declare-const var1751 var3925)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), log/-2053243914=([org.apache.commons.logging.impl.Jdk14Logger, java.util.logging.Level, java.lang.String, java.lang.Throwable], void)}
; {var1721=org.apache.commons.logging.impl.Jdk14Logger, var1881=r0, var549=java.lang.Object, var2571=r1, var2590=java.util.logging.Level, var1079=$r2, var2851=$r3, var1411=java.lang.Throwable, var1751=null, var3925=null_type}
; {org.apache.commons.logging.impl.Jdk14Logger=var1721, r0=var1881, java.lang.Object=var549, r1=var2571, java.util.logging.Level=var2590, $r2=var1079, $r3=var2851, java.lang.Throwable=var1411, null=var1751, null_type=var3925}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Jdk14Logger;	r1 := @parameter0: java.lang.Object;	$r2 = <java.util.logging.Level: java.util.logging.Level WARNING>;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	virtualinvoke r0.<org.apache.commons.logging.impl.Jdk14Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r3, null);	return
;block_num 1