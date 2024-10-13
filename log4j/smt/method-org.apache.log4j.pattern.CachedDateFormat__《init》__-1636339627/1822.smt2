(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1125 0)
(declare-sort var204 0)
(declare-sort var3389 0)
(declare-sort var87 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/553199611 (var204) void)
(declare-fun cast-from-var1125-to-var204 (var1125) var204)
(declare-fun String-init () String)
(declare-fun <init>/1906106355 (String Int) void)
(declare-fun cache/-503004593 (var1125) String)
(declare-fun var3389-init () var3389)
(declare-fun <init>/593337323 (var3389 Int) void)
(declare-fun tmpDate/-503004593 (var1125) var3389)
(declare-fun var87-init () var87)
(declare-fun <init>/875830710 (var87 String) void)
(declare-const null-var1125 var1125)
(declare-const null-var204 var204)
(declare-const null-Int Int)
(declare-const var473 var1125) ; Statement: r0 := @this: org.apache.log4j.pattern.CachedDateFormat 
(assert (not (= var473 null-var1125)))
(declare-const var2729 var204) ; Statement: r3 := @parameter0: java.text.DateFormat 
(assert (not (= var2729 null-var204)))
(declare-const var181 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var181 null-Int)))
(assert true)
;(assert (<init>/553199611 (cast-from-var1125-to-var204 var473))) ; Statement: specialinvoke r0.<java.text.DateFormat: void <init>()>() 

(declare-const var473!1 var1125)
(define-const var399 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/1906106355 var399 50)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>(int)>(50) 

(declare-const var399!1 String)
(declare-const var2371 Int)
(declare-const var473!2 var1125)
(assert (not (= var473!2 null-var1125)))
(assert (= (cache/-503004593 var473!2) var399!1)) ; Statement: r0.<org.apache.log4j.pattern.CachedDateFormat: java.lang.StringBuffer cache> = $r1 
(define-const var1378 var3389 var3389-init) ; Statement: $r2 = new java.util.Date 
(assert true)
;(assert (<init>/593337323 var1378 0)) ; Statement: specialinvoke $r2.<java.util.Date: void <init>(long)>(0L) 

(declare-const var1378!1 var3389)
(declare-const var2676 Int)
(declare-const var473!3 var1125)
(assert (not (= var473!3 null-var1125)))
(assert (= (tmpDate/-503004593 var473!3) var1378!1)) ; Statement: r0.<org.apache.log4j.pattern.CachedDateFormat: java.util.Date tmpDate> = $r2 
 ; Statement: if r3 != null goto (branch) 
(assert (not (not (= var2729 null-var204)))) ; Negate: Cond: r3 != null  
(define-const var3881 var87 var87-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var3881 "dateFormat cannot be null")) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("dateFormat cannot be null") 

(declare-const var3881!1 var87)
(declare-const var3696 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/553199611=([java.text.DateFormat], void), cast-from-var1125-to-var204=([org.apache.log4j.pattern.CachedDateFormat], java.text.DateFormat), String-init=([], java.lang.StringBuffer), <init>/1906106355=([java.lang.StringBuffer, int], void), cache/-503004593=([org.apache.log4j.pattern.CachedDateFormat], java.lang.StringBuffer), var3389-init=([], java.util.Date), <init>/593337323=([java.util.Date, long], void), tmpDate/-503004593=([org.apache.log4j.pattern.CachedDateFormat], java.util.Date), var87-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1125=org.apache.log4j.pattern.CachedDateFormat, var473=r0, var204=java.text.DateFormat, var2729=r3, var181=i0, var399=$r1, var2371=50, var3389=java.util.Date, var1378=$r2, var2676=0L, var87=java.lang.IllegalArgumentException, var3881=$r5, var3696="dateFormat cannot be null"}
; {org.apache.log4j.pattern.CachedDateFormat=var1125, r0=var473, java.text.DateFormat=var204, r3=var2729, i0=var181, $r1=var399, 50=var2371, java.util.Date=var3389, $r2=var1378, 0L=var2676, java.lang.IllegalArgumentException=var87, $r5=var3881, "dateFormat cannot be null"=var3696}
;seq <java.lang.StringBuffer: void <init>(int)>
;cnt {"<java.lang.StringBuffer: void <init>(int)>": 1}
;stmts r0 := @this: org.apache.log4j.pattern.CachedDateFormat;	r3 := @parameter0: java.text.DateFormat;	i0 := @parameter1: int;	specialinvoke r0.<java.text.DateFormat: void <init>()>();	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>(int)>(50);	r0.<org.apache.log4j.pattern.CachedDateFormat: java.lang.StringBuffer cache> = $r1;	$r2 = new java.util.Date;	specialinvoke $r2.<java.util.Date: void <init>(long)>(0L);	r0.<org.apache.log4j.pattern.CachedDateFormat: java.util.Date tmpDate> = $r2;	if r3 != null goto (branch);	$r5 = new java.lang.IllegalArgumentException;	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("dateFormat cannot be null");	throw $r5
;block_num 2