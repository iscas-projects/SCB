(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var443 0)
(declare-sort var748 0)
(declare-sort var2776 0)
(declare-sort var651 0)
(declare-sort var1897 0)
(declare-sort var3204 0)
(declare-sort var2658 0)
(declare-sort var939 0)
(declare-sort var898 0)
(declare-sort var3640 0)
(declare-sort var1109 0)
(declare-sort var1052 0)
(declare-sort var2309 0)
(declare-sort var2897 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1897_isTraceEnabled/-699489552 (var1897) Bool)
(declare-fun var443_determineValueNullness/745699226 ((Array Int var748)) (Array Int Bool))
(declare-fun determinePkByNaturalIdQuery/1795884011 (var443 (Array Int Bool)) String)
(declare-fun getFactory/36801881 (var443) var2658)
(declare-fun var2658_getSQLExceptionHelper/176842062 (var2658) var939)
(declare-fun arr-var748-init () (Array Int var748))
(declare-fun var3640_asList/1779083644 ((Array Int var748)) var898)
(declare-fun cast-from-var898-to-var748 (var898) var748)
(declare-fun var1109_infoString/-1755730994 (var1052) String)
(declare-fun cast-from-var443-to-var1052 (var443) var1052)
(declare-fun cast-from-String-to-var748 (String) var748)
(declare-fun String_format/1339386452 (String (Array Int var748)) String)
(declare-fun convert/1666256987 (var939 var3204 String String) var2309)
(declare-fun cast-from-var2309-to-var2897 (var2309) var2897)
(declare-const null-var443 var443)
(declare-const null-__Array__Int__var748__ (Array Int var748))
(declare-const null-var2776 var2776)
(declare-const null-var651 var651)
(declare-const var443-LOG var1897)
(declare-const null-var3204 var3204)
(declare-const var2301 var443) ; Statement: r2 := @this: org.hibernate.persister.entity.AbstractEntityPersister 
(assert (not (= var2301 null-var443)))
(declare-const var3962 (Array Int var748)) ; Statement: r1 := @parameter0: java.lang.Object[] 
(assert (not (= var3962 null-__Array__Int__var748__)))
(declare-const var3164 var2776) ; Statement: r48 := @parameter1: org.hibernate.LockOptions 
(assert (not (= var3164 null-var2776)))
(declare-const var321 var651) ; Statement: r3 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var321 null-var651)))
(define-const var3969 var1897 var443-LOG) ; Statement: $r0 = <org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.internal.CoreMessageLogger LOG> 
(define-const var3195 Bool (var1897_isTraceEnabled/-699489552 var3969)) ; Statement: $z0 = interfaceinvoke $r0.<org.hibernate.internal.CoreMessageLogger: boolean isTraceEnabled()>() 
 ; Statement: if $z0 == 0 goto $r29 = staticinvoke <org.hibernate.persister.entity.AbstractEntityPersister: boolean[] determineValueNullness(java.lang.Object[])>(r1) 
(assert (= (ite var3195 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3068 (Array Int Bool) (var443_determineValueNullness/745699226 var3962)) ; Statement: $r29 = staticinvoke <org.hibernate.persister.entity.AbstractEntityPersister: boolean[] determineValueNullness(java.lang.Object[])>(r1) 
(assert true)
(define-const var3782 String (determinePkByNaturalIdQuery/1795884011 var2301 var3068)) ; Statement: $r30 = virtualinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String determinePkByNaturalIdQuery(boolean[])>($r29) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1875 var3204) ; Statement: $r33 := @caughtexception 
(assert (not (= var1875 null-var3204)))
(assert true)
(define-const var428 var2658 (getFactory/36801881 var2301)) ; Statement: $r34 = virtualinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var1037 var939 (var2658_getSQLExceptionHelper/176842062 var428)) ; Statement: $r39 = interfaceinvoke $r34.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSQLExceptionHelper()>() 
(define-const var2289 (Array Int var748) arr-var748-init) ; Statement: $r35 = newarray (java.lang.Object)[2] 
(define-const var1377 var898 (var3640_asList/1779083644 var3962)) ; Statement: $r36 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>(r1) 
(declare-const var2289!1 (Array Int var748))
(assert (not (= var2289!1 null-__Array__Int__var748__)))
(assert (= (select var2289!1 0) (cast-from-var898-to-var748 var1377))) ; Statement: $r35[0] = $r36 
(define-const var1107 String (var1109_infoString/-1755730994 (cast-from-var443-to-var1052 var2301))) ; Statement: $r37 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister)>(r2) 
(declare-const var2289!2 (Array Int var748))
(assert (not (= var2289!2 null-__Array__Int__var748__)))
(assert (= (select var2289!2 1) (cast-from-String-to-var748 var1107))) ; Statement: $r35[1] = $r37 
(define-const var2135 String (String_format/1339386452 "could not resolve natural-id [%s] to id : %s" var2289!2)) ; Statement: $r38 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("could not resolve natural-id [%s] to id : %s", $r35) 
(assert true)
(define-const var1218 var2309 (convert/1666256987 var1037 var1875 var2135 var3782)) ; Statement: $r40 = virtualinvoke $r39.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r33, $r38, $r30) 
(define-const var3490 var2897 (cast-from-var2309-to-var2897 var1218)) ; Statement: $r52 = (java.lang.Throwable) $r40 
 ; Statement: throw $r52 
(check-sat)
(get-model)
(get-unsat-core)
; {var1897_isTraceEnabled/-699489552=([org.hibernate.internal.CoreMessageLogger], boolean), var443_determineValueNullness/745699226=([java.lang.Object[]], boolean[]), determinePkByNaturalIdQuery/1795884011=([org.hibernate.persister.entity.AbstractEntityPersister, boolean[]], java.lang.String), getFactory/36801881=([org.hibernate.persister.entity.AbstractEntityPersister], org.hibernate.engine.spi.SessionFactoryImplementor), var2658_getSQLExceptionHelper/176842062=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.engine.jdbc.spi.SqlExceptionHelper), arr-var748-init=([], java.lang.Object[]), var3640_asList/1779083644=([java.lang.Object[]], java.util.List), cast-from-var898-to-var748=([java.util.List], java.lang.Object), var1109_infoString/-1755730994=([org.hibernate.persister.entity.EntityPersister], java.lang.String), cast-from-var443-to-var1052=([org.hibernate.persister.entity.AbstractEntityPersister], org.hibernate.persister.entity.EntityPersister), cast-from-String-to-var748=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), convert/1666256987=([org.hibernate.engine.jdbc.spi.SqlExceptionHelper, java.sql.SQLException, java.lang.String, java.lang.String], org.hibernate.JDBCException), cast-from-var2309-to-var2897=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var443=org.hibernate.persister.entity.AbstractEntityPersister, var2301=r2, var748=java.lang.Object, var3962=r1, var2776=org.hibernate.LockOptions, var3164=r48, var651=org.hibernate.engine.spi.SharedSessionContractImplementor, var321=r3, var1897=org.hibernate.internal.CoreMessageLogger, var3969=$r0, var3195=$z0, var3068=$r29, var3782=$r30, var3204=java.sql.SQLException, var1875=$r33, var2658=org.hibernate.engine.spi.SessionFactoryImplementor, var428=$r34, var939=org.hibernate.engine.jdbc.spi.SqlExceptionHelper, var1037=$r39, var2289=$r35, var898=java.util.List, var3640=java.util.Arrays, var1377=$r36, var1109=org.hibernate.pretty.MessageHelper, var1052=org.hibernate.persister.entity.EntityPersister, var1107=$r37, var2135=$r38, var2309=org.hibernate.JDBCException, var1218=$r40, var2897=java.lang.Throwable, var3490=$r52}
; {org.hibernate.persister.entity.AbstractEntityPersister=var443, r2=var2301, java.lang.Object=var748, r1=var3962, org.hibernate.LockOptions=var2776, r48=var3164, org.hibernate.engine.spi.SharedSessionContractImplementor=var651, r3=var321, org.hibernate.internal.CoreMessageLogger=var1897, $r0=var3969, $z0=var3195, $r29=var3068, $r30=var3782, java.sql.SQLException=var3204, $r33=var1875, org.hibernate.engine.spi.SessionFactoryImplementor=var2658, $r34=var428, org.hibernate.engine.jdbc.spi.SqlExceptionHelper=var939, $r39=var1037, $r35=var2289, java.util.List=var898, java.util.Arrays=var3640, $r36=var1377, org.hibernate.pretty.MessageHelper=var1109, org.hibernate.persister.entity.EntityPersister=var1052, $r37=var1107, $r38=var2135, org.hibernate.JDBCException=var2309, $r40=var1218, java.lang.Throwable=var2897, $r52=var3490}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r2 := @this: org.hibernate.persister.entity.AbstractEntityPersister;	r1 := @parameter0: java.lang.Object[];	r48 := @parameter1: org.hibernate.LockOptions;	r3 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor;	$r0 = <org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.internal.CoreMessageLogger LOG>;	$z0 = interfaceinvoke $r0.<org.hibernate.internal.CoreMessageLogger: boolean isTraceEnabled()>();	if $z0 == 0 goto $r29 = staticinvoke <org.hibernate.persister.entity.AbstractEntityPersister: boolean[] determineValueNullness(java.lang.Object[])>(r1);	$r29 = staticinvoke <org.hibernate.persister.entity.AbstractEntityPersister: boolean[] determineValueNullness(java.lang.Object[])>(r1);	$r30 = virtualinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String determinePkByNaturalIdQuery(boolean[])>($r29);	$r33 := @caughtexception;	$r34 = virtualinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r39 = interfaceinvoke $r34.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSQLExceptionHelper()>();	$r35 = newarray (java.lang.Object)[2];	$r36 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>(r1);	$r35[0] = $r36;	$r37 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister)>(r2);	$r35[1] = $r37;	$r38 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("could not resolve natural-id [%s] to id : %s", $r35);	$r40 = virtualinvoke $r39.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r33, $r38, $r30);	$r52 = (java.lang.Throwable) $r40;	throw $r52
;block_num 3