(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1593 0)
(declare-sort var3552 0)
(declare-sort var3462 0)
(declare-sort var2220 0)
(declare-sort var2744 0)
(declare-sort var1583 0)
(declare-sort var847 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3462-init () var3462)
(declare-fun <init>/507859154 (var3462) void)
(declare-fun setTableName/1206575247 (var3462 String) var3462)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setWhere/-1280886943 (var3462 String) var3462)
(declare-fun factory/-113976271 (var2744) var2220)
(declare-fun cast-from-var1593-to-var2744 (var1593) var2744)
(declare-fun var847_getSessionFactoryOptions/-1909602825 (var847) var1583)
(declare-fun cast-from-var2220-to-var847 (var2220) var847)
(declare-fun var1583_isCommentsEnabled/348952998 (var1583) Bool)
(declare-const null-var1593 var1593)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1700 var1593) ; Statement: r15 := @this: org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl 
(assert (not (= var1700 null-var1593)))
(declare-const var3295 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3295 null-String)))
(declare-const var2537 (Array Int String)) ; Statement: r3 := @parameter1: java.lang.String[] 
(assert (not (= var2537 null-__Array__Int__String__)))
(declare-const var500 String) ; Statement: r8 := @parameter2: java.lang.String 
(assert (not (= var500 null-String)))
(declare-const var1433 String) ; Statement: r18 := @parameter3: java.lang.String 
(assert (not (= var1433 null-String)))
(define-const var1124 var3462 var3462-init) ; Statement: $r0 = new org.hibernate.sql.Delete 
(assert true)
;(assert (<init>/507859154 var1124)) ; Statement: specialinvoke $r0.<org.hibernate.sql.Delete: void <init>()>() 

(declare-const var1124!1 var3462)
(assert true)
(define-const var1135 var3462 (setTableName/1206575247 var1124!1 var3295)) ; Statement: $r13 = virtualinvoke $r0.<org.hibernate.sql.Delete: org.hibernate.sql.Delete setTableName(java.lang.String)>(r1) 
(define-const var2788 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2788)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2788!1 String)
(assert (= var2788!1 ""))
(assert true)
(define-const var2083 String (append/672562846 var2788!1 "(")) ; Statement: $r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var2788!2 String)
(assert (= var2788!2 (str.++ var2788!1 "(")))
(define-const var738 (Array Int String) (cast-from-__Array__Int__String__-to-__Array__Int__String__ var2537)) ; Statement: $r4 = (java.lang.CharSequence[]) r3 
(define-const var905 String (String_join/-1520935655 (cast-from-String-to-String ", ") var738)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", $r4) 
(assert true)
(define-const var793 String (append/672562846 var2083 var905)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2083!1 String)
(assert (= var2083!1 (str.++ var2083 var905)))
(assert true)
(define-const var3763 String (append/672562846 var793 ") in (")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") in (") 
(declare-const var793!1 String)
(assert (= var793!1 (str.++ var793 ") in (")))
(assert true)
(define-const var591 String (append/672562846 var3763 var500)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8) 
(declare-const var3763!1 String)
(assert (= var3763!1 (str.++ var3763 var500)))
(assert true)
(define-const var1330 String (append/672562846 var591 ")")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var591!1 String)
(assert (= var591!1 (str.++ var591 ")")))
(assert true)
(define-const var426 String (toString/-2075883882 var1330)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2906 var3462 (setWhere/-1280886943 var1135 var426)) ; Statement: r14 = virtualinvoke $r13.<org.hibernate.sql.Delete: org.hibernate.sql.Delete setWhere(java.lang.String)>($r12) 
(assert true)
(define-const var3124 var2220 (factory/-113976271 (cast-from-var1593-to-var2744 var1700))) ; Statement: $r16 = virtualinvoke r15.<org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl: org.hibernate.engine.spi.SessionFactoryImplementor factory()>() 
(define-const var1757 var1583 (var847_getSessionFactoryOptions/-1909602825 (cast-from-var2220-to-var847 var3124))) ; Statement: $r17 = interfaceinvoke $r16.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.boot.spi.SessionFactoryOptions getSessionFactoryOptions()>() 
(define-const var1923 Bool (var1583_isCommentsEnabled/348952998 var1757)) ; Statement: $z0 = interfaceinvoke $r17.<org.hibernate.boot.spi.SessionFactoryOptions: boolean isCommentsEnabled()>() 
 ; Statement: if $z0 == 0 goto return r14 
(assert (= (ite var1923 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var3462-init=([], org.hibernate.sql.Delete), <init>/507859154=([org.hibernate.sql.Delete], void), setTableName/1206575247=([org.hibernate.sql.Delete, java.lang.String], org.hibernate.sql.Delete), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setWhere/-1280886943=([org.hibernate.sql.Delete, java.lang.String], org.hibernate.sql.Delete), factory/-113976271=([org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler], org.hibernate.engine.spi.SessionFactoryImplementor), cast-from-var1593-to-var2744=([org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl], org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler), var847_getSessionFactoryOptions/-1909602825=([org.hibernate.SessionFactory], org.hibernate.boot.spi.SessionFactoryOptions), cast-from-var2220-to-var847=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.SessionFactory), var1583_isCommentsEnabled/348952998=([org.hibernate.boot.spi.SessionFactoryOptions], boolean)}
; {var1593=org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl, var1700=r15, var3295=r1, var3552=null_type, var2537=r3, var500=r8, var1433=r18, var3462=org.hibernate.sql.Delete, var1124=$r0, var1135=$r13, var2788=$r2, var2083=$r6, var738=$r4, var905=$r5, var793=$r7, var3763=$r9, var591=$r10, var1330=$r11, var426=$r12, var2906=r14, var2220=org.hibernate.engine.spi.SessionFactoryImplementor, var2744=org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler, var3124=$r16, var1583=org.hibernate.boot.spi.SessionFactoryOptions, var847=org.hibernate.SessionFactory, var1757=$r17, var1923=$z0}
; {org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl=var1593, r15=var1700, r1=var3295, null_type=var3552, r3=var2537, r8=var500, r18=var1433, org.hibernate.sql.Delete=var3462, $r0=var1124, $r13=var1135, $r2=var2788, $r6=var2083, $r4=var738, $r5=var905, $r7=var793, $r9=var3763, $r10=var591, $r11=var1330, $r12=var426, r14=var2906, org.hibernate.engine.spi.SessionFactoryImplementor=var2220, org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler=var2744, $r16=var3124, org.hibernate.boot.spi.SessionFactoryOptions=var1583, org.hibernate.SessionFactory=var847, $r17=var1757, $z0=var1923}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r15 := @this: org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String[];	r8 := @parameter2: java.lang.String;	r18 := @parameter3: java.lang.String;	$r0 = new org.hibernate.sql.Delete;	specialinvoke $r0.<org.hibernate.sql.Delete: void <init>()>();	$r13 = virtualinvoke $r0.<org.hibernate.sql.Delete: org.hibernate.sql.Delete setTableName(java.lang.String)>(r1);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r4 = (java.lang.CharSequence[]) r3;	$r5 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", $r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") in (");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	r14 = virtualinvoke $r13.<org.hibernate.sql.Delete: org.hibernate.sql.Delete setWhere(java.lang.String)>($r12);	$r16 = virtualinvoke r15.<org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl: org.hibernate.engine.spi.SessionFactoryImplementor factory()>();	$r17 = interfaceinvoke $r16.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.boot.spi.SessionFactoryOptions getSessionFactoryOptions()>();	$z0 = interfaceinvoke $r17.<org.hibernate.boot.spi.SessionFactoryOptions: boolean isCommentsEnabled()>();	if $z0 == 0 goto return r14;	return r14
;block_num 2