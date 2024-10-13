(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1846 0)
(declare-sort var2946 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isImplied/989199759 (var1846) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun isCollectionJoin/497542235 (var1846) Bool)
(declare-fun fetch/1214266158 (var1846) Bool)
(declare-fun isAllPropertyFetch/1214266158 (var1846) Bool)
(declare-fun getClassAlias/-1384515022 (var1846) String)
(declare-fun role/1214266158 (var1846) String)
(declare-fun getTableName/693895703 (var1846) String)
(declare-fun getTableAlias/-89139576 (var1846) String)
(declare-fun getRealOrigin/-214553715 (var1846) var1846)
(declare-fun getText/-2049517291 (var2946) String)
(declare-fun cast-from-var1846-to-var2946 (var1846) var2946)
(declare-fun columns/1214266158 (var1846) (Array Int String))
(declare-fun className/1214266158 (var1846) String)
(declare-const null-var1846 var1846)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2120 var1846) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.FromElement 
(assert (not (= var2120 null-var1846)))
(declare-const var3746 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3746 null-String)))
(assert true)
(define-const var3877 Bool (isImplied/989199759 var2120)) ; Statement: $z0 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean isImplied()>() 
 ; Statement: if $z0 == 0 goto $r22 = "explicit" 
(assert (= (ite var3877 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1257 String "explicit") ; Statement: $r22 = "explicit" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3746 var1257)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var3746!1 String)
(assert (= var3746!1 (str.++ var3746 var1257)))
(assert true)
(define-const var2051 String (append/672562846 var3746!1 ",")) ; Statement: $r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var3746!2 String)
(assert (= var3746!2 (str.++ var3746!1 ",")))
(assert true)
(define-const var1271 Bool (isCollectionJoin/497542235 var2120)) ; Statement: $z4 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean isCollectionJoin()>() 
 ; Statement: if $z4 == 0 goto $r23 = "not a collection join" 
(assert (= (ite var1271 1 0) 0)) ; Cond: $z4 == 0 
(define-const var338 String "not a collection join") ; Statement: $r23 = "not a collection join" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2051 var338)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var2051!1 String)
(assert (= var2051!1 (str.++ var2051 var338)))
(assert true)
(define-const var754 String (append/672562846 var3746!2 ",")) ; Statement: $r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var3746!3 String)
(assert (= var3746!3 (str.++ var3746!2 ",")))
(define-const var1302 Bool (fetch/1214266158 var2120)) ; Statement: $z1 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean fetch> 
 ; Statement: if $z1 == 0 goto $r24 = "not a fetch join" 
(assert (= (ite var1302 1 0) 0)) ; Cond: $z1 == 0 
(define-const var306 String "not a fetch join") ; Statement: $r24 = "not a fetch join" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var754 var306)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var754!1 String)
(assert (= var754!1 (str.++ var754 var306)))
(assert true)
(define-const var491 String (append/672562846 var3746!3 ",")) ; Statement: $r4 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var3746!4 String)
(assert (= var3746!4 (str.++ var3746!3 ",")))
(define-const var3117 Bool (isAllPropertyFetch/1214266158 var2120)) ; Statement: $z2 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean isAllPropertyFetch> 
 ; Statement: if $z2 == 0 goto $r25 = "fetch non-lazy properties" 
(assert (= (ite var3117 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1384 String "fetch non-lazy properties") ; Statement: $r25 = "fetch non-lazy properties" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var491 var1384)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var491!1 String)
(assert (= var491!1 (str.++ var491 var1384)))
(assert true)
(define-const var1365 String (append/672562846 var3746!4 ",classAlias=")) ; Statement: $r6 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",classAlias=") 
(declare-const var3746!5 String)
(assert (= var3746!5 (str.++ var3746!4 ",classAlias=")))
(assert true)
(define-const var2055 String (getClassAlias/-1384515022 var2120)) ; Statement: $r5 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getClassAlias()>() 
(assert true)
;(assert (append/672562846 var1365 var2055)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1365!1 String)
(assert (= var1365!1 (str.++ var1365 var2055)))
(assert true)
(define-const var447 String (append/672562846 var3746!5 ",role=")) ; Statement: $r8 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",role=") 
(declare-const var3746!6 String)
(assert (= var3746!6 (str.++ var3746!5 ",role=")))
(define-const var1180 String (role/1214266158 var2120)) ; Statement: $r7 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String role> 
(assert true)
;(assert (append/672562846 var447 var1180)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var447!1 String)
(assert (= var447!1 (str.++ var447 var1180)))
(assert true)
(define-const var3353 String (append/672562846 var3746!6 ",tableName=")) ; Statement: $r10 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",tableName=") 
(declare-const var3746!7 String)
(assert (= var3746!7 (str.++ var3746!6 ",tableName=")))
(assert true)
(define-const var1973 String (getTableName/693895703 var2120)) ; Statement: $r9 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getTableName()>() 
(assert true)
;(assert (append/672562846 var3353 var1973)) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3353!1 String)
(assert (= var3353!1 (str.++ var3353 var1973)))
(assert true)
(define-const var3240 String (append/672562846 var3746!7 ",tableAlias=")) ; Statement: $r12 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",tableAlias=") 
(declare-const var3746!8 String)
(assert (= var3746!8 (str.++ var3746!7 ",tableAlias=")))
(assert true)
(define-const var994 String (getTableAlias/-89139576 var2120)) ; Statement: $r11 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getTableAlias()>() 
(assert true)
;(assert (append/672562846 var3240 var994)) ; Statement: virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3240!1 String)
(assert (= var3240!1 (str.++ var3240 var994)))
(assert true)
(define-const var1661 var1846 (getRealOrigin/-214553715 var2120)) ; Statement: $r21 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.hql.internal.ast.tree.FromElement getRealOrigin()>() 
(assert true)
(define-const var531 String (append/672562846 var3746!8 ",origin=")) ; Statement: $r13 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",origin=") 
(declare-const var3746!9 String)
(assert (= var3746!9 (str.++ var3746!8 ",origin=")))
 ; Statement: if $r21 != null goto $r26 = virtualinvoke $r21.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getText()>() 
(assert (not (= var1661 null-var1846))) ; Cond: $r21 != null 
(assert true)
(define-const var3641 String (getText/-2049517291 (cast-from-var1846-to-var2946 var1661))) ; Statement: $r26 = virtualinvoke $r21.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getText()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var531 var3641)) ; Statement: virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var531!1 String)
(assert (= var531!1 (str.++ var531 var3641)))
(assert true)
;(assert (append/672562846 var3746!9 ",columns={")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",columns={") 
(declare-const var3746!10 String)
(assert (= var3746!10 (str.++ var3746!9 ",columns={")))
(define-const var3080 (Array Int String) (columns/1214266158 var2120)) ; Statement: $r14 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String[] columns> 
 ; Statement: if $r14 == null goto $r16 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",className=") 
(assert (= var3080 null-__Array__Int__String__)) ; Cond: $r14 == null 
(assert true)
(define-const var896 String (append/672562846 var3746!10 ",className=")) ; Statement: $r16 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",className=") 
(declare-const var3746!11 String)
(assert (= var3746!11 (str.++ var3746!10 ",className=")))
(define-const var3591 String (className/1214266158 var2120)) ; Statement: $r15 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String className> 
(assert true)
;(assert (append/672562846 var896 var3591)) ; Statement: virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var896!1 String)
(assert (= var896!1 (str.++ var896 var3591)))
(assert true)
;(assert (append/672562846 var3746!11 "}")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var3746!12 String)
(assert (= var3746!12 (str.++ var3746!11 "}")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isImplied/989199759=([org.hibernate.hql.internal.ast.tree.FromElement], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), isCollectionJoin/497542235=([org.hibernate.hql.internal.ast.tree.FromElement], boolean), fetch/1214266158=([org.hibernate.hql.internal.ast.tree.FromElement], boolean), isAllPropertyFetch/1214266158=([org.hibernate.hql.internal.ast.tree.FromElement], boolean), getClassAlias/-1384515022=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), role/1214266158=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), getTableName/693895703=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), getTableAlias/-89139576=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), getRealOrigin/-214553715=([org.hibernate.hql.internal.ast.tree.FromElement], org.hibernate.hql.internal.ast.tree.FromElement), getText/-2049517291=([antlr.CommonAST], java.lang.String), cast-from-var1846-to-var2946=([org.hibernate.hql.internal.ast.tree.FromElement], antlr.CommonAST), columns/1214266158=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String[]), className/1214266158=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String)}
; {var1846=org.hibernate.hql.internal.ast.tree.FromElement, var2120=r1, var3746=r0, var3877=$z0, var1257=$r22, var2051=$r2, var1271=$z4, var338=$r23, var754=$r3, var1302=$z1, var306=$r24, var491=$r4, var3117=$z2, var1384=$r25, var1365=$r6, var2055=$r5, var447=$r8, var1180=$r7, var3353=$r10, var1973=$r9, var3240=$r12, var994=$r11, var1661=$r21, var531=$r13, var2946=antlr.CommonAST, var3641=$r26, var3080=$r14, var896=$r16, var3591=$r15}
; {org.hibernate.hql.internal.ast.tree.FromElement=var1846, r1=var2120, r0=var3746, $z0=var3877, $r22=var1257, $r2=var2051, $z4=var1271, $r23=var338, $r3=var754, $z1=var1302, $r24=var306, $r4=var491, $z2=var3117, $r25=var1384, $r6=var1365, $r5=var2055, $r8=var447, $r7=var1180, $r10=var3353, $r9=var1973, $r12=var3240, $r11=var994, $r21=var1661, $r13=var531, antlr.CommonAST=var2946, $r26=var3641, $r14=var3080, $r16=var896, $r15=var3591}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 21}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.FromElement;	r0 := @parameter0: java.lang.StringBuilder;	$z0 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean isImplied()>();	if $z0 == 0 goto $r22 = "explicit";	$r22 = "explicit";	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$z4 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean isCollectionJoin()>();	if $z4 == 0 goto $r23 = "not a collection join";	$r23 = "not a collection join";	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$z1 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean fetch>;	if $z1 == 0 goto $r24 = "not a fetch join";	$r24 = "not a fetch join";	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r4 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$z2 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean isAllPropertyFetch>;	if $z2 == 0 goto $r25 = "fetch non-lazy properties";	$r25 = "fetch non-lazy properties";	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r6 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",classAlias=");	$r5 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getClassAlias()>();	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",role=");	$r7 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String role>;	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",tableName=");	$r9 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getTableName()>();	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",tableAlias=");	$r11 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getTableAlias()>();	virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r21 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.hql.internal.ast.tree.FromElement getRealOrigin()>();	$r13 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",origin=");	if $r21 != null goto $r26 = virtualinvoke $r21.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getText()>();	$r26 = virtualinvoke $r21.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getText()>();	virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",columns={");	$r14 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String[] columns>;	if $r14 == null goto $r16 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",className=");	$r16 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",className=");	$r15 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String className>;	virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	return
;block_num 12