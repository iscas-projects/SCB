(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2402 0)
(declare-sort var3321 0)
(declare-sort var2546 0)
(declare-sort var3345 0)
(declare-sort var3719 0)
(declare-sort var1553 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun logger/-1834586017 (var2402) var3345)
(declare-fun var1553_access$000/1228673548 () var3719)
(declare-fun String_valueOf/-333372740 (var3321) String)
(declare-fun var3345_warn/2124317210 (var3345 var3719 String var2546) void)
(declare-const null-var2402 var2402)
(declare-const null-var3321 var3321)
(declare-const null-var2546 var2546)
(declare-const var2838 var2402) ; Statement: r0 := @this: org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog 
(assert (not (= var2838 null-var2402)))
(declare-const var2980 var3321) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var2980 null-var3321)))
(declare-const var3013 var2546) ; Statement: r3 := @parameter1: java.lang.Throwable 
(assert (not (= var3013 null-var2546)))
(define-const var2354 var3345 (logger/-1834586017 var2838)) ; Statement: $r1 = r0.<org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog: org.slf4j.Logger logger> 
(define-const var157 var3719 var1553_access$000/1228673548) ; Statement: $r5 = staticinvoke <org.apache.commons.logging.impl.Slf4jLogFactory: org.slf4j.Marker access$000()>() 
(define-const var58 String (String_valueOf/-333372740 var2980)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2) 
;(assert (var3345_warn/2124317210 var2354 var157 var58 var3013)) ; Statement: interfaceinvoke $r1.<org.slf4j.Logger: void warn(org.slf4j.Marker,java.lang.String,java.lang.Throwable)>($r5, $r4, r3) 

(declare-const var2354!1 var3345)
(declare-const var157!1 var3719)
(declare-const var58!1 String)
(declare-const var3013!1 var2546)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {logger/-1834586017=([org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog], org.slf4j.Logger), var1553_access$000/1228673548=([], org.slf4j.Marker), String_valueOf/-333372740=([java.lang.Object], java.lang.String), var3345_warn/2124317210=([org.slf4j.Logger, org.slf4j.Marker, java.lang.String, java.lang.Throwable], void)}
; {var2402=org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog, var2838=r0, var3321=java.lang.Object, var2980=r2, var2546=java.lang.Throwable, var3013=r3, var3345=org.slf4j.Logger, var2354=$r1, var3719=org.slf4j.Marker, var1553=org.apache.commons.logging.impl.Slf4jLogFactory, var157=$r5, var58=$r4}
; {org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog=var2402, r0=var2838, java.lang.Object=var3321, r2=var2980, java.lang.Throwable=var2546, r3=var3013, org.slf4j.Logger=var3345, $r1=var2354, org.slf4j.Marker=var3719, org.apache.commons.logging.impl.Slf4jLogFactory=var1553, $r5=var157, $r4=var58}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog;	r2 := @parameter0: java.lang.Object;	r3 := @parameter1: java.lang.Throwable;	$r1 = r0.<org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog: org.slf4j.Logger logger>;	$r5 = staticinvoke <org.apache.commons.logging.impl.Slf4jLogFactory: org.slf4j.Marker access$000()>();	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2);	interfaceinvoke $r1.<org.slf4j.Logger: void warn(org.slf4j.Marker,java.lang.String,java.lang.Throwable)>($r5, $r4, r3);	return
;block_num 1