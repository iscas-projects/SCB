(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1174 0)
(declare-sort var2650 0)
(declare-sort var701 0)
(declare-sort var2405 0)
(declare-sort var3211 0)
(declare-sort var2033 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun logger/-276479584 (var1174) var2405)
(declare-fun var2033_access$000/1228673548 () var3211)
(declare-fun String_valueOf/-333372740 (var2650) String)
(declare-fun var2033_access$100/-1391000175 () (Array Int var2650))
(declare-fun var2405_log/-1527886426 (var2405 var3211 String Int String (Array Int var2650) var701) void)
(declare-const null-var1174 var1174)
(declare-const null-Int Int)
(declare-const null-var2650 var2650)
(declare-const null-var701 var701)
(declare-const var1174-FQCN String)
(declare-const var2679 var1174) ; Statement: r0 := @this: org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLocationAwareLog 
(assert (not (= var2679 null-var1174)))
(declare-const var2194 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2194 null-Int)))
(declare-const var3055 var2650) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var3055 null-var2650)))
(declare-const var1995 var701) ; Statement: r4 := @parameter2: java.lang.Throwable 
(assert (not (= var1995 null-var701)))
(define-const var3105 var2405 (logger/-276479584 var2679)) ; Statement: $r1 = r0.<org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLocationAwareLog: org.slf4j.spi.LocationAwareLogger logger> 
(define-const var3866 var3211 var2033_access$000/1228673548) ; Statement: $r7 = staticinvoke <org.apache.commons.logging.impl.Slf4jLogFactory: org.slf4j.Marker access$000()>() 
(define-const var2494 String var1174-FQCN) ; Statement: $r3 = <org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLocationAwareLog: java.lang.String FQCN> 
(define-const var3207 String (String_valueOf/-333372740 var3055)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2) 
(define-const var2392 (Array Int var2650) var2033_access$100/-1391000175) ; Statement: $r5 = staticinvoke <org.apache.commons.logging.impl.Slf4jLogFactory: java.lang.Object[] access$100()>() 
;(assert (var2405_log/-1527886426 var3105 var3866 var2494 var2194 var3207 var2392 var1995)) ; Statement: interfaceinvoke $r1.<org.slf4j.spi.LocationAwareLogger: void log(org.slf4j.Marker,java.lang.String,int,java.lang.String,java.lang.Object[],java.lang.Throwable)>($r7, $r3, i0, $r6, $r5, r4) 

(declare-const var3105!1 var2405)
(declare-const var3866!1 var3211)
(declare-const var2494!1 String)
(declare-const var2194!1 Int)
(declare-const var3207!1 String)
(declare-const var2392!1 (Array Int var2650))
(declare-const var1995!1 var701)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {logger/-276479584=([org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLocationAwareLog], org.slf4j.spi.LocationAwareLogger), var2033_access$000/1228673548=([], org.slf4j.Marker), String_valueOf/-333372740=([java.lang.Object], java.lang.String), var2033_access$100/-1391000175=([], java.lang.Object[]), var2405_log/-1527886426=([org.slf4j.spi.LocationAwareLogger, org.slf4j.Marker, java.lang.String, int, java.lang.String, java.lang.Object[], java.lang.Throwable], void)}
; {var1174=org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLocationAwareLog, var2679=r0, var2194=i0, var2650=java.lang.Object, var3055=r2, var701=java.lang.Throwable, var1995=r4, var2405=org.slf4j.spi.LocationAwareLogger, var3105=$r1, var3211=org.slf4j.Marker, var2033=org.apache.commons.logging.impl.Slf4jLogFactory, var3866=$r7, var2494=$r3, var3207=$r6, var2392=$r5}
; {org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLocationAwareLog=var1174, r0=var2679, i0=var2194, java.lang.Object=var2650, r2=var3055, java.lang.Throwable=var701, r4=var1995, org.slf4j.spi.LocationAwareLogger=var2405, $r1=var3105, org.slf4j.Marker=var3211, org.apache.commons.logging.impl.Slf4jLogFactory=var2033, $r7=var3866, $r3=var2494, $r6=var3207, $r5=var2392}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLocationAwareLog;	i0 := @parameter0: int;	r2 := @parameter1: java.lang.Object;	r4 := @parameter2: java.lang.Throwable;	$r1 = r0.<org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLocationAwareLog: org.slf4j.spi.LocationAwareLogger logger>;	$r7 = staticinvoke <org.apache.commons.logging.impl.Slf4jLogFactory: org.slf4j.Marker access$000()>();	$r3 = <org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLocationAwareLog: java.lang.String FQCN>;	$r6 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2);	$r5 = staticinvoke <org.apache.commons.logging.impl.Slf4jLogFactory: java.lang.Object[] access$100()>();	interfaceinvoke $r1.<org.slf4j.spi.LocationAwareLogger: void log(org.slf4j.Marker,java.lang.String,int,java.lang.String,java.lang.Object[],java.lang.Throwable)>($r7, $r3, i0, $r6, $r5, r4);	return
;block_num 1