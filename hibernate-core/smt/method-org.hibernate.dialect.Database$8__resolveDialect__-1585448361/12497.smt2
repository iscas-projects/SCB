(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3290 0)
(declare-sort var707 0)
(declare-sort var1903 0)
(declare-sort var473 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var707_getDatabaseName/407809897 (var707) String)
(declare-fun var473_access$100/-842167358 (var473) var1903)
(declare-fun cast-from-var3290-to-var473 (var3290) var473)
(declare-const null-var3290 var3290)
(declare-const null-var707 var707)
(declare-const var2675 var3290) ; Statement: r3 := @this: org.hibernate.dialect.Database$8 
(assert (not (= var2675 null-var3290)))
(declare-const var2354 var707) ; Statement: r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo 
(assert (not (= var2354 null-var707)))
(define-const var1259 String (var707_getDatabaseName/407809897 var2354)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>() 
(define-const var3123 String "H2") ; Statement: $r2 = "H2" 
(assert true)
(define-const var733 Bool (= var3123 var1259)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto return null 
(assert (not (= (ite var733 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3988 var1903 (var473_access$100/-842167358 (cast-from-var3290-to-var473 var2675))) ; Statement: $r4 = staticinvoke <org.hibernate.dialect.Database: org.hibernate.dialect.Dialect access$100(org.hibernate.dialect.Database)>(r3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var707_getDatabaseName/407809897=([org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo], java.lang.String), var473_access$100/-842167358=([org.hibernate.dialect.Database], org.hibernate.dialect.Dialect), cast-from-var3290-to-var473=([org.hibernate.dialect.Database$8], org.hibernate.dialect.Database)}
; {var3290=org.hibernate.dialect.Database$8, var2675=r3, var707=org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo, var2354=r0, var1259=r1, var3123=$r2, var733=$z0, var1903=org.hibernate.dialect.Dialect, var473=org.hibernate.dialect.Database, var3988=$r4}
; {org.hibernate.dialect.Database$8=var3290, r3=var2675, org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo=var707, r0=var2354, r1=var1259, $r2=var3123, $z0=var733, org.hibernate.dialect.Dialect=var1903, org.hibernate.dialect.Database=var473, $r4=var3988}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.hibernate.dialect.Database$8;	r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo;	r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>();	$r2 = "H2";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto return null;	$r4 = staticinvoke <org.hibernate.dialect.Database: org.hibernate.dialect.Dialect access$100(org.hibernate.dialect.Database)>(r3);	return $r4
;block_num 2