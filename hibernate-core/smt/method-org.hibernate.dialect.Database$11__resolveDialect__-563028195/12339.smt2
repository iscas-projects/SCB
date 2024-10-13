(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3903 0)
(declare-sort var207 0)
(declare-sort var3679 0)
(declare-sort var1679 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var207_getDatabaseName/407809897 (var207) String)
(declare-fun var1679_access$100/-842167358 (var1679) var3679)
(declare-fun cast-from-var3903-to-var1679 (var3903) var1679)
(declare-const null-var3903 var3903)
(declare-const null-var207 var207)
(declare-const var2866 var3903) ; Statement: r3 := @this: org.hibernate.dialect.Database$11 
(assert (not (= var2866 null-var3903)))
(declare-const var1942 var207) ; Statement: r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo 
(assert (not (= var1942 null-var207)))
(define-const var3783 String (var207_getDatabaseName/407809897 var1942)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>() 
(define-const var3199 String "Informix Dynamic Server") ; Statement: $r2 = "Informix Dynamic Server" 
(assert true)
(define-const var1839 Bool (= var3199 var3783)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto return null 
(assert (not (= (ite var1839 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1202 var3679 (var1679_access$100/-842167358 (cast-from-var3903-to-var1679 var2866))) ; Statement: $r4 = staticinvoke <org.hibernate.dialect.Database: org.hibernate.dialect.Dialect access$100(org.hibernate.dialect.Database)>(r3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var207_getDatabaseName/407809897=([org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo], java.lang.String), var1679_access$100/-842167358=([org.hibernate.dialect.Database], org.hibernate.dialect.Dialect), cast-from-var3903-to-var1679=([org.hibernate.dialect.Database$11], org.hibernate.dialect.Database)}
; {var3903=org.hibernate.dialect.Database$11, var2866=r3, var207=org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo, var1942=r0, var3783=r1, var3199=$r2, var1839=$z0, var3679=org.hibernate.dialect.Dialect, var1679=org.hibernate.dialect.Database, var1202=$r4}
; {org.hibernate.dialect.Database$11=var3903, r3=var2866, org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo=var207, r0=var1942, r1=var3783, $r2=var3199, $z0=var1839, org.hibernate.dialect.Dialect=var3679, org.hibernate.dialect.Database=var1679, $r4=var1202}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.hibernate.dialect.Database$11;	r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo;	r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>();	$r2 = "Informix Dynamic Server";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto return null;	$r4 = staticinvoke <org.hibernate.dialect.Database: org.hibernate.dialect.Dialect access$100(org.hibernate.dialect.Database)>(r3);	return $r4
;block_num 2