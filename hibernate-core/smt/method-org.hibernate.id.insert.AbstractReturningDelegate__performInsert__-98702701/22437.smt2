(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2590 0)
(declare-sort var522 0)
(declare-sort var1738 0)
(declare-sort var1061 0)
(declare-sort var523 0)
(declare-sort var1741 0)
(declare-sort var2947 0)
(declare-sort var1489 0)
(declare-sort var1596 0)
(declare-sort var1622 0)
(declare-sort var1653 0)
(declare-sort var936 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1738_getJdbcServices/-1615476239 (var1738) var1741)
(declare-fun var1741_getSqlExceptionHelper/1800321680 (var1741) var2947)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun persister/-1353009523 (var2590) var1489)
(declare-fun var1596_infoString/-1755730994 (var1622) String)
(declare-fun cast-from-var1489-to-var1622 (var1489) var1622)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun convert/1666256987 (var2947 var523 String String) var1653)
(declare-fun cast-from-var1653-to-var936 (var1653) var936)
(declare-const null-var2590 var2590)
(declare-const null-String String)
(declare-const null-var1738 var1738)
(declare-const null-var1061 var1061)
(declare-const null-var523 var523)
(declare-const var314 var2590) ; Statement: r0 := @this: org.hibernate.id.insert.AbstractReturningDelegate 
(assert (not (= var314 null-var2590)))
(declare-const var1067 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1067 null-String)))
(declare-const var1363 var1738) ; Statement: r2 := @parameter1: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var1363 null-var1738)))
(declare-const var3133 var1061) ; Statement: r3 := @parameter2: org.hibernate.id.insert.Binder 
(assert (not (= var3133 null-var1061)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2710 var523) ; Statement: $r5 := @caughtexception 
(assert (not (= var2710 null-var523)))
(define-const var2417 var1741 (var1738_getJdbcServices/-1615476239 var1363)) ; Statement: $r6 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>() 
(define-const var2642 var2947 (var1741_getSqlExceptionHelper/1800321680 var2417)) ; Statement: $r13 = interfaceinvoke $r6.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>() 
(define-const var3871 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3871)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3871!1 String)
(assert (= var3871!1 ""))
(assert true)
(define-const var1012 String (append/672562846 var3871!1 "could not insert: ")) ; Statement: $r10 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not insert: ") 
(declare-const var3871!2 String)
(assert (= var3871!2 (str.++ var3871!1 "could not insert: ")))
(define-const var3497 var1489 (persister/-1353009523 var314)) ; Statement: $r8 = r0.<org.hibernate.id.insert.AbstractReturningDelegate: org.hibernate.id.PostInsertIdentityPersister persister> 
(define-const var1011 String (var1596_infoString/-1755730994 (cast-from-var1489-to-var1622 var3497))) ; Statement: $r9 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister)>($r8) 
(assert true)
(define-const var736 String (append/672562846 var1012 var1011)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1012!1 String)
(assert (= var1012!1 (str.++ var1012 var1011)))
(assert true)
(define-const var3514 String (toString/-2075883882 var736)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2012 var1653 (convert/1666256987 var2642 var2710 var3514 var1067)) ; Statement: $r14 = virtualinvoke $r13.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r5, $r12, r1) 
(define-const var3386 var936 (cast-from-var1653-to-var936 var2012)) ; Statement: $r18 = (java.lang.Throwable) $r14 
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var1738_getJdbcServices/-1615476239=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.jdbc.spi.JdbcServices), var1741_getSqlExceptionHelper/1800321680=([org.hibernate.engine.jdbc.spi.JdbcServices], org.hibernate.engine.jdbc.spi.SqlExceptionHelper), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), persister/-1353009523=([org.hibernate.id.insert.AbstractReturningDelegate], org.hibernate.id.PostInsertIdentityPersister), var1596_infoString/-1755730994=([org.hibernate.persister.entity.EntityPersister], java.lang.String), cast-from-var1489-to-var1622=([org.hibernate.id.PostInsertIdentityPersister], org.hibernate.persister.entity.EntityPersister), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), convert/1666256987=([org.hibernate.engine.jdbc.spi.SqlExceptionHelper, java.sql.SQLException, java.lang.String, java.lang.String], org.hibernate.JDBCException), cast-from-var1653-to-var936=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var2590=org.hibernate.id.insert.AbstractReturningDelegate, var314=r0, var1067=r1, var522=null_type, var1738=org.hibernate.engine.spi.SharedSessionContractImplementor, var1363=r2, var1061=org.hibernate.id.insert.Binder, var3133=r3, var523=java.sql.SQLException, var2710=$r5, var1741=org.hibernate.engine.jdbc.spi.JdbcServices, var2417=$r6, var2947=org.hibernate.engine.jdbc.spi.SqlExceptionHelper, var2642=$r13, var3871=$r17, var1012=$r10, var1489=org.hibernate.id.PostInsertIdentityPersister, var3497=$r8, var1596=org.hibernate.pretty.MessageHelper, var1622=org.hibernate.persister.entity.EntityPersister, var1011=$r9, var736=$r11, var3514=$r12, var1653=org.hibernate.JDBCException, var2012=$r14, var936=java.lang.Throwable, var3386=$r18}
; {org.hibernate.id.insert.AbstractReturningDelegate=var2590, r0=var314, r1=var1067, null_type=var522, org.hibernate.engine.spi.SharedSessionContractImplementor=var1738, r2=var1363, org.hibernate.id.insert.Binder=var1061, r3=var3133, java.sql.SQLException=var523, $r5=var2710, org.hibernate.engine.jdbc.spi.JdbcServices=var1741, $r6=var2417, org.hibernate.engine.jdbc.spi.SqlExceptionHelper=var2947, $r13=var2642, $r17=var3871, $r10=var1012, org.hibernate.id.PostInsertIdentityPersister=var1489, $r8=var3497, org.hibernate.pretty.MessageHelper=var1596, org.hibernate.persister.entity.EntityPersister=var1622, $r9=var1011, $r11=var736, $r12=var3514, org.hibernate.JDBCException=var1653, $r14=var2012, java.lang.Throwable=var936, $r18=var3386}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.id.insert.AbstractReturningDelegate;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: org.hibernate.engine.spi.SharedSessionContractImplementor;	r3 := @parameter2: org.hibernate.id.insert.Binder;	$r5 := @caughtexception;	$r6 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>();	$r13 = interfaceinvoke $r6.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>();	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not insert: ");	$r8 = r0.<org.hibernate.id.insert.AbstractReturningDelegate: org.hibernate.id.PostInsertIdentityPersister persister>;	$r9 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = virtualinvoke $r13.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r5, $r12, r1);	$r18 = (java.lang.Throwable) $r14;	throw $r18
;block_num 2