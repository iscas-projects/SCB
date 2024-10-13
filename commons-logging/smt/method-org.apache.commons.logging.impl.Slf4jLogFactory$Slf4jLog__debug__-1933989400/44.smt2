(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var952 0)
(declare-sort var3164 0)
(declare-sort var3749 0)
(declare-sort var409 0)
(declare-sort var1974 0)
(declare-sort var790 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun logger/-1834586017 (var952) var409)
(declare-fun var790_access$000/1228673548 () var1974)
(declare-fun String_valueOf/-333372740 (var3164) String)
(declare-fun var409_debug/1671179837 (var409 var1974 String var3749) void)
(declare-const null-var952 var952)
(declare-const null-var3164 var3164)
(declare-const null-var3749 var3749)
(declare-const var2391 var952) ; Statement: r0 := @this: org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog 
(assert (not (= var2391 null-var952)))
(declare-const var2640 var3164) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var2640 null-var3164)))
(declare-const var2823 var3749) ; Statement: r3 := @parameter1: java.lang.Throwable 
(assert (not (= var2823 null-var3749)))
(define-const var76 var409 (logger/-1834586017 var2391)) ; Statement: $r1 = r0.<org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog: org.slf4j.Logger logger> 
(define-const var3641 var1974 var790_access$000/1228673548) ; Statement: $r5 = staticinvoke <org.apache.commons.logging.impl.Slf4jLogFactory: org.slf4j.Marker access$000()>() 
(define-const var214 String (String_valueOf/-333372740 var2640)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2) 
;(assert (var409_debug/1671179837 var76 var3641 var214 var2823)) ; Statement: interfaceinvoke $r1.<org.slf4j.Logger: void debug(org.slf4j.Marker,java.lang.String,java.lang.Throwable)>($r5, $r4, r3) 

(declare-const var76!1 var409)
(declare-const var3641!1 var1974)
(declare-const var214!1 String)
(declare-const var2823!1 var3749)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {logger/-1834586017=([org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog], org.slf4j.Logger), var790_access$000/1228673548=([], org.slf4j.Marker), String_valueOf/-333372740=([java.lang.Object], java.lang.String), var409_debug/1671179837=([org.slf4j.Logger, org.slf4j.Marker, java.lang.String, java.lang.Throwable], void)}
; {var952=org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog, var2391=r0, var3164=java.lang.Object, var2640=r2, var3749=java.lang.Throwable, var2823=r3, var409=org.slf4j.Logger, var76=$r1, var1974=org.slf4j.Marker, var790=org.apache.commons.logging.impl.Slf4jLogFactory, var3641=$r5, var214=$r4}
; {org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog=var952, r0=var2391, java.lang.Object=var3164, r2=var2640, java.lang.Throwable=var3749, r3=var2823, org.slf4j.Logger=var409, $r1=var76, org.slf4j.Marker=var1974, org.apache.commons.logging.impl.Slf4jLogFactory=var790, $r5=var3641, $r4=var214}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog;	r2 := @parameter0: java.lang.Object;	r3 := @parameter1: java.lang.Throwable;	$r1 = r0.<org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog: org.slf4j.Logger logger>;	$r5 = staticinvoke <org.apache.commons.logging.impl.Slf4jLogFactory: org.slf4j.Marker access$000()>();	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2);	interfaceinvoke $r1.<org.slf4j.Logger: void debug(org.slf4j.Marker,java.lang.String,java.lang.Throwable)>($r5, $r4, r3);	return
;block_num 1