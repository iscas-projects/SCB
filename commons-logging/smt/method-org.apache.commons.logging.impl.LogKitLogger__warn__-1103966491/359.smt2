(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2181 0)
(declare-sort var1126 0)
(declare-sort var3542 0)
(declare-sort var3810 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLogger/100686094 (var2181) var3810)
(declare-fun String_valueOf/-333372740 (var1126) String)
(declare-fun warn/1262245898 (var3810 String var3542) void)
(declare-const null-var2181 var2181)
(declare-const null-var1126 var1126)
(declare-const null-var3542 var3542)
(declare-const var3753 var2181) ; Statement: r1 := @this: org.apache.commons.logging.impl.LogKitLogger 
(assert (not (= var3753 null-var2181)))
(declare-const var993 var1126) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var993 null-var1126)))
(declare-const var3694 var3542) ; Statement: r2 := @parameter1: java.lang.Throwable 
(assert (not (= var3694 null-var3542)))
 ; Statement: if r0 == null goto return 
(assert (not (= var993 null-var1126))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var1503 var3810 (getLogger/100686094 var3753)) ; Statement: $r4 = virtualinvoke r1.<org.apache.commons.logging.impl.LogKitLogger: org.apache.log.Logger getLogger()>() 
(define-const var449 String (String_valueOf/-333372740 var993)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0) 
(assert true)
;(assert (warn/1262245898 var1503 var449 var3694)) ; Statement: virtualinvoke $r4.<org.apache.log.Logger: void warn(java.lang.String,java.lang.Throwable)>($r3, r2) 

(declare-const var1503!1 var3810)
(declare-const var449!1 String)
(declare-const var3694!1 var3542)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getLogger/100686094=([org.apache.commons.logging.impl.LogKitLogger], org.apache.log.Logger), String_valueOf/-333372740=([java.lang.Object], java.lang.String), warn/1262245898=([org.apache.log.Logger, java.lang.String, java.lang.Throwable], void)}
; {var2181=org.apache.commons.logging.impl.LogKitLogger, var3753=r1, var1126=java.lang.Object, var993=r0, var3542=java.lang.Throwable, var3694=r2, var3810=org.apache.log.Logger, var1503=$r4, var449=$r3}
; {org.apache.commons.logging.impl.LogKitLogger=var2181, r1=var3753, java.lang.Object=var1126, r0=var993, java.lang.Throwable=var3542, r2=var3694, org.apache.log.Logger=var3810, $r4=var1503, $r3=var449}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.commons.logging.impl.LogKitLogger;	r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Throwable;	if r0 == null goto return;	$r4 = virtualinvoke r1.<org.apache.commons.logging.impl.LogKitLogger: org.apache.log.Logger getLogger()>();	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0);	virtualinvoke $r4.<org.apache.log.Logger: void warn(java.lang.String,java.lang.Throwable)>($r3, r2);	return
;block_num 3