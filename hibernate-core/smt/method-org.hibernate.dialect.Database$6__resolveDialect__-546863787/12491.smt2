(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var345 0)
(declare-sort var3088 0)
(declare-sort var1900 0)
(declare-sort var1383 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3088_getDatabaseName/407809897 (var3088) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var1383_access$100/-842167358 (var1383) var1900)
(declare-fun cast-from-var345-to-var1383 (var345) var1383)
(declare-const null-var345 var345)
(declare-const null-var3088 var3088)
(declare-const var3981 var345) ; Statement: r2 := @this: org.hibernate.dialect.Database$6 
(assert (not (= var3981 null-var345)))
(declare-const var243 var3088) ; Statement: r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo 
(assert (not (= var243 null-var3088)))
(define-const var622 String (var3088_getDatabaseName/407809897 var243)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>() 
(assert true)
(define-const var2141 Bool (startsWith/-1785782452 var622 "Firebird")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("Firebird") 
 ; Statement: if $z0 == 0 goto return null 
(assert (not (= (ite var2141 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1415 var1900 (var1383_access$100/-842167358 (cast-from-var345-to-var1383 var3981))) ; Statement: $r3 = staticinvoke <org.hibernate.dialect.Database: org.hibernate.dialect.Dialect access$100(org.hibernate.dialect.Database)>(r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3088_getDatabaseName/407809897=([org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var1383_access$100/-842167358=([org.hibernate.dialect.Database], org.hibernate.dialect.Dialect), cast-from-var345-to-var1383=([org.hibernate.dialect.Database$6], org.hibernate.dialect.Database)}
; {var345=org.hibernate.dialect.Database$6, var3981=r2, var3088=org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo, var243=r0, var622=r1, var2141=$z0, var1900=org.hibernate.dialect.Dialect, var1383=org.hibernate.dialect.Database, var1415=$r3}
; {org.hibernate.dialect.Database$6=var345, r2=var3981, org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo=var3088, r0=var243, r1=var622, $z0=var2141, org.hibernate.dialect.Dialect=var1900, org.hibernate.dialect.Database=var1383, $r3=var1415}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r2 := @this: org.hibernate.dialect.Database$6;	r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo;	r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("Firebird");	if $z0 == 0 goto return null;	$r3 = staticinvoke <org.hibernate.dialect.Database: org.hibernate.dialect.Dialect access$100(org.hibernate.dialect.Database)>(r2);	return $r3
;block_num 2