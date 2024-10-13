(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var788 0)
(declare-sort var689 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isImplied/989199759 (var788) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun isCollectionJoin/497542235 (var788) Bool)
(declare-fun fetch/1214266158 (var788) Bool)
(declare-fun isAllPropertyFetch/1214266158 (var788) Bool)
(declare-fun getClassAlias/-1384515022 (var788) String)
(declare-fun role/1214266158 (var788) String)
(declare-fun getTableName/693895703 (var788) String)
(declare-fun getTableAlias/-89139576 (var788) String)
(declare-fun getRealOrigin/-214553715 (var788) var788)
(declare-fun getText/-2049517291 (var689) String)
(declare-fun cast-from-var788-to-var689 (var788) var689)
(declare-fun columns/1214266158 (var788) (Array Int String))
(declare-fun className/1214266158 (var788) String)
(declare-const null-var788 var788)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var479 var788) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.FromElement 
(assert (not (= var479 null-var788)))
(declare-const var2682 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2682 null-String)))
(assert true)
(define-const var1399 Bool (isImplied/989199759 var479)) ; Statement: $z0 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean isImplied()>() 
 ; Statement: if $z0 == 0 goto $r22 = "explicit" 
(assert (= (ite var1399 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3626 String "explicit") ; Statement: $r22 = "explicit" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2682 var3626)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var2682!1 String)
(assert (= var2682!1 (str.++ var2682 var3626)))
(assert true)
(define-const var2086 String (append/672562846 var2682!1 ",")) ; Statement: $r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var2682!2 String)
(assert (= var2682!2 (str.++ var2682!1 ",")))
(assert true)
(define-const var3007 Bool (isCollectionJoin/497542235 var479)) ; Statement: $z4 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean isCollectionJoin()>() 
 ; Statement: if $z4 == 0 goto $r23 = "not a collection join" 
(assert (= (ite var3007 1 0) 0)) ; Cond: $z4 == 0 
(define-const var1117 String "not a collection join") ; Statement: $r23 = "not a collection join" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2086 var1117)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var2086!1 String)
(assert (= var2086!1 (str.++ var2086 var1117)))
(assert true)
(define-const var2589 String (append/672562846 var2682!2 ",")) ; Statement: $r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var2682!3 String)
(assert (= var2682!3 (str.++ var2682!2 ",")))
(define-const var984 Bool (fetch/1214266158 var479)) ; Statement: $z1 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean fetch> 
 ; Statement: if $z1 == 0 goto $r24 = "not a fetch join" 
(assert (= (ite var984 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3495 String "not a fetch join") ; Statement: $r24 = "not a fetch join" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2589 var3495)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var2589!1 String)
(assert (= var2589!1 (str.++ var2589 var3495)))
(assert true)
(define-const var2616 String (append/672562846 var2682!3 ",")) ; Statement: $r4 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var2682!4 String)
(assert (= var2682!4 (str.++ var2682!3 ",")))
(define-const var1176 Bool (isAllPropertyFetch/1214266158 var479)) ; Statement: $z2 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean isAllPropertyFetch> 
 ; Statement: if $z2 == 0 goto $r25 = "fetch non-lazy properties" 
(assert (not (= (ite var1176 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1903 String "fetch all properties") ; Statement: $r25 = "fetch all properties" 
 ; Statement: goto [?= virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2616 var1903)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var2616!1 String)
(assert (= var2616!1 (str.++ var2616 var1903)))
(assert true)
(define-const var3058 String (append/672562846 var2682!4 ",classAlias=")) ; Statement: $r6 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",classAlias=") 
(declare-const var2682!5 String)
(assert (= var2682!5 (str.++ var2682!4 ",classAlias=")))
(assert true)
(define-const var1038 String (getClassAlias/-1384515022 var479)) ; Statement: $r5 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getClassAlias()>() 
(assert true)
;(assert (append/672562846 var3058 var1038)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3058!1 String)
(assert (= var3058!1 (str.++ var3058 var1038)))
(assert true)
(define-const var1640 String (append/672562846 var2682!5 ",role=")) ; Statement: $r8 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",role=") 
(declare-const var2682!6 String)
(assert (= var2682!6 (str.++ var2682!5 ",role=")))
(define-const var1319 String (role/1214266158 var479)) ; Statement: $r7 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String role> 
(assert true)
;(assert (append/672562846 var1640 var1319)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1640!1 String)
(assert (= var1640!1 (str.++ var1640 var1319)))
(assert true)
(define-const var1807 String (append/672562846 var2682!6 ",tableName=")) ; Statement: $r10 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",tableName=") 
(declare-const var2682!7 String)
(assert (= var2682!7 (str.++ var2682!6 ",tableName=")))
(assert true)
(define-const var1811 String (getTableName/693895703 var479)) ; Statement: $r9 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getTableName()>() 
(assert true)
;(assert (append/672562846 var1807 var1811)) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1807!1 String)
(assert (= var1807!1 (str.++ var1807 var1811)))
(assert true)
(define-const var831 String (append/672562846 var2682!7 ",tableAlias=")) ; Statement: $r12 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",tableAlias=") 
(declare-const var2682!8 String)
(assert (= var2682!8 (str.++ var2682!7 ",tableAlias=")))
(assert true)
(define-const var2543 String (getTableAlias/-89139576 var479)) ; Statement: $r11 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getTableAlias()>() 
(assert true)
;(assert (append/672562846 var831 var2543)) ; Statement: virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var831!1 String)
(assert (= var831!1 (str.++ var831 var2543)))
(assert true)
(define-const var2239 var788 (getRealOrigin/-214553715 var479)) ; Statement: $r21 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.hql.internal.ast.tree.FromElement getRealOrigin()>() 
(assert true)
(define-const var975 String (append/672562846 var2682!8 ",origin=")) ; Statement: $r13 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",origin=") 
(declare-const var2682!9 String)
(assert (= var2682!9 (str.++ var2682!8 ",origin=")))
 ; Statement: if $r21 != null goto $r26 = virtualinvoke $r21.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getText()>() 
(assert (not (= var2239 null-var788))) ; Cond: $r21 != null 
(assert true)
(define-const var3375 String (getText/-2049517291 (cast-from-var788-to-var689 var2239))) ; Statement: $r26 = virtualinvoke $r21.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getText()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var975 var3375)) ; Statement: virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var975!1 String)
(assert (= var975!1 (str.++ var975 var3375)))
(assert true)
;(assert (append/672562846 var2682!9 ",columns={")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",columns={") 
(declare-const var2682!10 String)
(assert (= var2682!10 (str.++ var2682!9 ",columns={")))
(define-const var3113 (Array Int String) (columns/1214266158 var479)) ; Statement: $r14 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String[] columns> 
 ; Statement: if $r14 == null goto $r16 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",className=") 
(assert (= var3113 null-__Array__Int__String__)) ; Cond: $r14 == null 
(assert true)
(define-const var2884 String (append/672562846 var2682!10 ",className=")) ; Statement: $r16 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",className=") 
(declare-const var2682!11 String)
(assert (= var2682!11 (str.++ var2682!10 ",className=")))
(define-const var1550 String (className/1214266158 var479)) ; Statement: $r15 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String className> 
(assert true)
;(assert (append/672562846 var2884 var1550)) ; Statement: virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var2884!1 String)
(assert (= var2884!1 (str.++ var2884 var1550)))
(assert true)
;(assert (append/672562846 var2682!11 "}")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var2682!12 String)
(assert (= var2682!12 (str.++ var2682!11 "}")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isImplied/989199759=([org.hibernate.hql.internal.ast.tree.FromElement], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), isCollectionJoin/497542235=([org.hibernate.hql.internal.ast.tree.FromElement], boolean), fetch/1214266158=([org.hibernate.hql.internal.ast.tree.FromElement], boolean), isAllPropertyFetch/1214266158=([org.hibernate.hql.internal.ast.tree.FromElement], boolean), getClassAlias/-1384515022=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), role/1214266158=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), getTableName/693895703=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), getTableAlias/-89139576=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), getRealOrigin/-214553715=([org.hibernate.hql.internal.ast.tree.FromElement], org.hibernate.hql.internal.ast.tree.FromElement), getText/-2049517291=([antlr.CommonAST], java.lang.String), cast-from-var788-to-var689=([org.hibernate.hql.internal.ast.tree.FromElement], antlr.CommonAST), columns/1214266158=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String[]), className/1214266158=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String)}
; {var788=org.hibernate.hql.internal.ast.tree.FromElement, var479=r1, var2682=r0, var1399=$z0, var3626=$r22, var2086=$r2, var3007=$z4, var1117=$r23, var2589=$r3, var984=$z1, var3495=$r24, var2616=$r4, var1176=$z2, var1903=$r25, var3058=$r6, var1038=$r5, var1640=$r8, var1319=$r7, var1807=$r10, var1811=$r9, var831=$r12, var2543=$r11, var2239=$r21, var975=$r13, var689=antlr.CommonAST, var3375=$r26, var3113=$r14, var2884=$r16, var1550=$r15}
; {org.hibernate.hql.internal.ast.tree.FromElement=var788, r1=var479, r0=var2682, $z0=var1399, $r22=var3626, $r2=var2086, $z4=var3007, $r23=var1117, $r3=var2589, $z1=var984, $r24=var3495, $r4=var2616, $z2=var1176, $r25=var1903, $r6=var3058, $r5=var1038, $r8=var1640, $r7=var1319, $r10=var1807, $r9=var1811, $r12=var831, $r11=var2543, $r21=var2239, $r13=var975, antlr.CommonAST=var689, $r26=var3375, $r14=var3113, $r16=var2884, $r15=var1550}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 21}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.FromElement;	r0 := @parameter0: java.lang.StringBuilder;	$z0 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean isImplied()>();	if $z0 == 0 goto $r22 = "explicit";	$r22 = "explicit";	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$z4 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean isCollectionJoin()>();	if $z4 == 0 goto $r23 = "not a collection join";	$r23 = "not a collection join";	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$z1 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean fetch>;	if $z1 == 0 goto $r24 = "not a fetch join";	$r24 = "not a fetch join";	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r4 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$z2 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean isAllPropertyFetch>;	if $z2 == 0 goto $r25 = "fetch non-lazy properties";	$r25 = "fetch all properties";	goto [?= virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25)];	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r6 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",classAlias=");	$r5 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getClassAlias()>();	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",role=");	$r7 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String role>;	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",tableName=");	$r9 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getTableName()>();	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",tableAlias=");	$r11 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getTableAlias()>();	virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r21 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.hql.internal.ast.tree.FromElement getRealOrigin()>();	$r13 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",origin=");	if $r21 != null goto $r26 = virtualinvoke $r21.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getText()>();	$r26 = virtualinvoke $r21.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getText()>();	virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",columns={");	$r14 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String[] columns>;	if $r14 == null goto $r16 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",className=");	$r16 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",className=");	$r15 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String className>;	virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	return
;block_num 12