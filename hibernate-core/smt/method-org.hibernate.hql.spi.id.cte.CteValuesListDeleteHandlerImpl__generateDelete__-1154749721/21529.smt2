(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1447 0)
(declare-sort var754 0)
(declare-sort var702 0)
(declare-sort var3112 0)
(declare-sort var781 0)
(declare-sort var3950 0)
(declare-sort var3999 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var702-init () var702)
(declare-fun <init>/507859154 (var702) void)
(declare-fun setTableName/1206575247 (var702 String) var702)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setWhere/-1280886943 (var702 String) var702)
(declare-fun factory/-113976271 (var781) var3112)
(declare-fun cast-from-var1447-to-var781 (var1447) var781)
(declare-fun var3999_getSessionFactoryOptions/-1909602825 (var3999) var3950)
(declare-fun cast-from-var3112-to-var3999 (var3112) var3999)
(declare-fun var3950_isCommentsEnabled/348952998 (var3950) Bool)
(declare-fun toStatementString/-338459744 (var702) String)
(declare-const null-var1447 var1447)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var119 var1447) ; Statement: r15 := @this: org.hibernate.hql.spi.id.cte.CteValuesListDeleteHandlerImpl 
(assert (not (= var119 null-var1447)))
(declare-const var1573 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1573 null-String)))
(declare-const var1917 (Array Int String)) ; Statement: r3 := @parameter1: java.lang.String[] 
(assert (not (= var1917 null-__Array__Int__String__)))
(declare-const var1148 String) ; Statement: r8 := @parameter2: java.lang.String 
(assert (not (= var1148 null-String)))
(declare-const var905 String) ; Statement: r19 := @parameter3: java.lang.String 
(assert (not (= var905 null-String)))
(define-const var3240 var702 var702-init) ; Statement: $r0 = new org.hibernate.sql.Delete 
(assert true)
;(assert (<init>/507859154 var3240)) ; Statement: specialinvoke $r0.<org.hibernate.sql.Delete: void <init>()>() 

(declare-const var3240!1 var702)
(assert true)
(define-const var347 var702 (setTableName/1206575247 var3240!1 var1573)) ; Statement: $r13 = virtualinvoke $r0.<org.hibernate.sql.Delete: org.hibernate.sql.Delete setTableName(java.lang.String)>(r1) 
(define-const var3505 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3505)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3505!1 String)
(assert (= var3505!1 ""))
(assert true)
(define-const var931 String (append/672562846 var3505!1 "(")) ; Statement: $r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var3505!2 String)
(assert (= var3505!2 (str.++ var3505!1 "(")))
(define-const var194 (Array Int String) (cast-from-__Array__Int__String__-to-__Array__Int__String__ var1917)) ; Statement: $r4 = (java.lang.CharSequence[]) r3 
(define-const var213 String (String_join/-1520935655 (cast-from-String-to-String ", ") var194)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", $r4) 
(assert true)
(define-const var1719 String (append/672562846 var931 var213)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var931!1 String)
(assert (= var931!1 (str.++ var931 var213)))
(assert true)
(define-const var1254 String (append/672562846 var1719 ") in (")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") in (") 
(declare-const var1719!1 String)
(assert (= var1719!1 (str.++ var1719 ") in (")))
(assert true)
(define-const var1205 String (append/672562846 var1254 var1148)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8) 
(declare-const var1254!1 String)
(assert (= var1254!1 (str.++ var1254 var1148)))
(assert true)
(define-const var3176 String (append/672562846 var1205 ")")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1205!1 String)
(assert (= var1205!1 (str.++ var1205 ")")))
(assert true)
(define-const var2979 String (toString/-2075883882 var3176)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1134 var702 (setWhere/-1280886943 var347 var2979)) ; Statement: r14 = virtualinvoke $r13.<org.hibernate.sql.Delete: org.hibernate.sql.Delete setWhere(java.lang.String)>($r12) 
(assert true)
(define-const var768 var3112 (factory/-113976271 (cast-from-var1447-to-var781 var119))) ; Statement: $r16 = virtualinvoke r15.<org.hibernate.hql.spi.id.cte.CteValuesListDeleteHandlerImpl: org.hibernate.engine.spi.SessionFactoryImplementor factory()>() 
(define-const var3831 var3950 (var3999_getSessionFactoryOptions/-1909602825 (cast-from-var3112-to-var3999 var768))) ; Statement: $r17 = interfaceinvoke $r16.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.boot.spi.SessionFactoryOptions getSessionFactoryOptions()>() 
(define-const var3837 Bool (var3950_isCommentsEnabled/348952998 var3831)) ; Statement: $z0 = interfaceinvoke $r17.<org.hibernate.boot.spi.SessionFactoryOptions: boolean isCommentsEnabled()>() 
 ; Statement: if $z0 == 0 goto $r18 = virtualinvoke r14.<org.hibernate.sql.Delete: java.lang.String toStatementString()>() 
(assert (= (ite var3837 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var112 String (toStatementString/-338459744 var1134)) ; Statement: $r18 = virtualinvoke r14.<org.hibernate.sql.Delete: java.lang.String toStatementString()>() 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var702-init=([], org.hibernate.sql.Delete), <init>/507859154=([org.hibernate.sql.Delete], void), setTableName/1206575247=([org.hibernate.sql.Delete, java.lang.String], org.hibernate.sql.Delete), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setWhere/-1280886943=([org.hibernate.sql.Delete, java.lang.String], org.hibernate.sql.Delete), factory/-113976271=([org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler], org.hibernate.engine.spi.SessionFactoryImplementor), cast-from-var1447-to-var781=([org.hibernate.hql.spi.id.cte.CteValuesListDeleteHandlerImpl], org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler), var3999_getSessionFactoryOptions/-1909602825=([org.hibernate.SessionFactory], org.hibernate.boot.spi.SessionFactoryOptions), cast-from-var3112-to-var3999=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.SessionFactory), var3950_isCommentsEnabled/348952998=([org.hibernate.boot.spi.SessionFactoryOptions], boolean), toStatementString/-338459744=([org.hibernate.sql.Delete], java.lang.String)}
; {var1447=org.hibernate.hql.spi.id.cte.CteValuesListDeleteHandlerImpl, var119=r15, var1573=r1, var754=null_type, var1917=r3, var1148=r8, var905=r19, var702=org.hibernate.sql.Delete, var3240=$r0, var347=$r13, var3505=$r2, var931=$r6, var194=$r4, var213=$r5, var1719=$r7, var1254=$r9, var1205=$r10, var3176=$r11, var2979=$r12, var1134=r14, var3112=org.hibernate.engine.spi.SessionFactoryImplementor, var781=org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler, var768=$r16, var3950=org.hibernate.boot.spi.SessionFactoryOptions, var3999=org.hibernate.SessionFactory, var3831=$r17, var3837=$z0, var112=$r18}
; {org.hibernate.hql.spi.id.cte.CteValuesListDeleteHandlerImpl=var1447, r15=var119, r1=var1573, null_type=var754, r3=var1917, r8=var1148, r19=var905, org.hibernate.sql.Delete=var702, $r0=var3240, $r13=var347, $r2=var3505, $r6=var931, $r4=var194, $r5=var213, $r7=var1719, $r9=var1254, $r10=var1205, $r11=var3176, $r12=var2979, r14=var1134, org.hibernate.engine.spi.SessionFactoryImplementor=var3112, org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler=var781, $r16=var768, org.hibernate.boot.spi.SessionFactoryOptions=var3950, org.hibernate.SessionFactory=var3999, $r17=var3831, $z0=var3837, $r18=var112}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r15 := @this: org.hibernate.hql.spi.id.cte.CteValuesListDeleteHandlerImpl;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String[];	r8 := @parameter2: java.lang.String;	r19 := @parameter3: java.lang.String;	$r0 = new org.hibernate.sql.Delete;	specialinvoke $r0.<org.hibernate.sql.Delete: void <init>()>();	$r13 = virtualinvoke $r0.<org.hibernate.sql.Delete: org.hibernate.sql.Delete setTableName(java.lang.String)>(r1);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r4 = (java.lang.CharSequence[]) r3;	$r5 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", $r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") in (");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	r14 = virtualinvoke $r13.<org.hibernate.sql.Delete: org.hibernate.sql.Delete setWhere(java.lang.String)>($r12);	$r16 = virtualinvoke r15.<org.hibernate.hql.spi.id.cte.CteValuesListDeleteHandlerImpl: org.hibernate.engine.spi.SessionFactoryImplementor factory()>();	$r17 = interfaceinvoke $r16.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.boot.spi.SessionFactoryOptions getSessionFactoryOptions()>();	$z0 = interfaceinvoke $r17.<org.hibernate.boot.spi.SessionFactoryOptions: boolean isCommentsEnabled()>();	if $z0 == 0 goto $r18 = virtualinvoke r14.<org.hibernate.sql.Delete: java.lang.String toStatementString()>();	$r18 = virtualinvoke r14.<org.hibernate.sql.Delete: java.lang.String toStatementString()>();	return $r18
;block_num 2