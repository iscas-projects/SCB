(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var797 0)
(declare-sort var2901 0)
(declare-sort var1942 0)
(declare-sort var1086 0)
(declare-sort var572 0)
(declare-sort var322 0)
(declare-sort var3371 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1942-init () var1942)
(declare-fun <init>/507859154 (var1942) void)
(declare-fun setTableName/1206575247 (var1942 String) var1942)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setWhere/-1280886943 (var1942 String) var1942)
(declare-fun factory/-113976271 (var572) var1086)
(declare-fun cast-from-var797-to-var572 (var797) var572)
(declare-fun var3371_getSessionFactoryOptions/-1909602825 (var3371) var322)
(declare-fun cast-from-var1086-to-var3371 (var1086) var3371)
(declare-fun var322_isCommentsEnabled/348952998 (var322) Bool)
(declare-fun toStatementString/-338459744 (var1942) String)
(declare-const null-var797 var797)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2844 var797) ; Statement: r14 := @this: org.hibernate.hql.spi.id.TableBasedDeleteHandlerImpl 
(assert (not (= var2844 null-var797)))
(declare-const var2518 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2518 null-String)))
(declare-const var414 (Array Int String)) ; Statement: r3 := @parameter1: java.lang.String[] 
(assert (not (= var414 null-__Array__Int__String__)))
(declare-const var1832 String) ; Statement: r7 := @parameter2: java.lang.String 
(assert (not (= var1832 null-String)))
(declare-const var1553 String) ; Statement: r18 := @parameter3: java.lang.String 
(assert (not (= var1553 null-String)))
(define-const var3577 var1942 var1942-init) ; Statement: $r0 = new org.hibernate.sql.Delete 
(assert true)
;(assert (<init>/507859154 var3577)) ; Statement: specialinvoke $r0.<org.hibernate.sql.Delete: void <init>()>() 

(declare-const var3577!1 var1942)
(assert true)
(define-const var2220 var1942 (setTableName/1206575247 var3577!1 var2518)) ; Statement: $r12 = virtualinvoke $r0.<org.hibernate.sql.Delete: org.hibernate.sql.Delete setTableName(java.lang.String)>(r1) 
(define-const var30 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var30)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var30!1 String)
(assert (= var30!1 ""))
(assert true)
(define-const var2698 String (append/672562846 var30!1 "(")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var30!2 String)
(assert (= var30!2 (str.++ var30!1 "(")))
(define-const var1350 String (String_join/-1520935655 (cast-from-String-to-String ", ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var414))) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r3) 
(assert true)
(define-const var409 String (append/672562846 var2698 var1350)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2698!1 String)
(assert (= var2698!1 (str.++ var2698 var1350)))
(assert true)
(define-const var1606 String (append/672562846 var409 ") IN (")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") IN (") 
(declare-const var409!1 String)
(assert (= var409!1 (str.++ var409 ") IN (")))
(assert true)
(define-const var1529 String (append/672562846 var1606 var1832)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var1606!1 String)
(assert (= var1606!1 (str.++ var1606 var1832)))
(assert true)
(define-const var2379 String (append/672562846 var1529 ")")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1529!1 String)
(assert (= var1529!1 (str.++ var1529 ")")))
(assert true)
(define-const var3764 String (toString/-2075883882 var2379)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var987 var1942 (setWhere/-1280886943 var2220 var3764)) ; Statement: r13 = virtualinvoke $r12.<org.hibernate.sql.Delete: org.hibernate.sql.Delete setWhere(java.lang.String)>($r11) 
(assert true)
(define-const var2803 var1086 (factory/-113976271 (cast-from-var797-to-var572 var2844))) ; Statement: $r15 = virtualinvoke r14.<org.hibernate.hql.spi.id.TableBasedDeleteHandlerImpl: org.hibernate.engine.spi.SessionFactoryImplementor factory()>() 
(define-const var313 var322 (var3371_getSessionFactoryOptions/-1909602825 (cast-from-var1086-to-var3371 var2803))) ; Statement: $r16 = interfaceinvoke $r15.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.boot.spi.SessionFactoryOptions getSessionFactoryOptions()>() 
(define-const var2636 Bool (var322_isCommentsEnabled/348952998 var313)) ; Statement: $z0 = interfaceinvoke $r16.<org.hibernate.boot.spi.SessionFactoryOptions: boolean isCommentsEnabled()>() 
 ; Statement: if $z0 == 0 goto $r17 = virtualinvoke r13.<org.hibernate.sql.Delete: java.lang.String toStatementString()>() 
(assert (= (ite var2636 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2699 String (toStatementString/-338459744 var987)) ; Statement: $r17 = virtualinvoke r13.<org.hibernate.sql.Delete: java.lang.String toStatementString()>() 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var1942-init=([], org.hibernate.sql.Delete), <init>/507859154=([org.hibernate.sql.Delete], void), setTableName/1206575247=([org.hibernate.sql.Delete, java.lang.String], org.hibernate.sql.Delete), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setWhere/-1280886943=([org.hibernate.sql.Delete, java.lang.String], org.hibernate.sql.Delete), factory/-113976271=([org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler], org.hibernate.engine.spi.SessionFactoryImplementor), cast-from-var797-to-var572=([org.hibernate.hql.spi.id.TableBasedDeleteHandlerImpl], org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler), var3371_getSessionFactoryOptions/-1909602825=([org.hibernate.SessionFactory], org.hibernate.boot.spi.SessionFactoryOptions), cast-from-var1086-to-var3371=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.SessionFactory), var322_isCommentsEnabled/348952998=([org.hibernate.boot.spi.SessionFactoryOptions], boolean), toStatementString/-338459744=([org.hibernate.sql.Delete], java.lang.String)}
; {var797=org.hibernate.hql.spi.id.TableBasedDeleteHandlerImpl, var2844=r14, var2518=r1, var2901=null_type, var414=r3, var1832=r7, var1553=r18, var1942=org.hibernate.sql.Delete, var3577=$r0, var2220=$r12, var30=$r2, var2698=$r5, var1350=$r4, var409=$r6, var1606=$r8, var1529=$r9, var2379=$r10, var3764=$r11, var987=r13, var1086=org.hibernate.engine.spi.SessionFactoryImplementor, var572=org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler, var2803=$r15, var322=org.hibernate.boot.spi.SessionFactoryOptions, var3371=org.hibernate.SessionFactory, var313=$r16, var2636=$z0, var2699=$r17}
; {org.hibernate.hql.spi.id.TableBasedDeleteHandlerImpl=var797, r14=var2844, r1=var2518, null_type=var2901, r3=var414, r7=var1832, r18=var1553, org.hibernate.sql.Delete=var1942, $r0=var3577, $r12=var2220, $r2=var30, $r5=var2698, $r4=var1350, $r6=var409, $r8=var1606, $r9=var1529, $r10=var2379, $r11=var3764, r13=var987, org.hibernate.engine.spi.SessionFactoryImplementor=var1086, org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler=var572, $r15=var2803, org.hibernate.boot.spi.SessionFactoryOptions=var322, org.hibernate.SessionFactory=var3371, $r16=var313, $z0=var2636, $r17=var2699}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r14 := @this: org.hibernate.hql.spi.id.TableBasedDeleteHandlerImpl;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String[];	r7 := @parameter2: java.lang.String;	r18 := @parameter3: java.lang.String;	$r0 = new org.hibernate.sql.Delete;	specialinvoke $r0.<org.hibernate.sql.Delete: void <init>()>();	$r12 = virtualinvoke $r0.<org.hibernate.sql.Delete: org.hibernate.sql.Delete setTableName(java.lang.String)>(r1);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r4 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") IN (");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	r13 = virtualinvoke $r12.<org.hibernate.sql.Delete: org.hibernate.sql.Delete setWhere(java.lang.String)>($r11);	$r15 = virtualinvoke r14.<org.hibernate.hql.spi.id.TableBasedDeleteHandlerImpl: org.hibernate.engine.spi.SessionFactoryImplementor factory()>();	$r16 = interfaceinvoke $r15.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.boot.spi.SessionFactoryOptions getSessionFactoryOptions()>();	$z0 = interfaceinvoke $r16.<org.hibernate.boot.spi.SessionFactoryOptions: boolean isCommentsEnabled()>();	if $z0 == 0 goto $r17 = virtualinvoke r13.<org.hibernate.sql.Delete: java.lang.String toStatementString()>();	$r17 = virtualinvoke r13.<org.hibernate.sql.Delete: java.lang.String toStatementString()>();	return $r17
;block_num 2