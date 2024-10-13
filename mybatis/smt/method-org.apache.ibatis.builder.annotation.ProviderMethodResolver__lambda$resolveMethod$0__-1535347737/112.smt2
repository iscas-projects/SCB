(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3542 0)
(declare-sort var3324 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var3324) String)
(declare-fun getMapperMethod/2077483207 (var3542) var3324)
(declare-const null-var3542 var3542)
(declare-const null-var3324 var3324)
(declare-const var43 var3542) ; Statement: r1 := @parameter0: org.apache.ibatis.builder.annotation.ProviderContext 
(assert (not (= var43 null-var3542)))
(declare-const var1581 var3324) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var1581 null-var3324)))
(assert true)
(define-const var3150 String (getName/1227988463 var1581)) ; Statement: $r4 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var2335 var3324 (getMapperMethod/2077483207 var43)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.ProviderContext: java.lang.reflect.Method getMapperMethod()>() 
(assert true)
(define-const var2232 String (getName/1227988463 var2335)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var3059 Bool (= var3150 var2232)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), getMapperMethod/2077483207=([org.apache.ibatis.builder.annotation.ProviderContext], java.lang.reflect.Method)}
; {var3542=org.apache.ibatis.builder.annotation.ProviderContext, var43=r1, var3324=java.lang.reflect.Method, var1581=r0, var3150=$r4, var2335=$r2, var2232=$r3, var3059=$z0}
; {org.apache.ibatis.builder.annotation.ProviderContext=var3542, r1=var43, java.lang.reflect.Method=var3324, r0=var1581, $r4=var3150, $r2=var2335, $r3=var2232, $z0=var3059}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @parameter0: org.apache.ibatis.builder.annotation.ProviderContext;	r0 := @parameter1: java.lang.reflect.Method;	$r4 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$r2 = virtualinvoke r1.<org.apache.ibatis.builder.'annotation'.ProviderContext: java.lang.reflect.Method getMapperMethod()>();	$r3 = virtualinvoke $r2.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	return $z0
;block_num 1