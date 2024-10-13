(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2981 0)
(declare-sort var2181 0)
(declare-sort var3643 0)
(declare-sort var1395 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var3643) String)
(declare-fun getWrappedBlob/-1837511221 (var2981) var1395)
(declare-const null-var2981 var2981)
(declare-const null-var2181 var2181)
(declare-const null-var3643 var3643)
(declare-const null-__Array__Int__var2181__ (Array Int var2181))
(declare-const var831 var2981) ; Statement: r3 := @this: org.hibernate.engine.jdbc.SerializableBlobProxy 
(assert (not (= var831 null-var2981)))
(declare-const var2626 var2181) ; Statement: r16 := @parameter0: java.lang.Object 
(assert (not (= var2626 null-var2181)))
(declare-const var2025 var3643) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var2025 null-var3643)))
(declare-const var3802 (Array Int var2181)) ; Statement: r4 := @parameter2: java.lang.Object[] 
(assert (not (= var3802 null-__Array__Int__var2181__)))
(define-const var972 String "getWrappedBlob") ; Statement: $r2 = "getWrappedBlob" 
(assert true)
(define-const var554 String (getName/1227988463 var2025)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var3054 Bool (= var972 var554)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke r3.<org.hibernate.engine.jdbc.SerializableBlobProxy: java.sql.Blob getWrappedBlob()>() 
(assert (not (= (ite var3054 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2433 var1395 (getWrappedBlob/-1837511221 var831)) ; Statement: $r7 = virtualinvoke r3.<org.hibernate.engine.jdbc.SerializableBlobProxy: java.sql.Blob getWrappedBlob()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), getWrappedBlob/-1837511221=([org.hibernate.engine.jdbc.SerializableBlobProxy], java.sql.Blob)}
; {var2981=org.hibernate.engine.jdbc.SerializableBlobProxy, var831=r3, var2181=java.lang.Object, var2626=r16, var3643=java.lang.reflect.Method, var2025=r0, var3802=r4, var972=$r2, var554=$r1, var3054=$z0, var1395=java.sql.Blob, var2433=$r7}
; {org.hibernate.engine.jdbc.SerializableBlobProxy=var2981, r3=var831, java.lang.Object=var2181, r16=var2626, java.lang.reflect.Method=var3643, r0=var2025, r4=var3802, $r2=var972, $r1=var554, $z0=var3054, java.sql.Blob=var1395, $r7=var2433}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.hibernate.engine.jdbc.SerializableBlobProxy;	r16 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Method;	r4 := @parameter2: java.lang.Object[];	$r2 = "getWrappedBlob";	$r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $r5 = virtualinvoke r3.<org.hibernate.engine.jdbc.SerializableBlobProxy: java.sql.Blob getWrappedBlob()>();	$r7 = virtualinvoke r3.<org.hibernate.engine.jdbc.SerializableBlobProxy: java.sql.Blob getWrappedBlob()>();	return $r7
;block_num 2