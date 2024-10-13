(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1496 0)
(declare-sort var963 0)
(declare-sort var2590 0)
(declare-sort var1584 0)
(declare-sort var3999 0)
(declare-sort var189 0)
(declare-sort var2530 0)
(declare-sort var3094 0)
(declare-sort var2850 0)
(declare-sort var1061 0)
(declare-sort var201 0)
(declare-sort var3156 0)
(declare-sort var1677 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1584_isTraceEnabled/-699489552 (var1584) Bool)
(declare-fun var2590_getJdbcServices/-1615476239 (var2590) var189)
(declare-fun var189_getSqlExceptionHelper/1800321680 (var189) var2530)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getFactory/36801881 (var1496) var3094)
(declare-fun var2850_infoString/-1303038331 (var1061 var201 var3094) String)
(declare-fun cast-from-var1496-to-var1061 (var1496) var1061)
(declare-fun cast-from-var963-to-var201 (var963) var201)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getVersionSelectString/-1157951847 (var1496) String)
(declare-fun convert/1666256987 (var2530 var3999 String String) var3156)
(declare-fun cast-from-var3156-to-var1677 (var3156) var1677)
(declare-const null-var1496 var1496)
(declare-const null-var963 var963)
(declare-const null-var2590 var2590)
(declare-const var1496-LOG var1584)
(declare-const null-var3999 var3999)
(declare-const var2241 var1496) ; Statement: r3 := @this: org.hibernate.persister.entity.AbstractEntityPersister 
(assert (not (= var2241 null-var1496)))
(declare-const var1371 var963) ; Statement: r6 := @parameter0: java.io.Serializable 
(assert (not (= var1371 null-var963)))
(declare-const var153 var2590) ; Statement: r1 := @parameter1: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var153 null-var2590)))
(define-const var3585 var1584 var1496-LOG) ; Statement: $r0 = <org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.internal.CoreMessageLogger LOG> 
(define-const var1585 Bool (var1584_isTraceEnabled/-699489552 var3585)) ; Statement: $z0 = interfaceinvoke $r0.<org.hibernate.internal.CoreMessageLogger: boolean isTraceEnabled()>() 
 ; Statement: if $z0 == 0 goto $r2 = interfaceinvoke r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcCoordinator getJdbcCoordinator()>() 
(assert (not (= (ite var1585 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var1507 var3999) ; Statement: $r37 := @caughtexception 
(assert (not (= var1507 null-var3999)))
(define-const var434 var189 (var2590_getJdbcServices/-1615476239 var153)) ; Statement: $r38 = interfaceinvoke r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>() 
(define-const var2928 var2530 (var189_getSqlExceptionHelper/1800321680 var434)) ; Statement: $r46 = interfaceinvoke $r38.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>() 
(define-const var1298 String String-init) ; Statement: $r58 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1298)) ; Statement: specialinvoke $r58.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1298!1 String)
(assert (= var1298!1 ""))
(assert true)
(define-const var1382 String (append/672562846 var1298!1 "could not retrieve version: ")) ; Statement: $r42 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not retrieve version: ") 
(declare-const var1298!2 String)
(assert (= var1298!2 (str.++ var1298!1 "could not retrieve version: ")))
(assert true)
(define-const var2901 var3094 (getFactory/36801881 var2241)) ; Statement: $r40 = virtualinvoke r3.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var383 String (var2850_infoString/-1303038331 (cast-from-var1496-to-var1061 var2241) (cast-from-var963-to-var201 var1371) var2901)) ; Statement: $r41 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister,java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r3, r6, $r40) 
(assert true)
(define-const var2556 String (append/672562846 var1382 var383)) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var1382!1 String)
(assert (= var1382!1 (str.++ var1382 var383)))
(assert true)
(define-const var66 String (toString/-2075883882 var2556)) ; Statement: $r45 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2977 String (getVersionSelectString/-1157951847 var2241)) ; Statement: $r44 = virtualinvoke r3.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String getVersionSelectString()>() 
(assert true)
(define-const var2660 var3156 (convert/1666256987 var2928 var1507 var66 var2977)) ; Statement: $r47 = virtualinvoke $r46.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r37, $r45, $r44) 
(define-const var1463 var1677 (cast-from-var3156-to-var1677 var2660)) ; Statement: $r59 = (java.lang.Throwable) $r47 
 ; Statement: throw $r59 
(check-sat)
(get-model)
(get-unsat-core)
; {var1584_isTraceEnabled/-699489552=([org.hibernate.internal.CoreMessageLogger], boolean), var2590_getJdbcServices/-1615476239=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.jdbc.spi.JdbcServices), var189_getSqlExceptionHelper/1800321680=([org.hibernate.engine.jdbc.spi.JdbcServices], org.hibernate.engine.jdbc.spi.SqlExceptionHelper), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getFactory/36801881=([org.hibernate.persister.entity.AbstractEntityPersister], org.hibernate.engine.spi.SessionFactoryImplementor), var2850_infoString/-1303038331=([org.hibernate.persister.entity.EntityPersister, java.lang.Object, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String), cast-from-var1496-to-var1061=([org.hibernate.persister.entity.AbstractEntityPersister], org.hibernate.persister.entity.EntityPersister), cast-from-var963-to-var201=([java.io.Serializable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getVersionSelectString/-1157951847=([org.hibernate.persister.entity.AbstractEntityPersister], java.lang.String), convert/1666256987=([org.hibernate.engine.jdbc.spi.SqlExceptionHelper, java.sql.SQLException, java.lang.String, java.lang.String], org.hibernate.JDBCException), cast-from-var3156-to-var1677=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var1496=org.hibernate.persister.entity.AbstractEntityPersister, var2241=r3, var963=java.io.Serializable, var1371=r6, var2590=org.hibernate.engine.spi.SharedSessionContractImplementor, var153=r1, var1584=org.hibernate.internal.CoreMessageLogger, var3585=$r0, var1585=$z0, var3999=java.sql.SQLException, var1507=$r37, var189=org.hibernate.engine.jdbc.spi.JdbcServices, var434=$r38, var2530=org.hibernate.engine.jdbc.spi.SqlExceptionHelper, var2928=$r46, var1298=$r58, var1382=$r42, var3094=org.hibernate.engine.spi.SessionFactoryImplementor, var2901=$r40, var2850=org.hibernate.pretty.MessageHelper, var1061=org.hibernate.persister.entity.EntityPersister, var201=java.lang.Object, var383=$r41, var2556=$r43, var66=$r45, var2977=$r44, var3156=org.hibernate.JDBCException, var2660=$r47, var1677=java.lang.Throwable, var1463=$r59}
; {org.hibernate.persister.entity.AbstractEntityPersister=var1496, r3=var2241, java.io.Serializable=var963, r6=var1371, org.hibernate.engine.spi.SharedSessionContractImplementor=var2590, r1=var153, org.hibernate.internal.CoreMessageLogger=var1584, $r0=var3585, $z0=var1585, java.sql.SQLException=var3999, $r37=var1507, org.hibernate.engine.jdbc.spi.JdbcServices=var189, $r38=var434, org.hibernate.engine.jdbc.spi.SqlExceptionHelper=var2530, $r46=var2928, $r58=var1298, $r42=var1382, org.hibernate.engine.spi.SessionFactoryImplementor=var3094, $r40=var2901, org.hibernate.pretty.MessageHelper=var2850, org.hibernate.persister.entity.EntityPersister=var1061, java.lang.Object=var201, $r41=var383, $r43=var2556, $r45=var66, $r44=var2977, org.hibernate.JDBCException=var3156, $r47=var2660, java.lang.Throwable=var1677, $r59=var1463}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.persister.entity.AbstractEntityPersister;	r6 := @parameter0: java.io.Serializable;	r1 := @parameter1: org.hibernate.engine.spi.SharedSessionContractImplementor;	$r0 = <org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.internal.CoreMessageLogger LOG>;	$z0 = interfaceinvoke $r0.<org.hibernate.internal.CoreMessageLogger: boolean isTraceEnabled()>();	if $z0 == 0 goto $r2 = interfaceinvoke r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcCoordinator getJdbcCoordinator()>();	$r37 := @caughtexception;	$r38 = interfaceinvoke r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>();	$r46 = interfaceinvoke $r38.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>();	$r58 = new java.lang.StringBuilder;	specialinvoke $r58.<java.lang.StringBuilder: void <init>()>();	$r42 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not retrieve version: ");	$r40 = virtualinvoke r3.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r41 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister,java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r3, r6, $r40);	$r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r45 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.String toString()>();	$r44 = virtualinvoke r3.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String getVersionSelectString()>();	$r47 = virtualinvoke $r46.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r37, $r45, $r44);	$r59 = (java.lang.Throwable) $r47;	throw $r59
;block_num 2