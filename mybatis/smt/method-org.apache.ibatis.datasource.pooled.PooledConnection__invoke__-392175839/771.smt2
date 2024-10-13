(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2638 0)
(declare-sort var96 0)
(declare-sort var1515 0)
(declare-sort var1701 0)
(declare-sort var1086 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var1515) String)
(declare-fun var1086_unwrapThrowable/-200960944 (var1701) var1701)
(declare-const null-var2638 var2638)
(declare-const null-var96 var96)
(declare-const null-var1515 var1515)
(declare-const null-__Array__Int__var96__ (Array Int var96))
(declare-const null-var1701 var1701)
(declare-const var3934 var2638) ; Statement: r5 := @this: org.apache.ibatis.datasource.pooled.PooledConnection 
(assert (not (= var3934 null-var2638)))
(declare-const var1849 var96) ; Statement: r12 := @parameter0: java.lang.Object 
(assert (not (= var1849 null-var96)))
(declare-const var3861 var1515) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var3861 null-var1515)))
(declare-const var3687 (Array Int var96)) ; Statement: r6 := @parameter2: java.lang.Object[] 
(assert (not (= var3687 null-__Array__Int__var96__)))
(assert true)
(define-const var192 String (getName/1227988463 var3861)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(define-const var3233 String "close") ; Statement: $r2 = "close" 
(assert true)
(define-const var949 Bool (= var3233 var192)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r4 = class "Ljava/lang/Object;" 
(assert (not (= (ite var949 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var1048 var1701) ; Statement: $r10 := @caughtexception 
(assert (not (= var1048 null-var1701)))
(define-const var1533 var1701 (var1086_unwrapThrowable/-200960944 var1048)) ; Statement: $r11 = staticinvoke <org.apache.ibatis.reflection.ExceptionUtil: java.lang.Throwable unwrapThrowable(java.lang.Throwable)>($r10) 
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), var1086_unwrapThrowable/-200960944=([java.lang.Throwable], java.lang.Throwable)}
; {var2638=org.apache.ibatis.datasource.pooled.PooledConnection, var3934=r5, var96=java.lang.Object, var1849=r12, var1515=java.lang.reflect.Method, var3861=r0, var3687=r6, var192=r1, var3233=$r2, var949=$z0, var1701=java.lang.Throwable, var1048=$r10, var1086=org.apache.ibatis.reflection.ExceptionUtil, var1533=$r11}
; {org.apache.ibatis.datasource.pooled.PooledConnection=var2638, r5=var3934, java.lang.Object=var96, r12=var1849, java.lang.reflect.Method=var1515, r0=var3861, r6=var3687, r1=var192, $r2=var3233, $z0=var949, java.lang.Throwable=var1701, $r10=var1048, org.apache.ibatis.reflection.ExceptionUtil=var1086, $r11=var1533}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: org.apache.ibatis.datasource.pooled.PooledConnection;	r12 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Method;	r6 := @parameter2: java.lang.Object[];	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$r2 = "close";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r4 = class "Ljava/lang/Object;";	$r10 := @caughtexception;	$r11 = staticinvoke <org.apache.ibatis.reflection.ExceptionUtil: java.lang.Throwable unwrapThrowable(java.lang.Throwable)>($r10);	throw $r11
;block_num 2