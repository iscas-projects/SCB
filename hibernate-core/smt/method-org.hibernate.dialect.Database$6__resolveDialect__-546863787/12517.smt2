(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1981 0)
(declare-sort var3454 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3454_getDatabaseName/407809897 (var3454) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var1981 var1981)
(declare-const null-var3454 var3454)
(declare-const var3137 var1981) ; Statement: r2 := @this: org.hibernate.dialect.Database$6 
(assert (not (= var3137 null-var1981)))
(declare-const var705 var3454) ; Statement: r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo 
(assert (not (= var705 null-var3454)))
(define-const var2661 String (var3454_getDatabaseName/407809897 var705)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>() 
(assert true)
(define-const var3903 Bool (startsWith/-1785782452 var2661 "Firebird")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("Firebird") 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var3903 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var3454_getDatabaseName/407809897=([org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1981=org.hibernate.dialect.Database$6, var3137=r2, var3454=org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo, var705=r0, var2661=r1, var3903=$z0}
; {org.hibernate.dialect.Database$6=var1981, r2=var3137, org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo=var3454, r0=var705, r1=var2661, $z0=var3903}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r2 := @this: org.hibernate.dialect.Database$6;	r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo;	r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("Firebird");	if $z0 == 0 goto return null;	return null
;block_num 2