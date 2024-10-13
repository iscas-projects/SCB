(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var657 0)
(declare-sort var919 0)
(declare-sort var1025 0)
(declare-sort var985 0)
(declare-sort var3954 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun logger/-1834586017 (var657) var1025)
(declare-fun var3954_access$000/1228673548 () var985)
(declare-fun String_valueOf/-333372740 (var919) String)
(declare-fun var1025_warn/1029778394 (var1025 var985 String) void)
(declare-const null-var657 var657)
(declare-const null-var919 var919)
(declare-const var2248 var657) ; Statement: r0 := @this: org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog 
(assert (not (= var2248 null-var657)))
(declare-const var1516 var919) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var1516 null-var919)))
(define-const var3343 var1025 (logger/-1834586017 var2248)) ; Statement: $r1 = r0.<org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog: org.slf4j.Logger logger> 
(define-const var3363 var985 var3954_access$000/1228673548) ; Statement: $r4 = staticinvoke <org.apache.commons.logging.impl.Slf4jLogFactory: org.slf4j.Marker access$000()>() 
(define-const var677 String (String_valueOf/-333372740 var1516)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2) 
;(assert (var1025_warn/1029778394 var3343 var3363 var677)) ; Statement: interfaceinvoke $r1.<org.slf4j.Logger: void warn(org.slf4j.Marker,java.lang.String)>($r4, $r3) 

(declare-const var3343!1 var1025)
(declare-const var3363!1 var985)
(declare-const var677!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {logger/-1834586017=([org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog], org.slf4j.Logger), var3954_access$000/1228673548=([], org.slf4j.Marker), String_valueOf/-333372740=([java.lang.Object], java.lang.String), var1025_warn/1029778394=([org.slf4j.Logger, org.slf4j.Marker, java.lang.String], void)}
; {var657=org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog, var2248=r0, var919=java.lang.Object, var1516=r2, var1025=org.slf4j.Logger, var3343=$r1, var985=org.slf4j.Marker, var3954=org.apache.commons.logging.impl.Slf4jLogFactory, var3363=$r4, var677=$r3}
; {org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog=var657, r0=var2248, java.lang.Object=var919, r2=var1516, org.slf4j.Logger=var1025, $r1=var3343, org.slf4j.Marker=var985, org.apache.commons.logging.impl.Slf4jLogFactory=var3954, $r4=var3363, $r3=var677}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog;	r2 := @parameter0: java.lang.Object;	$r1 = r0.<org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog: org.slf4j.Logger logger>;	$r4 = staticinvoke <org.apache.commons.logging.impl.Slf4jLogFactory: org.slf4j.Marker access$000()>();	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2);	interfaceinvoke $r1.<org.slf4j.Logger: void warn(org.slf4j.Marker,java.lang.String)>($r4, $r3);	return
;block_num 1