(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var928 0)
(declare-sort var1498 0)
(declare-sort var3351 0)
(declare-sort var466 0)
(declare-sort var2702 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun logger/-1834586017 (var928) var3351)
(declare-fun var2702_access$000/1228673548 () var466)
(declare-fun String_valueOf/-333372740 (var1498) String)
(declare-fun var3351_error/-294564686 (var3351 var466 String) void)
(declare-const null-var928 var928)
(declare-const null-var1498 var1498)
(declare-const var3935 var928) ; Statement: r0 := @this: org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog 
(assert (not (= var3935 null-var928)))
(declare-const var3081 var1498) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var3081 null-var1498)))
(define-const var1562 var3351 (logger/-1834586017 var3935)) ; Statement: $r1 = r0.<org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog: org.slf4j.Logger logger> 
(define-const var1665 var466 var2702_access$000/1228673548) ; Statement: $r4 = staticinvoke <org.apache.commons.logging.impl.Slf4jLogFactory: org.slf4j.Marker access$000()>() 
(define-const var2567 String (String_valueOf/-333372740 var3081)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2) 
;(assert (var3351_error/-294564686 var1562 var1665 var2567)) ; Statement: interfaceinvoke $r1.<org.slf4j.Logger: void error(org.slf4j.Marker,java.lang.String)>($r4, $r3) 

(declare-const var1562!1 var3351)
(declare-const var1665!1 var466)
(declare-const var2567!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {logger/-1834586017=([org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog], org.slf4j.Logger), var2702_access$000/1228673548=([], org.slf4j.Marker), String_valueOf/-333372740=([java.lang.Object], java.lang.String), var3351_error/-294564686=([org.slf4j.Logger, org.slf4j.Marker, java.lang.String], void)}
; {var928=org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog, var3935=r0, var1498=java.lang.Object, var3081=r2, var3351=org.slf4j.Logger, var1562=$r1, var466=org.slf4j.Marker, var2702=org.apache.commons.logging.impl.Slf4jLogFactory, var1665=$r4, var2567=$r3}
; {org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog=var928, r0=var3935, java.lang.Object=var1498, r2=var3081, org.slf4j.Logger=var3351, $r1=var1562, org.slf4j.Marker=var466, org.apache.commons.logging.impl.Slf4jLogFactory=var2702, $r4=var1665, $r3=var2567}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog;	r2 := @parameter0: java.lang.Object;	$r1 = r0.<org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog: org.slf4j.Logger logger>;	$r4 = staticinvoke <org.apache.commons.logging.impl.Slf4jLogFactory: org.slf4j.Marker access$000()>();	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2);	interfaceinvoke $r1.<org.slf4j.Logger: void error(org.slf4j.Marker,java.lang.String)>($r4, $r3);	return
;block_num 1