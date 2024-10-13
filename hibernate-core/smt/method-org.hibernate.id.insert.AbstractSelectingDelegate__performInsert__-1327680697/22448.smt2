(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3411 0)
(declare-sort var3691 0)
(declare-sort var888 0)
(declare-sort var2056 0)
(declare-sort var2795 0)
(declare-sort var1647 0)
(declare-sort var1728 0)
(declare-sort var2097 0)
(declare-sort var2020 0)
(declare-sort var2982 0)
(declare-sort var295 0)
(declare-sort var3479 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var888_getJdbcServices/-1615476239 (var888) var1647)
(declare-fun var1647_getSqlExceptionHelper/1800321680 (var1647) var1728)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun persister/1204365121 (var3411) var2097)
(declare-fun var2020_infoString/-1755730994 (var2982) String)
(declare-fun cast-from-var2097-to-var2982 (var2097) var2982)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun convert/1666256987 (var1728 var2795 String String) var295)
(declare-fun cast-from-var295-to-var3479 (var295) var3479)
(declare-const null-var3411 var3411)
(declare-const null-String String)
(declare-const null-var888 var888)
(declare-const null-var2056 var2056)
(declare-const null-var2795 var2795)
(declare-const var905 var3411) ; Statement: r11 := @this: org.hibernate.id.insert.AbstractSelectingDelegate 
(assert (not (= var905 null-var3411)))
(declare-const var2414 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2414 null-String)))
(declare-const var3712 var888) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var3712 null-var888)))
(declare-const var273 var2056) ; Statement: r4 := @parameter2: org.hibernate.id.insert.Binder 
(assert (not (= var273 null-var2056)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1388 var2795) ; Statement: $r46 := @caughtexception 
(assert (not (= var1388 null-var2795)))
(define-const var1702 var1647 (var888_getJdbcServices/-1615476239 var3712)) ; Statement: $r47 = interfaceinvoke r0.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>() 
(define-const var269 var1728 (var1647_getSqlExceptionHelper/1800321680 var1702)) ; Statement: $r54 = interfaceinvoke $r47.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>() 
(define-const var3287 String String-init) ; Statement: $r64 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3287)) ; Statement: specialinvoke $r64.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3287!1 String)
(assert (= var3287!1 ""))
(assert true)
(define-const var3742 String (append/672562846 var3287!1 "could not insert: ")) ; Statement: $r51 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not insert: ") 
(declare-const var3287!2 String)
(assert (= var3287!2 (str.++ var3287!1 "could not insert: ")))
(define-const var1163 var2097 (persister/1204365121 var905)) ; Statement: $r49 = r11.<org.hibernate.id.insert.AbstractSelectingDelegate: org.hibernate.id.PostInsertIdentityPersister persister> 
(define-const var353 String (var2020_infoString/-1755730994 (cast-from-var2097-to-var2982 var1163))) ; Statement: $r50 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister)>($r49) 
(assert true)
(define-const var2599 String (append/672562846 var3742 var353)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r50) 
(declare-const var3742!1 String)
(assert (= var3742!1 (str.++ var3742 var353)))
(assert true)
(define-const var852 String (toString/-2075883882 var2599)) ; Statement: $r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1025 var295 (convert/1666256987 var269 var1388 var852 var2414)) ; Statement: $r55 = virtualinvoke $r54.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r46, $r53, r2) 
(define-const var3588 var3479 (cast-from-var295-to-var3479 var1025)) ; Statement: $r66 = (java.lang.Throwable) $r55 
 ; Statement: throw $r66 
(check-sat)
(get-model)
(get-unsat-core)
; {var888_getJdbcServices/-1615476239=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.jdbc.spi.JdbcServices), var1647_getSqlExceptionHelper/1800321680=([org.hibernate.engine.jdbc.spi.JdbcServices], org.hibernate.engine.jdbc.spi.SqlExceptionHelper), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), persister/1204365121=([org.hibernate.id.insert.AbstractSelectingDelegate], org.hibernate.id.PostInsertIdentityPersister), var2020_infoString/-1755730994=([org.hibernate.persister.entity.EntityPersister], java.lang.String), cast-from-var2097-to-var2982=([org.hibernate.id.PostInsertIdentityPersister], org.hibernate.persister.entity.EntityPersister), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), convert/1666256987=([org.hibernate.engine.jdbc.spi.SqlExceptionHelper, java.sql.SQLException, java.lang.String, java.lang.String], org.hibernate.JDBCException), cast-from-var295-to-var3479=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var3411=org.hibernate.id.insert.AbstractSelectingDelegate, var905=r11, var2414=r2, var3691=null_type, var888=org.hibernate.engine.spi.SharedSessionContractImplementor, var3712=r0, var2056=org.hibernate.id.insert.Binder, var273=r4, var2795=java.sql.SQLException, var1388=$r46, var1647=org.hibernate.engine.jdbc.spi.JdbcServices, var1702=$r47, var1728=org.hibernate.engine.jdbc.spi.SqlExceptionHelper, var269=$r54, var3287=$r64, var3742=$r51, var2097=org.hibernate.id.PostInsertIdentityPersister, var1163=$r49, var2020=org.hibernate.pretty.MessageHelper, var2982=org.hibernate.persister.entity.EntityPersister, var353=$r50, var2599=$r52, var852=$r53, var295=org.hibernate.JDBCException, var1025=$r55, var3479=java.lang.Throwable, var3588=$r66}
; {org.hibernate.id.insert.AbstractSelectingDelegate=var3411, r11=var905, r2=var2414, null_type=var3691, org.hibernate.engine.spi.SharedSessionContractImplementor=var888, r0=var3712, org.hibernate.id.insert.Binder=var2056, r4=var273, java.sql.SQLException=var2795, $r46=var1388, org.hibernate.engine.jdbc.spi.JdbcServices=var1647, $r47=var1702, org.hibernate.engine.jdbc.spi.SqlExceptionHelper=var1728, $r54=var269, $r64=var3287, $r51=var3742, org.hibernate.id.PostInsertIdentityPersister=var2097, $r49=var1163, org.hibernate.pretty.MessageHelper=var2020, org.hibernate.persister.entity.EntityPersister=var2982, $r50=var353, $r52=var2599, $r53=var852, org.hibernate.JDBCException=var295, $r55=var1025, java.lang.Throwable=var3479, $r66=var3588}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.hibernate.id.insert.AbstractSelectingDelegate;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.SharedSessionContractImplementor;	r4 := @parameter2: org.hibernate.id.insert.Binder;	$r46 := @caughtexception;	$r47 = interfaceinvoke r0.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>();	$r54 = interfaceinvoke $r47.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>();	$r64 = new java.lang.StringBuilder;	specialinvoke $r64.<java.lang.StringBuilder: void <init>()>();	$r51 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not insert: ");	$r49 = r11.<org.hibernate.id.insert.AbstractSelectingDelegate: org.hibernate.id.PostInsertIdentityPersister persister>;	$r50 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister)>($r49);	$r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r50);	$r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.String toString()>();	$r55 = virtualinvoke $r54.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r46, $r53, r2);	$r66 = (java.lang.Throwable) $r55;	throw $r66
;block_num 2