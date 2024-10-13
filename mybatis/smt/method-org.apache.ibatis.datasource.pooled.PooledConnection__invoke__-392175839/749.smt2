(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2495 0)
(declare-sort var24 0)
(declare-sort var2993 0)
(declare-sort var1325 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var2993) String)
(declare-fun dataSource/-2108278491 (var2495) var1325)
(declare-fun pushConnection/2055453100 (var1325 var2495) void)
(declare-const null-var2495 var2495)
(declare-const null-var24 var24)
(declare-const null-var2993 var2993)
(declare-const null-__Array__Int__var24__ (Array Int var24))
(declare-const var2836 var2495) ; Statement: r5 := @this: org.apache.ibatis.datasource.pooled.PooledConnection 
(assert (not (= var2836 null-var2495)))
(declare-const var1916 var24) ; Statement: r12 := @parameter0: java.lang.Object 
(assert (not (= var1916 null-var24)))
(declare-const var3949 var2993) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var3949 null-var2993)))
(declare-const var431 (Array Int var24)) ; Statement: r6 := @parameter2: java.lang.Object[] 
(assert (not (= var431 null-__Array__Int__var24__)))
(assert true)
(define-const var593 String (getName/1227988463 var3949)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(define-const var1612 String "close") ; Statement: $r2 = "close" 
(assert true)
(define-const var2754 Bool (= var1612 var593)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r4 = class "Ljava/lang/Object;" 
(assert (not (= (ite var2754 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1164 var1325 (dataSource/-2108278491 var2836)) ; Statement: $r9 = r5.<org.apache.ibatis.datasource.pooled.PooledConnection: org.apache.ibatis.datasource.pooled.PooledDataSource dataSource> 
(assert true)
;(assert (pushConnection/2055453100 var1164 var2836)) ; Statement: virtualinvoke $r9.<org.apache.ibatis.datasource.pooled.PooledDataSource: void pushConnection(org.apache.ibatis.datasource.pooled.PooledConnection)>(r5) 

(declare-const var1164!1 var1325)
(declare-const var2836!1 var2495)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), dataSource/-2108278491=([org.apache.ibatis.datasource.pooled.PooledConnection], org.apache.ibatis.datasource.pooled.PooledDataSource), pushConnection/2055453100=([org.apache.ibatis.datasource.pooled.PooledDataSource, org.apache.ibatis.datasource.pooled.PooledConnection], void)}
; {var2495=org.apache.ibatis.datasource.pooled.PooledConnection, var2836=r5, var24=java.lang.Object, var1916=r12, var2993=java.lang.reflect.Method, var3949=r0, var431=r6, var593=r1, var1612=$r2, var2754=$z0, var1325=org.apache.ibatis.datasource.pooled.PooledDataSource, var1164=$r9}
; {org.apache.ibatis.datasource.pooled.PooledConnection=var2495, r5=var2836, java.lang.Object=var24, r12=var1916, java.lang.reflect.Method=var2993, r0=var3949, r6=var431, r1=var593, $r2=var1612, $z0=var2754, org.apache.ibatis.datasource.pooled.PooledDataSource=var1325, $r9=var1164}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: org.apache.ibatis.datasource.pooled.PooledConnection;	r12 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Method;	r6 := @parameter2: java.lang.Object[];	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$r2 = "close";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r4 = class "Ljava/lang/Object;";	$r9 = r5.<org.apache.ibatis.datasource.pooled.PooledConnection: org.apache.ibatis.datasource.pooled.PooledDataSource dataSource>;	virtualinvoke $r9.<org.apache.ibatis.datasource.pooled.PooledDataSource: void pushConnection(org.apache.ibatis.datasource.pooled.PooledConnection)>(r5);	return null
;block_num 2