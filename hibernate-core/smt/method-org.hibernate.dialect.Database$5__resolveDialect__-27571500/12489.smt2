(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3162 0)
(declare-sort var196 0)
(declare-sort var2334 0)
(declare-sort var2408 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var196_getDatabaseName/407809897 (var196) String)
(declare-fun var2408_access$100/-842167358 (var2408) var2334)
(declare-fun cast-from-var3162-to-var2408 (var3162) var2408)
(declare-const null-var3162 var3162)
(declare-const null-var196 var196)
(declare-const var338 var3162) ; Statement: r3 := @this: org.hibernate.dialect.Database$5 
(assert (not (= var338 null-var3162)))
(declare-const var3323 var196) ; Statement: r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo 
(assert (not (= var3323 null-var196)))
(define-const var1030 String (var196_getDatabaseName/407809897 var3323)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>() 
(define-const var499 String "EnterpriseDB") ; Statement: $r2 = "EnterpriseDB" 
(assert true)
(define-const var2323 Bool (= var499 var1030)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto return null 
(assert (not (= (ite var2323 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var737 var2334 (var2408_access$100/-842167358 (cast-from-var3162-to-var2408 var338))) ; Statement: $r4 = staticinvoke <org.hibernate.dialect.Database: org.hibernate.dialect.Dialect access$100(org.hibernate.dialect.Database)>(r3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var196_getDatabaseName/407809897=([org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo], java.lang.String), var2408_access$100/-842167358=([org.hibernate.dialect.Database], org.hibernate.dialect.Dialect), cast-from-var3162-to-var2408=([org.hibernate.dialect.Database$5], org.hibernate.dialect.Database)}
; {var3162=org.hibernate.dialect.Database$5, var338=r3, var196=org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo, var3323=r0, var1030=r1, var499=$r2, var2323=$z0, var2334=org.hibernate.dialect.Dialect, var2408=org.hibernate.dialect.Database, var737=$r4}
; {org.hibernate.dialect.Database$5=var3162, r3=var338, org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo=var196, r0=var3323, r1=var1030, $r2=var499, $z0=var2323, org.hibernate.dialect.Dialect=var2334, org.hibernate.dialect.Database=var2408, $r4=var737}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.hibernate.dialect.Database$5;	r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo;	r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>();	$r2 = "EnterpriseDB";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto return null;	$r4 = staticinvoke <org.hibernate.dialect.Database: org.hibernate.dialect.Dialect access$100(org.hibernate.dialect.Database)>(r3);	return $r4
;block_num 2