(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3432 0)
(declare-sort var1846 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1846_getDatabaseName/407809897 (var1846) String)
(declare-fun var1846_getDatabaseMajorVersion/1312228497 (var1846) Int)
(declare-const null-var3432 var3432)
(declare-const null-var1846 var1846)
(declare-const var3500 var3432) ; Statement: r3 := @this: org.hibernate.dialect.Database$9 
(assert (not (= var3500 null-var3432)))
(declare-const var1735 var1846) ; Statement: r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo 
(assert (not (= var1735 null-var1846)))
(define-const var136 String (var1846_getDatabaseName/407809897 var1735)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>() 
(define-const var562 Int (var1846_getDatabaseMajorVersion/1312228497 var1735)) ; Statement: i0 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: int getDatabaseMajorVersion()>() 
(define-const var1251 String "HDB") ; Statement: $r2 = "HDB" 
(assert true)
(define-const var2882 Bool (= var1251 var136)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var2882 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var1846_getDatabaseName/407809897=([org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo], java.lang.String), var1846_getDatabaseMajorVersion/1312228497=([org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo], int)}
; {var3432=org.hibernate.dialect.Database$9, var3500=r3, var1846=org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo, var1735=r0, var136=r1, var562=i0, var1251=$r2, var2882=$z0}
; {org.hibernate.dialect.Database$9=var3432, r3=var3500, org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo=var1846, r0=var1735, r1=var136, i0=var562, $r2=var1251, $z0=var2882}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.hibernate.dialect.Database$9;	r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo;	r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>();	i0 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: int getDatabaseMajorVersion()>();	$r2 = "HDB";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto return null;	return null
;block_num 2