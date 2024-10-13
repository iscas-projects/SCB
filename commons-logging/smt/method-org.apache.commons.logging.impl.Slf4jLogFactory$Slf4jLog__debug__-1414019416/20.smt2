(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3402 0)
(declare-sort var3312 0)
(declare-sort var3960 0)
(declare-sort var2656 0)
(declare-sort var2367 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun logger/-1834586017 (var3402) var3960)
(declare-fun var2367_access$000/1228673548 () var2656)
(declare-fun String_valueOf/-333372740 (var3312) String)
(declare-fun var3960_debug/-722073731 (var3960 var2656 String) void)
(declare-const null-var3402 var3402)
(declare-const null-var3312 var3312)
(declare-const var2480 var3402) ; Statement: r0 := @this: org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog 
(assert (not (= var2480 null-var3402)))
(declare-const var3499 var3312) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var3499 null-var3312)))
(define-const var2321 var3960 (logger/-1834586017 var2480)) ; Statement: $r1 = r0.<org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog: org.slf4j.Logger logger> 
(define-const var3991 var2656 var2367_access$000/1228673548) ; Statement: $r4 = staticinvoke <org.apache.commons.logging.impl.Slf4jLogFactory: org.slf4j.Marker access$000()>() 
(define-const var1058 String (String_valueOf/-333372740 var3499)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2) 
;(assert (var3960_debug/-722073731 var2321 var3991 var1058)) ; Statement: interfaceinvoke $r1.<org.slf4j.Logger: void debug(org.slf4j.Marker,java.lang.String)>($r4, $r3) 

(declare-const var2321!1 var3960)
(declare-const var3991!1 var2656)
(declare-const var1058!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {logger/-1834586017=([org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog], org.slf4j.Logger), var2367_access$000/1228673548=([], org.slf4j.Marker), String_valueOf/-333372740=([java.lang.Object], java.lang.String), var3960_debug/-722073731=([org.slf4j.Logger, org.slf4j.Marker, java.lang.String], void)}
; {var3402=org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog, var2480=r0, var3312=java.lang.Object, var3499=r2, var3960=org.slf4j.Logger, var2321=$r1, var2656=org.slf4j.Marker, var2367=org.apache.commons.logging.impl.Slf4jLogFactory, var3991=$r4, var1058=$r3}
; {org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog=var3402, r0=var2480, java.lang.Object=var3312, r2=var3499, org.slf4j.Logger=var3960, $r1=var2321, org.slf4j.Marker=var2656, org.apache.commons.logging.impl.Slf4jLogFactory=var2367, $r4=var3991, $r3=var1058}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog;	r2 := @parameter0: java.lang.Object;	$r1 = r0.<org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog: org.slf4j.Logger logger>;	$r4 = staticinvoke <org.apache.commons.logging.impl.Slf4jLogFactory: org.slf4j.Marker access$000()>();	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2);	interfaceinvoke $r1.<org.slf4j.Logger: void debug(org.slf4j.Marker,java.lang.String)>($r4, $r3);	return
;block_num 1