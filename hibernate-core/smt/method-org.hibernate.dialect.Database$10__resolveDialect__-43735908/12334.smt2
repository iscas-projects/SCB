(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3802 0)
(declare-sort var428 0)
(declare-sort var2285 0)
(declare-sort var861 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var428_getDatabaseName/407809897 (var428) String)
(declare-fun var861_access$100/-842167358 (var861) var2285)
(declare-fun cast-from-var3802-to-var861 (var3802) var861)
(declare-const null-var3802 var3802)
(declare-const null-var428 var428)
(declare-const var3134 var3802) ; Statement: r3 := @this: org.hibernate.dialect.Database$10 
(assert (not (= var3134 null-var3802)))
(declare-const var1768 var428) ; Statement: r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo 
(assert (not (= var1768 null-var428)))
(define-const var2859 String (var428_getDatabaseName/407809897 var1768)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>() 
(define-const var2628 String "HSQL Database Engine") ; Statement: $r2 = "HSQL Database Engine" 
(assert true)
(define-const var1539 Bool (= var2628 var2859)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto return null 
(assert (not (= (ite var1539 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3752 var2285 (var861_access$100/-842167358 (cast-from-var3802-to-var861 var3134))) ; Statement: $r4 = staticinvoke <org.hibernate.dialect.Database: org.hibernate.dialect.Dialect access$100(org.hibernate.dialect.Database)>(r3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var428_getDatabaseName/407809897=([org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo], java.lang.String), var861_access$100/-842167358=([org.hibernate.dialect.Database], org.hibernate.dialect.Dialect), cast-from-var3802-to-var861=([org.hibernate.dialect.Database$10], org.hibernate.dialect.Database)}
; {var3802=org.hibernate.dialect.Database$10, var3134=r3, var428=org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo, var1768=r0, var2859=r1, var2628=$r2, var1539=$z0, var2285=org.hibernate.dialect.Dialect, var861=org.hibernate.dialect.Database, var3752=$r4}
; {org.hibernate.dialect.Database$10=var3802, r3=var3134, org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo=var428, r0=var1768, r1=var2859, $r2=var2628, $z0=var1539, org.hibernate.dialect.Dialect=var2285, org.hibernate.dialect.Database=var861, $r4=var3752}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.hibernate.dialect.Database$10;	r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo;	r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>();	$r2 = "HSQL Database Engine";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto return null;	$r4 = staticinvoke <org.hibernate.dialect.Database: org.hibernate.dialect.Dialect access$100(org.hibernate.dialect.Database)>(r3);	return $r4
;block_num 2