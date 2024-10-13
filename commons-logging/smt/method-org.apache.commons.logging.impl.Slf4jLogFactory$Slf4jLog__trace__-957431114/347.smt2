(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2394 0)
(declare-sort var3807 0)
(declare-sort var3975 0)
(declare-sort var1012 0)
(declare-sort var123 0)
(declare-sort var591 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun logger/-1834586017 (var2394) var1012)
(declare-fun var591_access$000/1228673548 () var123)
(declare-fun String_valueOf/-333372740 (var3807) String)
(declare-fun var1012_trace/345901871 (var1012 var123 String var3975) void)
(declare-const null-var2394 var2394)
(declare-const null-var3807 var3807)
(declare-const null-var3975 var3975)
(declare-const var1920 var2394) ; Statement: r0 := @this: org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog 
(assert (not (= var1920 null-var2394)))
(declare-const var58 var3807) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var58 null-var3807)))
(declare-const var1656 var3975) ; Statement: r3 := @parameter1: java.lang.Throwable 
(assert (not (= var1656 null-var3975)))
(define-const var3959 var1012 (logger/-1834586017 var1920)) ; Statement: $r1 = r0.<org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog: org.slf4j.Logger logger> 
(define-const var1798 var123 var591_access$000/1228673548) ; Statement: $r5 = staticinvoke <org.apache.commons.logging.impl.Slf4jLogFactory: org.slf4j.Marker access$000()>() 
(define-const var962 String (String_valueOf/-333372740 var58)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2) 
;(assert (var1012_trace/345901871 var3959 var1798 var962 var1656)) ; Statement: interfaceinvoke $r1.<org.slf4j.Logger: void trace(org.slf4j.Marker,java.lang.String,java.lang.Throwable)>($r5, $r4, r3) 

(declare-const var3959!1 var1012)
(declare-const var1798!1 var123)
(declare-const var962!1 String)
(declare-const var1656!1 var3975)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {logger/-1834586017=([org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog], org.slf4j.Logger), var591_access$000/1228673548=([], org.slf4j.Marker), String_valueOf/-333372740=([java.lang.Object], java.lang.String), var1012_trace/345901871=([org.slf4j.Logger, org.slf4j.Marker, java.lang.String, java.lang.Throwable], void)}
; {var2394=org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog, var1920=r0, var3807=java.lang.Object, var58=r2, var3975=java.lang.Throwable, var1656=r3, var1012=org.slf4j.Logger, var3959=$r1, var123=org.slf4j.Marker, var591=org.apache.commons.logging.impl.Slf4jLogFactory, var1798=$r5, var962=$r4}
; {org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog=var2394, r0=var1920, java.lang.Object=var3807, r2=var58, java.lang.Throwable=var3975, r3=var1656, org.slf4j.Logger=var1012, $r1=var3959, org.slf4j.Marker=var123, org.apache.commons.logging.impl.Slf4jLogFactory=var591, $r5=var1798, $r4=var962}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog;	r2 := @parameter0: java.lang.Object;	r3 := @parameter1: java.lang.Throwable;	$r1 = r0.<org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog: org.slf4j.Logger logger>;	$r5 = staticinvoke <org.apache.commons.logging.impl.Slf4jLogFactory: org.slf4j.Marker access$000()>();	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2);	interfaceinvoke $r1.<org.slf4j.Logger: void trace(org.slf4j.Marker,java.lang.String,java.lang.Throwable)>($r5, $r4, r3);	return
;block_num 1