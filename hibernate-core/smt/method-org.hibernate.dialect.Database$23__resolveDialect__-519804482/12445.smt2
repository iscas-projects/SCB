(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var457 0)
(declare-sort var1064 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1064_getDatabaseName/407809897 (var1064) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var457 var457)
(declare-const null-var1064 var1064)
(declare-const var3199 var457) ; Statement: r7 := @this: org.hibernate.dialect.Database$23 
(assert (not (= var3199 null-var457)))
(declare-const var1517 var1064) ; Statement: r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo 
(assert (not (= var1517 null-var1064)))
(define-const var911 String (var1064_getDatabaseName/407809897 var1517)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>() 
(assert true)
(define-const var3116 Bool (startsWith/-1785782452 var911 "Microsoft SQL Server")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("Microsoft SQL Server") 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var3116 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var1064_getDatabaseName/407809897=([org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var457=org.hibernate.dialect.Database$23, var3199=r7, var1064=org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo, var1517=r0, var911=r1, var3116=$z0}
; {org.hibernate.dialect.Database$23=var457, r7=var3199, org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo=var1064, r0=var1517, r1=var911, $z0=var3116}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r7 := @this: org.hibernate.dialect.Database$23;	r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo;	r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("Microsoft SQL Server");	if $z0 == 0 goto return null;	return null
;block_num 2