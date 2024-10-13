(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2353 0)
(declare-sort var2123 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2123_getDatabaseName/407809897 (var2123) String)
(declare-const null-var2353 var2353)
(declare-const null-var2123 var2123)
(declare-const var1110 var2353) ; Statement: r7 := @this: org.hibernate.dialect.Database$19 
(assert (not (= var1110 null-var2353)))
(declare-const var2334 var2123) ; Statement: r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo 
(assert (not (= var2334 null-var2123)))
(define-const var1079 String (var2123_getDatabaseName/407809897 var2334)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>() 
(define-const var167 String "Oracle") ; Statement: $r2 = "Oracle" 
(assert true)
(define-const var2113 Bool (= var167 var1079)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var2113 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var2123_getDatabaseName/407809897=([org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo], java.lang.String)}
; {var2353=org.hibernate.dialect.Database$19, var1110=r7, var2123=org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo, var2334=r0, var1079=r1, var167=$r2, var2113=$z0}
; {org.hibernate.dialect.Database$19=var2353, r7=var1110, org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo=var2123, r0=var2334, r1=var1079, $r2=var167, $z0=var2113}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r7 := @this: org.hibernate.dialect.Database$19;	r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo;	r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>();	$r2 = "Oracle";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto return null;	return null
;block_num 2