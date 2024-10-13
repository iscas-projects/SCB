(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var848 0)
(declare-sort var2282 0)
(declare-sort var610 0)
(declare-sort var1069 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2282_getDatabaseName/407809897 (var2282) String)
(declare-fun var2282_getDatabaseMajorVersion/1312228497 (var2282) Int)
(declare-fun var2282_getDatabaseMinorVersion/389114765 (var2282) Int)
(declare-fun var1069_access$100/-842167358 (var1069) var610)
(declare-fun cast-from-var848-to-var1069 (var848) var1069)
(declare-const null-var848 var848)
(declare-const null-var2282 var2282)
(declare-const var2611 var848) ; Statement: r4 := @this: org.hibernate.dialect.Database$3 
(assert (not (= var2611 null-var848)))
(declare-const var728 var2282) ; Statement: r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo 
(assert (not (= var728 null-var2282)))
(define-const var580 String (var2282_getDatabaseName/407809897 var728)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>() 
(define-const var2998 String "DB2 UDB for AS/400") ; Statement: $r2 = "DB2 UDB for AS/400" 
(assert true)
(define-const var3482 Bool (= var2998 var580)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("DB2/") 
(assert (not (= (ite var3482 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var208 Int (var2282_getDatabaseMajorVersion/1312228497 var728)) ; Statement: i0 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: int getDatabaseMajorVersion()>() 
(define-const var1436 Int (var2282_getDatabaseMinorVersion/389114765 var728)) ; Statement: i1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: int getDatabaseMinorVersion()>() 
 ; Statement: if i0 > 7 goto $r5 = staticinvoke <org.hibernate.dialect.Database: org.hibernate.dialect.Dialect access$100(org.hibernate.dialect.Database)>(r4) 
(assert (> var208 7)) ; Cond: i0 > 7 
(define-const var2497 var610 (var1069_access$100/-842167358 (cast-from-var848-to-var1069 var2611))) ; Statement: $r5 = staticinvoke <org.hibernate.dialect.Database: org.hibernate.dialect.Dialect access$100(org.hibernate.dialect.Database)>(r4) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var2282_getDatabaseName/407809897=([org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo], java.lang.String), var2282_getDatabaseMajorVersion/1312228497=([org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo], int), var2282_getDatabaseMinorVersion/389114765=([org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo], int), var1069_access$100/-842167358=([org.hibernate.dialect.Database], org.hibernate.dialect.Dialect), cast-from-var848-to-var1069=([org.hibernate.dialect.Database$3], org.hibernate.dialect.Database)}
; {var848=org.hibernate.dialect.Database$3, var2611=r4, var2282=org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo, var728=r0, var580=r1, var2998=$r2, var3482=$z0, var208=i0, var1436=i1, var610=org.hibernate.dialect.Dialect, var1069=org.hibernate.dialect.Database, var2497=$r5}
; {org.hibernate.dialect.Database$3=var848, r4=var2611, org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo=var2282, r0=var728, r1=var580, $r2=var2998, $z0=var3482, i0=var208, i1=var1436, org.hibernate.dialect.Dialect=var610, org.hibernate.dialect.Database=var1069, $r5=var2497}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r4 := @this: org.hibernate.dialect.Database$3;	r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo;	r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>();	$r2 = "DB2 UDB for AS/400";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("DB2/");	i0 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: int getDatabaseMajorVersion()>();	i1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: int getDatabaseMinorVersion()>();	if i0 > 7 goto $r5 = staticinvoke <org.hibernate.dialect.Database: org.hibernate.dialect.Dialect access$100(org.hibernate.dialect.Database)>(r4);	$r5 = staticinvoke <org.hibernate.dialect.Database: org.hibernate.dialect.Dialect access$100(org.hibernate.dialect.Database)>(r4);	return $r5
;block_num 3