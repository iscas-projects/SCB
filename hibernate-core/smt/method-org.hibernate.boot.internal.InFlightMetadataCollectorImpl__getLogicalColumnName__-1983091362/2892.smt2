(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2885 0)
(declare-sort var3464 0)
(declare-sort var2577 0)
(declare-sort var3399 0)
(declare-sort var3771 0)
(declare-sort var1742 0)
(declare-sort var1951 0)
(declare-sort var592 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDatabase/273418701 (var2885) var3399)
(declare-fun getJdbcEnvironment/-2057911686 (var3399) var3771)
(declare-fun var3771_getDialect/-1607750029 (var3771) var1742)
(declare-fun render/-1870218016 (var2577 var1742) String)
(declare-fun var1951-init () var1951)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1669825851 (var3464) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var1951 String) void)
(declare-fun cast-from-var1951-to-var592 (var1951) var592)
(declare-const null-var2885 var2885)
(declare-const null-var3464 var3464)
(declare-const null-var2577 var2577)
(declare-const var1522 var2885) ; Statement: r1 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl 
(assert (not (= var1522 null-var2885)))
(declare-const var360 var3464) ; Statement: r6 := @parameter0: org.hibernate.mapping.Table 
(assert (not (= var360 null-var3464)))
(declare-const var3158 var2577) ; Statement: r0 := @parameter1: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var3158 null-var2577)))
(assert true)
(define-const var3174 var3399 (getDatabase/273418701 var1522)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: org.hibernate.boot.model.relational.Database getDatabase()>() 
(assert true)
(define-const var3151 var3771 (getJdbcEnvironment/-2057911686 var3174)) ; Statement: $r3 = virtualinvoke $r2.<org.hibernate.boot.model.relational.Database: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment getJdbcEnvironment()>() 
(define-const var2944 var1742 (var3771_getDialect/-1607750029 var3151)) ; Statement: $r4 = interfaceinvoke $r3.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.dialect.Dialect getDialect()>() 
(assert true)
(define-const var2326 String (render/-1870218016 var3158 var2944)) ; Statement: r5 = virtualinvoke r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String render(org.hibernate.dialect.Dialect)>($r4) 
(define-const var2368 var2577 null-var2577) ; Statement: r23 = null 
(define-const var1293 var3464 var360) ; Statement: r24 = r6 
(assert true) ; Non Conditional
 ; Statement: if r24 == null goto (branch) 
(assert (= var1293 null-var3464)) ; Cond: r24 == null 
 ; Statement: if r23 != null goto $r7 = virtualinvoke r23.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>() 
(assert (not (not (= var2368 null-var2577)))) ; Negate: Cond: r23 != null  
(define-const var800 var1951 var1951-init) ; Statement: $r26 = new org.hibernate.MappingException 
(define-const var3513 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3513)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3513!1 String)
(assert (= var3513!1 ""))
(assert true)
(define-const var877 String (append/672562846 var3513!1 "Unable to find column with physical name ")) ; Statement: $r10 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find column with physical name ") 
(declare-const var3513!2 String)
(assert (= var3513!2 (str.++ var3513!1 "Unable to find column with physical name ")))
(assert true)
(define-const var3847 String (append/672562846 var877 var2326)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var877!1 String)
(assert (= var877!1 (str.++ var877 var2326)))
(assert true)
(define-const var803 String (append/672562846 var3847 " in table ")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in table ") 
(declare-const var3847!1 String)
(assert (= var3847!1 (str.++ var3847 " in table ")))
(assert true)
(define-const var722 String (getName/-1669825851 var360)) ; Statement: $r12 = virtualinvoke r6.<org.hibernate.mapping.Table: java.lang.String getName()>() 
(assert true)
(define-const var3563 String (append/672562846 var803 var722)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var803!1 String)
(assert (= var803!1 (str.++ var803 var722)))
(assert true)
(define-const var1759 String (toString/-2075883882 var3563)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var800 var1759)) ; Statement: specialinvoke $r26.<org.hibernate.MappingException: void <init>(java.lang.String)>($r15) 

(declare-const var800!1 var1951)
(declare-const var1759!1 String)
(define-const var20 var592 (cast-from-var1951-to-var592 var800!1)) ; Statement: $r27 = (java.lang.Throwable) $r26 
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {getDatabase/273418701=([org.hibernate.boot.internal.InFlightMetadataCollectorImpl], org.hibernate.boot.model.relational.Database), getJdbcEnvironment/-2057911686=([org.hibernate.boot.model.relational.Database], org.hibernate.engine.jdbc.env.spi.JdbcEnvironment), var3771_getDialect/-1607750029=([org.hibernate.engine.jdbc.env.spi.JdbcEnvironment], org.hibernate.dialect.Dialect), render/-1870218016=([org.hibernate.boot.model.naming.Identifier, org.hibernate.dialect.Dialect], java.lang.String), var1951-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1669825851=([org.hibernate.mapping.Table], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var1951-to-var592=([org.hibernate.MappingException], java.lang.Throwable)}
; {var2885=org.hibernate.boot.internal.InFlightMetadataCollectorImpl, var1522=r1, var3464=org.hibernate.mapping.Table, var360=r6, var2577=org.hibernate.boot.model.naming.Identifier, var3158=r0, var3399=org.hibernate.boot.model.relational.Database, var3174=$r2, var3771=org.hibernate.engine.jdbc.env.spi.JdbcEnvironment, var3151=$r3, var1742=org.hibernate.dialect.Dialect, var2944=$r4, var2326=r5, var2368=r23, var1293=r24, var1951=org.hibernate.MappingException, var800=$r26, var3513=$r25, var877=$r10, var3847=$r11, var803=$r13, var722=$r12, var3563=$r14, var1759=$r15, var592=java.lang.Throwable, var20=$r27}
; {org.hibernate.boot.internal.InFlightMetadataCollectorImpl=var2885, r1=var1522, org.hibernate.mapping.Table=var3464, r6=var360, org.hibernate.boot.model.naming.Identifier=var2577, r0=var3158, org.hibernate.boot.model.relational.Database=var3399, $r2=var3174, org.hibernate.engine.jdbc.env.spi.JdbcEnvironment=var3771, $r3=var3151, org.hibernate.dialect.Dialect=var1742, $r4=var2944, r5=var2326, r23=var2368, r24=var1293, org.hibernate.MappingException=var1951, $r26=var800, $r25=var3513, $r10=var877, $r11=var3847, $r13=var803, $r12=var722, $r14=var3563, $r15=var1759, java.lang.Throwable=var592, $r27=var20}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl;	r6 := @parameter0: org.hibernate.mapping.Table;	r0 := @parameter1: org.hibernate.boot.model.naming.Identifier;	$r2 = virtualinvoke r1.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: org.hibernate.boot.model.relational.Database getDatabase()>();	$r3 = virtualinvoke $r2.<org.hibernate.boot.model.relational.Database: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment getJdbcEnvironment()>();	$r4 = interfaceinvoke $r3.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.dialect.Dialect getDialect()>();	r5 = virtualinvoke r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String render(org.hibernate.dialect.Dialect)>($r4);	r23 = null;	r24 = r6;	if r24 == null goto (branch);	if r23 != null goto $r7 = virtualinvoke r23.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>();	$r26 = new org.hibernate.MappingException;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find column with physical name ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in table ");	$r12 = virtualinvoke r6.<org.hibernate.mapping.Table: java.lang.String getName()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r26.<org.hibernate.MappingException: void <init>(java.lang.String)>($r15);	$r27 = (java.lang.Throwable) $r26;	throw $r27
;block_num 4