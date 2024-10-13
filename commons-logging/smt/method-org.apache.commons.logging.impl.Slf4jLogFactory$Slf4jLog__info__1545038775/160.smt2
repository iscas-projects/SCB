(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2589 0)
(declare-sort var2579 0)
(declare-sort var1006 0)
(declare-sort var130 0)
(declare-sort var897 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun logger/-1834586017 (var2589) var1006)
(declare-fun var897_access$000/1228673548 () var130)
(declare-fun String_valueOf/-333372740 (var2579) String)
(declare-fun var1006_info/848497154 (var1006 var130 String) void)
(declare-const null-var2589 var2589)
(declare-const null-var2579 var2579)
(declare-const var3694 var2589) ; Statement: r0 := @this: org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog 
(assert (not (= var3694 null-var2589)))
(declare-const var944 var2579) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var944 null-var2579)))
(define-const var2001 var1006 (logger/-1834586017 var3694)) ; Statement: $r1 = r0.<org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog: org.slf4j.Logger logger> 
(define-const var2498 var130 var897_access$000/1228673548) ; Statement: $r4 = staticinvoke <org.apache.commons.logging.impl.Slf4jLogFactory: org.slf4j.Marker access$000()>() 
(define-const var1405 String (String_valueOf/-333372740 var944)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2) 
;(assert (var1006_info/848497154 var2001 var2498 var1405)) ; Statement: interfaceinvoke $r1.<org.slf4j.Logger: void info(org.slf4j.Marker,java.lang.String)>($r4, $r3) 

(declare-const var2001!1 var1006)
(declare-const var2498!1 var130)
(declare-const var1405!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {logger/-1834586017=([org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog], org.slf4j.Logger), var897_access$000/1228673548=([], org.slf4j.Marker), String_valueOf/-333372740=([java.lang.Object], java.lang.String), var1006_info/848497154=([org.slf4j.Logger, org.slf4j.Marker, java.lang.String], void)}
; {var2589=org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog, var3694=r0, var2579=java.lang.Object, var944=r2, var1006=org.slf4j.Logger, var2001=$r1, var130=org.slf4j.Marker, var897=org.apache.commons.logging.impl.Slf4jLogFactory, var2498=$r4, var1405=$r3}
; {org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog=var2589, r0=var3694, java.lang.Object=var2579, r2=var944, org.slf4j.Logger=var1006, $r1=var2001, org.slf4j.Marker=var130, org.apache.commons.logging.impl.Slf4jLogFactory=var897, $r4=var2498, $r3=var1405}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog;	r2 := @parameter0: java.lang.Object;	$r1 = r0.<org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog: org.slf4j.Logger logger>;	$r4 = staticinvoke <org.apache.commons.logging.impl.Slf4jLogFactory: org.slf4j.Marker access$000()>();	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2);	interfaceinvoke $r1.<org.slf4j.Logger: void info(org.slf4j.Marker,java.lang.String)>($r4, $r3);	return
;block_num 1