(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2960 0)
(declare-sort var2690 0)
(declare-sort var802 0)
(declare-sort var548 0)
(declare-sort var894 0)
(declare-sort var1914 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun logger/-1834586017 (var2960) var548)
(declare-fun var1914_access$000/1228673548 () var894)
(declare-fun String_valueOf/-333372740 (var2690) String)
(declare-fun var548_info/-1910784958 (var548 var894 String var802) void)
(declare-const null-var2960 var2960)
(declare-const null-var2690 var2690)
(declare-const null-var802 var802)
(declare-const var401 var2960) ; Statement: r0 := @this: org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog 
(assert (not (= var401 null-var2960)))
(declare-const var3909 var2690) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var3909 null-var2690)))
(declare-const var3209 var802) ; Statement: r3 := @parameter1: java.lang.Throwable 
(assert (not (= var3209 null-var802)))
(define-const var3696 var548 (logger/-1834586017 var401)) ; Statement: $r1 = r0.<org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog: org.slf4j.Logger logger> 
(define-const var2168 var894 var1914_access$000/1228673548) ; Statement: $r5 = staticinvoke <org.apache.commons.logging.impl.Slf4jLogFactory: org.slf4j.Marker access$000()>() 
(define-const var3514 String (String_valueOf/-333372740 var3909)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2) 
;(assert (var548_info/-1910784958 var3696 var2168 var3514 var3209)) ; Statement: interfaceinvoke $r1.<org.slf4j.Logger: void info(org.slf4j.Marker,java.lang.String,java.lang.Throwable)>($r5, $r4, r3) 

(declare-const var3696!1 var548)
(declare-const var2168!1 var894)
(declare-const var3514!1 String)
(declare-const var3209!1 var802)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {logger/-1834586017=([org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog], org.slf4j.Logger), var1914_access$000/1228673548=([], org.slf4j.Marker), String_valueOf/-333372740=([java.lang.Object], java.lang.String), var548_info/-1910784958=([org.slf4j.Logger, org.slf4j.Marker, java.lang.String, java.lang.Throwable], void)}
; {var2960=org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog, var401=r0, var2690=java.lang.Object, var3909=r2, var802=java.lang.Throwable, var3209=r3, var548=org.slf4j.Logger, var3696=$r1, var894=org.slf4j.Marker, var1914=org.apache.commons.logging.impl.Slf4jLogFactory, var2168=$r5, var3514=$r4}
; {org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog=var2960, r0=var401, java.lang.Object=var2690, r2=var3909, java.lang.Throwable=var802, r3=var3209, org.slf4j.Logger=var548, $r1=var3696, org.slf4j.Marker=var894, org.apache.commons.logging.impl.Slf4jLogFactory=var1914, $r5=var2168, $r4=var3514}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog;	r2 := @parameter0: java.lang.Object;	r3 := @parameter1: java.lang.Throwable;	$r1 = r0.<org.apache.commons.logging.impl.Slf4jLogFactory$Slf4jLog: org.slf4j.Logger logger>;	$r5 = staticinvoke <org.apache.commons.logging.impl.Slf4jLogFactory: org.slf4j.Marker access$000()>();	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2);	interfaceinvoke $r1.<org.slf4j.Logger: void info(org.slf4j.Marker,java.lang.String,java.lang.Throwable)>($r5, $r4, r3);	return
;block_num 1