(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2199 0)
(declare-sort var1260 0)
(declare-sort var1592 0)
(declare-sort var638 0)
(declare-sort var1306 0)
(declare-sort var3979 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun logger/-1834586017 (var2199) var638)
(declare-fun var3979_access$000/1228673548 () var1306)
(declare-fun String_valueOf/-333372740 (var1260) String)
(declare-fun var638_debug/1671179837 (var638 var1306 String var1592) void)
(declare-const null-var2199 var2199)
(declare-const null-var1260 var1260)
(declare-const null-var1592 var1592)
(declare-const var2917 var2199) ; Statement: r0 := @this: org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog 
(assert (not (= var2917 null-var2199)))
(declare-const var1539 var1260) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var1539 null-var1260)))
(declare-const var489 var1592) ; Statement: r3 := @parameter1: java.lang.Throwable 
(assert (not (= var489 null-var1592)))
(define-const var426 var638 (logger/-1834586017 var2917)) ; Statement: $r1 = r0.<org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog: org.slf4j.Logger logger> 
(define-const var3467 var1306 var3979_access$000/1228673548) ; Statement: $r5 = staticinvoke <org.apache.commons.logging.impl.Slf4jLogFactory: org.slf4j.Marker access$000()>() 
(define-const var3982 String (String_valueOf/-333372740 var1539)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2) 
;(assert (var638_debug/1671179837 var426 var3467 var3982 var489)) ; Statement: interfaceinvoke $r1.<org.slf4j.Logger: void debug(org.slf4j.Marker,java.lang.String,java.lang.Throwable)>($r5, $r4, r3) 

(declare-const var426!1 var638)
(declare-const var3467!1 var1306)
(declare-const var3982!1 String)
(declare-const var489!1 var1592)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {logger/-1834586017=([org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog], org.slf4j.Logger), var3979_access$000/1228673548=([], org.slf4j.Marker), String_valueOf/-333372740=([java.lang.Object], java.lang.String), var638_debug/1671179837=([org.slf4j.Logger, org.slf4j.Marker, java.lang.String, java.lang.Throwable], void)}
; {var2199=org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog, var2917=r0, var1260=java.lang.Object, var1539=r2, var1592=java.lang.Throwable, var489=r3, var638=org.slf4j.Logger, var426=$r1, var1306=org.slf4j.Marker, var3979=org.apache.commons.logging.impl.Slf4jLogFactory, var3467=$r5, var3982=$r4}
; {org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog=var2199, r0=var2917, java.lang.Object=var1260, r2=var1539, java.lang.Throwable=var1592, r3=var489, org.slf4j.Logger=var638, $r1=var426, org.slf4j.Marker=var1306, org.apache.commons.logging.impl.Slf4jLogFactory=var3979, $r5=var3467, $r4=var3982}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog;	r2 := @parameter0: java.lang.Object;	r3 := @parameter1: java.lang.Throwable;	$r1 = r0.<org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog: org.slf4j.Logger logger>;	$r5 = staticinvoke <org.apache.commons.logging.impl.Slf4jLogFactory: org.slf4j.Marker access$000()>();	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2);	interfaceinvoke $r1.<org.slf4j.Logger: void debug(org.slf4j.Marker,java.lang.String,java.lang.Throwable)>($r5, $r4, r3);	return
;block_num 1