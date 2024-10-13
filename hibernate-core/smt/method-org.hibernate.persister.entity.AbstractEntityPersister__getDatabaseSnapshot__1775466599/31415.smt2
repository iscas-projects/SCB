(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2755 0)
(declare-sort var1651 0)
(declare-sort var579 0)
(declare-sort var2510 0)
(declare-sort var1529 0)
(declare-sort var2875 0)
(declare-sort var962 0)
(declare-sort var3521 0)
(declare-sort var1114 0)
(declare-sort var1234 0)
(declare-sort var515 0)
(declare-sort var3522 0)
(declare-sort var268 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2510_isTraceEnabled/-699489552 (var2510) Bool)
(declare-fun var579_getJdbcServices/-1615476239 (var579) var2875)
(declare-fun var2875_getSqlExceptionHelper/1800321680 (var2875) var962)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getFactory/36801881 (var2755) var3521)
(declare-fun var1114_infoString/-1303038331 (var1234 var515 var3521) String)
(declare-fun cast-from-var2755-to-var1234 (var2755) var1234)
(declare-fun cast-from-var1651-to-var515 (var1651) var515)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getSQLSnapshotSelectString/-1732530689 (var2755) String)
(declare-fun convert/1666256987 (var962 var1529 String String) var3522)
(declare-fun cast-from-var3522-to-var268 (var3522) var268)
(declare-const null-var2755 var2755)
(declare-const null-var1651 var1651)
(declare-const null-var579 var579)
(declare-const var2755-LOG var2510)
(declare-const null-var1529 var1529)
(declare-const var2781 var2755) ; Statement: r3 := @this: org.hibernate.persister.entity.AbstractEntityPersister 
(assert (not (= var2781 null-var2755)))
(declare-const var336 var1651) ; Statement: r6 := @parameter0: java.io.Serializable 
(assert (not (= var336 null-var1651)))
(declare-const var2917 var579) ; Statement: r1 := @parameter1: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var2917 null-var579)))
(define-const var1123 var2510 var2755-LOG) ; Statement: $r0 = <org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.internal.CoreMessageLogger LOG> 
(define-const var620 Bool (var2510_isTraceEnabled/-699489552 var1123)) ; Statement: $z0 = interfaceinvoke $r0.<org.hibernate.internal.CoreMessageLogger: boolean isTraceEnabled()>() 
 ; Statement: if $z0 == 0 goto $r2 = interfaceinvoke r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcCoordinator getJdbcCoordinator()>() 
(assert (not (= (ite var620 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var594 var1529) ; Statement: $r34 := @caughtexception 
(assert (not (= var594 null-var1529)))
(define-const var2710 var2875 (var579_getJdbcServices/-1615476239 var2917)) ; Statement: $r35 = interfaceinvoke r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>() 
(define-const var2999 var962 (var2875_getSqlExceptionHelper/1800321680 var2710)) ; Statement: $r43 = interfaceinvoke $r35.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>() 
(define-const var3031 String String-init) ; Statement: $r55 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3031)) ; Statement: specialinvoke $r55.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3031!1 String)
(assert (= var3031!1 ""))
(assert true)
(define-const var3682 String (append/672562846 var3031!1 "could not retrieve snapshot: ")) ; Statement: $r39 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not retrieve snapshot: ") 
(declare-const var3031!2 String)
(assert (= var3031!2 (str.++ var3031!1 "could not retrieve snapshot: ")))
(assert true)
(define-const var1876 var3521 (getFactory/36801881 var2781)) ; Statement: $r37 = virtualinvoke r3.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var3318 String (var1114_infoString/-1303038331 (cast-from-var2755-to-var1234 var2781) (cast-from-var1651-to-var515 var336) var1876)) ; Statement: $r38 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister,java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r3, r6, $r37) 
(assert true)
(define-const var304 String (append/672562846 var3682 var3318)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r38) 
(declare-const var3682!1 String)
(assert (= var3682!1 (str.++ var3682 var3318)))
(assert true)
(define-const var2091 String (toString/-2075883882 var304)) ; Statement: $r42 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2284 String (getSQLSnapshotSelectString/-1732530689 var2781)) ; Statement: $r41 = virtualinvoke r3.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String getSQLSnapshotSelectString()>() 
(assert true)
(define-const var2290 var3522 (convert/1666256987 var2999 var594 var2091 var2284)) ; Statement: $r44 = virtualinvoke $r43.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r34, $r42, $r41) 
(define-const var674 var268 (cast-from-var3522-to-var268 var2290)) ; Statement: $r56 = (java.lang.Throwable) $r44 
 ; Statement: throw $r56 
(check-sat)
(get-model)
(get-unsat-core)
; {var2510_isTraceEnabled/-699489552=([org.hibernate.internal.CoreMessageLogger], boolean), var579_getJdbcServices/-1615476239=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.jdbc.spi.JdbcServices), var2875_getSqlExceptionHelper/1800321680=([org.hibernate.engine.jdbc.spi.JdbcServices], org.hibernate.engine.jdbc.spi.SqlExceptionHelper), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getFactory/36801881=([org.hibernate.persister.entity.AbstractEntityPersister], org.hibernate.engine.spi.SessionFactoryImplementor), var1114_infoString/-1303038331=([org.hibernate.persister.entity.EntityPersister, java.lang.Object, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String), cast-from-var2755-to-var1234=([org.hibernate.persister.entity.AbstractEntityPersister], org.hibernate.persister.entity.EntityPersister), cast-from-var1651-to-var515=([java.io.Serializable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getSQLSnapshotSelectString/-1732530689=([org.hibernate.persister.entity.AbstractEntityPersister], java.lang.String), convert/1666256987=([org.hibernate.engine.jdbc.spi.SqlExceptionHelper, java.sql.SQLException, java.lang.String, java.lang.String], org.hibernate.JDBCException), cast-from-var3522-to-var268=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var2755=org.hibernate.persister.entity.AbstractEntityPersister, var2781=r3, var1651=java.io.Serializable, var336=r6, var579=org.hibernate.engine.spi.SharedSessionContractImplementor, var2917=r1, var2510=org.hibernate.internal.CoreMessageLogger, var1123=$r0, var620=$z0, var1529=java.sql.SQLException, var594=$r34, var2875=org.hibernate.engine.jdbc.spi.JdbcServices, var2710=$r35, var962=org.hibernate.engine.jdbc.spi.SqlExceptionHelper, var2999=$r43, var3031=$r55, var3682=$r39, var3521=org.hibernate.engine.spi.SessionFactoryImplementor, var1876=$r37, var1114=org.hibernate.pretty.MessageHelper, var1234=org.hibernate.persister.entity.EntityPersister, var515=java.lang.Object, var3318=$r38, var304=$r40, var2091=$r42, var2284=$r41, var3522=org.hibernate.JDBCException, var2290=$r44, var268=java.lang.Throwable, var674=$r56}
; {org.hibernate.persister.entity.AbstractEntityPersister=var2755, r3=var2781, java.io.Serializable=var1651, r6=var336, org.hibernate.engine.spi.SharedSessionContractImplementor=var579, r1=var2917, org.hibernate.internal.CoreMessageLogger=var2510, $r0=var1123, $z0=var620, java.sql.SQLException=var1529, $r34=var594, org.hibernate.engine.jdbc.spi.JdbcServices=var2875, $r35=var2710, org.hibernate.engine.jdbc.spi.SqlExceptionHelper=var962, $r43=var2999, $r55=var3031, $r39=var3682, org.hibernate.engine.spi.SessionFactoryImplementor=var3521, $r37=var1876, org.hibernate.pretty.MessageHelper=var1114, org.hibernate.persister.entity.EntityPersister=var1234, java.lang.Object=var515, $r38=var3318, $r40=var304, $r42=var2091, $r41=var2284, org.hibernate.JDBCException=var3522, $r44=var2290, java.lang.Throwable=var268, $r56=var674}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.persister.entity.AbstractEntityPersister;	r6 := @parameter0: java.io.Serializable;	r1 := @parameter1: org.hibernate.engine.spi.SharedSessionContractImplementor;	$r0 = <org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.internal.CoreMessageLogger LOG>;	$z0 = interfaceinvoke $r0.<org.hibernate.internal.CoreMessageLogger: boolean isTraceEnabled()>();	if $z0 == 0 goto $r2 = interfaceinvoke r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcCoordinator getJdbcCoordinator()>();	$r34 := @caughtexception;	$r35 = interfaceinvoke r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>();	$r43 = interfaceinvoke $r35.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>();	$r55 = new java.lang.StringBuilder;	specialinvoke $r55.<java.lang.StringBuilder: void <init>()>();	$r39 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not retrieve snapshot: ");	$r37 = virtualinvoke r3.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r38 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister,java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r3, r6, $r37);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r38);	$r42 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	$r41 = virtualinvoke r3.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String getSQLSnapshotSelectString()>();	$r44 = virtualinvoke $r43.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r34, $r42, $r41);	$r56 = (java.lang.Throwable) $r44;	throw $r56
;block_num 2