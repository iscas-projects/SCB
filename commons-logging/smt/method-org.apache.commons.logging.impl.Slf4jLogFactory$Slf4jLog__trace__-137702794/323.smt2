(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1590 0)
(declare-sort var2194 0)
(declare-sort var618 0)
(declare-sort var3616 0)
(declare-sort var2585 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun logger/-1834586017 (var1590) var618)
(declare-fun var2585_access$000/1228673548 () var3616)
(declare-fun String_valueOf/-333372740 (var2194) String)
(declare-fun var618_trace/1130254703 (var618 var3616 String) void)
(declare-const null-var1590 var1590)
(declare-const null-var2194 var2194)
(declare-const var828 var1590) ; Statement: r0 := @this: org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog 
(assert (not (= var828 null-var1590)))
(declare-const var1558 var2194) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var1558 null-var2194)))
(define-const var868 var618 (logger/-1834586017 var828)) ; Statement: $r1 = r0.<org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog: org.slf4j.Logger logger> 
(define-const var2177 var3616 var2585_access$000/1228673548) ; Statement: $r4 = staticinvoke <org.apache.commons.logging.impl.Slf4jLogFactory: org.slf4j.Marker access$000()>() 
(define-const var1320 String (String_valueOf/-333372740 var1558)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2) 
;(assert (var618_trace/1130254703 var868 var2177 var1320)) ; Statement: interfaceinvoke $r1.<org.slf4j.Logger: void trace(org.slf4j.Marker,java.lang.String)>($r4, $r3) 

(declare-const var868!1 var618)
(declare-const var2177!1 var3616)
(declare-const var1320!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {logger/-1834586017=([org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog], org.slf4j.Logger), var2585_access$000/1228673548=([], org.slf4j.Marker), String_valueOf/-333372740=([java.lang.Object], java.lang.String), var618_trace/1130254703=([org.slf4j.Logger, org.slf4j.Marker, java.lang.String], void)}
; {var1590=org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog, var828=r0, var2194=java.lang.Object, var1558=r2, var618=org.slf4j.Logger, var868=$r1, var3616=org.slf4j.Marker, var2585=org.apache.commons.logging.impl.Slf4jLogFactory, var2177=$r4, var1320=$r3}
; {org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog=var1590, r0=var828, java.lang.Object=var2194, r2=var1558, org.slf4j.Logger=var618, $r1=var868, org.slf4j.Marker=var3616, org.apache.commons.logging.impl.Slf4jLogFactory=var2585, $r4=var2177, $r3=var1320}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog;	r2 := @parameter0: java.lang.Object;	$r1 = r0.<org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog: org.slf4j.Logger logger>;	$r4 = staticinvoke <org.apache.commons.logging.impl.Slf4jLogFactory: org.slf4j.Marker access$000()>();	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2);	interfaceinvoke $r1.<org.slf4j.Logger: void trace(org.slf4j.Marker,java.lang.String)>($r4, $r3);	return
;block_num 1