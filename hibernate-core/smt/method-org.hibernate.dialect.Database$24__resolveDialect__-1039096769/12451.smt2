(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2035 0)
(declare-sort var1565 0)
(declare-sort var3485 0)
(declare-sort var1805 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1565_getDatabaseName/407809897 (var1565) String)
(declare-fun var1805_access$100/-842167358 (var1805) var3485)
(declare-fun cast-from-var2035-to-var1805 (var2035) var1805)
(declare-const null-var2035 var2035)
(declare-const null-var1565 var1565)
(declare-const var2063 var2035) ; Statement: r3 := @this: org.hibernate.dialect.Database$24 
(assert (not (= var2063 null-var2035)))
(declare-const var1572 var1565) ; Statement: r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo 
(assert (not (= var1572 null-var1565)))
(define-const var606 String (var1565_getDatabaseName/407809897 var1572)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>() 
(define-const var519 String "Sybase SQL Server") ; Statement: $r2 = "Sybase SQL Server" 
(assert true)
(define-const var833 Bool (= var519 var606)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $r4 = staticinvoke <org.hibernate.dialect.Database: org.hibernate.dialect.Dialect access$100(org.hibernate.dialect.Database)>(r3) 
(assert (not (= (ite var833 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3469 var3485 (var1805_access$100/-842167358 (cast-from-var2035-to-var1805 var2063))) ; Statement: $r4 = staticinvoke <org.hibernate.dialect.Database: org.hibernate.dialect.Dialect access$100(org.hibernate.dialect.Database)>(r3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1565_getDatabaseName/407809897=([org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo], java.lang.String), var1805_access$100/-842167358=([org.hibernate.dialect.Database], org.hibernate.dialect.Dialect), cast-from-var2035-to-var1805=([org.hibernate.dialect.Database$24], org.hibernate.dialect.Database)}
; {var2035=org.hibernate.dialect.Database$24, var2063=r3, var1565=org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo, var1572=r0, var606=r1, var519=$r2, var833=$z0, var3485=org.hibernate.dialect.Dialect, var1805=org.hibernate.dialect.Database, var3469=$r4}
; {org.hibernate.dialect.Database$24=var2035, r3=var2063, org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo=var1565, r0=var1572, r1=var606, $r2=var519, $z0=var833, org.hibernate.dialect.Dialect=var3485, org.hibernate.dialect.Database=var1805, $r4=var3469}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.hibernate.dialect.Database$24;	r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo;	r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>();	$r2 = "Sybase SQL Server";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 != 0 goto $r4 = staticinvoke <org.hibernate.dialect.Database: org.hibernate.dialect.Dialect access$100(org.hibernate.dialect.Database)>(r3);	$r4 = staticinvoke <org.hibernate.dialect.Database: org.hibernate.dialect.Dialect access$100(org.hibernate.dialect.Database)>(r3);	return $r4
;block_num 2