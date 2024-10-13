(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3740 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isImplied/989199759 (var3740) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun isCollectionJoin/497542235 (var3740) Bool)
(declare-fun fetch/1214266158 (var3740) Bool)
(declare-fun isAllPropertyFetch/1214266158 (var3740) Bool)
(declare-fun getClassAlias/-1384515022 (var3740) String)
(declare-fun role/1214266158 (var3740) String)
(declare-fun getTableName/693895703 (var3740) String)
(declare-fun getTableAlias/-89139576 (var3740) String)
(declare-fun getRealOrigin/-214553715 (var3740) var3740)
(declare-fun columns/1214266158 (var3740) (Array Int String))
(declare-fun className/1214266158 (var3740) String)
(declare-const null-var3740 var3740)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1356 var3740) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.FromElement 
(assert (not (= var1356 null-var3740)))
(declare-const var3747 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3747 null-String)))
(assert true)
(define-const var25 Bool (isImplied/989199759 var1356)) ; Statement: $z0 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean isImplied()>() 
 ; Statement: if $z0 == 0 goto $r22 = "explicit" 
(assert (= (ite var25 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3990 String "explicit") ; Statement: $r22 = "explicit" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3747 var3990)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var3747!1 String)
(assert (= var3747!1 (str.++ var3747 var3990)))
(assert true)
(define-const var3541 String (append/672562846 var3747!1 ",")) ; Statement: $r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var3747!2 String)
(assert (= var3747!2 (str.++ var3747!1 ",")))
(assert true)
(define-const var3888 Bool (isCollectionJoin/497542235 var1356)) ; Statement: $z4 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean isCollectionJoin()>() 
 ; Statement: if $z4 == 0 goto $r23 = "not a collection join" 
(assert (= (ite var3888 1 0) 0)) ; Cond: $z4 == 0 
(define-const var2856 String "not a collection join") ; Statement: $r23 = "not a collection join" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3541 var2856)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var3541!1 String)
(assert (= var3541!1 (str.++ var3541 var2856)))
(assert true)
(define-const var1411 String (append/672562846 var3747!2 ",")) ; Statement: $r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var3747!3 String)
(assert (= var3747!3 (str.++ var3747!2 ",")))
(define-const var1587 Bool (fetch/1214266158 var1356)) ; Statement: $z1 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean fetch> 
 ; Statement: if $z1 == 0 goto $r24 = "not a fetch join" 
(assert (= (ite var1587 1 0) 0)) ; Cond: $z1 == 0 
(define-const var177 String "not a fetch join") ; Statement: $r24 = "not a fetch join" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1411 var177)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var1411!1 String)
(assert (= var1411!1 (str.++ var1411 var177)))
(assert true)
(define-const var580 String (append/672562846 var3747!3 ",")) ; Statement: $r4 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var3747!4 String)
(assert (= var3747!4 (str.++ var3747!3 ",")))
(define-const var2565 Bool (isAllPropertyFetch/1214266158 var1356)) ; Statement: $z2 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean isAllPropertyFetch> 
 ; Statement: if $z2 == 0 goto $r25 = "fetch non-lazy properties" 
(assert (= (ite var2565 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2857 String "fetch non-lazy properties") ; Statement: $r25 = "fetch non-lazy properties" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var580 var2857)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var580!1 String)
(assert (= var580!1 (str.++ var580 var2857)))
(assert true)
(define-const var2316 String (append/672562846 var3747!4 ",classAlias=")) ; Statement: $r6 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",classAlias=") 
(declare-const var3747!5 String)
(assert (= var3747!5 (str.++ var3747!4 ",classAlias=")))
(assert true)
(define-const var646 String (getClassAlias/-1384515022 var1356)) ; Statement: $r5 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getClassAlias()>() 
(assert true)
;(assert (append/672562846 var2316 var646)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2316!1 String)
(assert (= var2316!1 (str.++ var2316 var646)))
(assert true)
(define-const var1532 String (append/672562846 var3747!5 ",role=")) ; Statement: $r8 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",role=") 
(declare-const var3747!6 String)
(assert (= var3747!6 (str.++ var3747!5 ",role=")))
(define-const var639 String (role/1214266158 var1356)) ; Statement: $r7 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String role> 
(assert true)
;(assert (append/672562846 var1532 var639)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1532!1 String)
(assert (= var1532!1 (str.++ var1532 var639)))
(assert true)
(define-const var2455 String (append/672562846 var3747!6 ",tableName=")) ; Statement: $r10 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",tableName=") 
(declare-const var3747!7 String)
(assert (= var3747!7 (str.++ var3747!6 ",tableName=")))
(assert true)
(define-const var38 String (getTableName/693895703 var1356)) ; Statement: $r9 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getTableName()>() 
(assert true)
;(assert (append/672562846 var2455 var38)) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2455!1 String)
(assert (= var2455!1 (str.++ var2455 var38)))
(assert true)
(define-const var1652 String (append/672562846 var3747!7 ",tableAlias=")) ; Statement: $r12 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",tableAlias=") 
(declare-const var3747!8 String)
(assert (= var3747!8 (str.++ var3747!7 ",tableAlias=")))
(assert true)
(define-const var3482 String (getTableAlias/-89139576 var1356)) ; Statement: $r11 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getTableAlias()>() 
(assert true)
;(assert (append/672562846 var1652 var3482)) ; Statement: virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1652!1 String)
(assert (= var1652!1 (str.++ var1652 var3482)))
(assert true)
(define-const var2571 var3740 (getRealOrigin/-214553715 var1356)) ; Statement: $r21 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.hql.internal.ast.tree.FromElement getRealOrigin()>() 
(assert true)
(define-const var2897 String (append/672562846 var3747!8 ",origin=")) ; Statement: $r13 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",origin=") 
(declare-const var3747!9 String)
(assert (= var3747!9 (str.++ var3747!8 ",origin=")))
 ; Statement: if $r21 != null goto $r26 = virtualinvoke $r21.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getText()>() 
(assert (not (not (= var2571 null-var3740)))) ; Negate: Cond: $r21 != null  
(define-const var3442 String "null") ; Statement: $r26 = "null" 
 ; Statement: goto [?= virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2897 var3442)) ; Statement: virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var2897!1 String)
(assert (= var2897!1 (str.++ var2897 var3442)))
(assert true)
;(assert (append/672562846 var3747!9 ",columns={")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",columns={") 
(declare-const var3747!10 String)
(assert (= var3747!10 (str.++ var3747!9 ",columns={")))
(define-const var133 (Array Int String) (columns/1214266158 var1356)) ; Statement: $r14 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String[] columns> 
 ; Statement: if $r14 == null goto $r16 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",className=") 
(assert (= var133 null-__Array__Int__String__)) ; Cond: $r14 == null 
(assert true)
(define-const var2823 String (append/672562846 var3747!10 ",className=")) ; Statement: $r16 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",className=") 
(declare-const var3747!11 String)
(assert (= var3747!11 (str.++ var3747!10 ",className=")))
(define-const var2218 String (className/1214266158 var1356)) ; Statement: $r15 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String className> 
(assert true)
;(assert (append/672562846 var2823 var2218)) ; Statement: virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var2823!1 String)
(assert (= var2823!1 (str.++ var2823 var2218)))
(assert true)
;(assert (append/672562846 var3747!11 "}")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var3747!12 String)
(assert (= var3747!12 (str.++ var3747!11 "}")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isImplied/989199759=([org.hibernate.hql.internal.ast.tree.FromElement], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), isCollectionJoin/497542235=([org.hibernate.hql.internal.ast.tree.FromElement], boolean), fetch/1214266158=([org.hibernate.hql.internal.ast.tree.FromElement], boolean), isAllPropertyFetch/1214266158=([org.hibernate.hql.internal.ast.tree.FromElement], boolean), getClassAlias/-1384515022=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), role/1214266158=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), getTableName/693895703=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), getTableAlias/-89139576=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), getRealOrigin/-214553715=([org.hibernate.hql.internal.ast.tree.FromElement], org.hibernate.hql.internal.ast.tree.FromElement), columns/1214266158=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String[]), className/1214266158=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String)}
; {var3740=org.hibernate.hql.internal.ast.tree.FromElement, var1356=r1, var3747=r0, var25=$z0, var3990=$r22, var3541=$r2, var3888=$z4, var2856=$r23, var1411=$r3, var1587=$z1, var177=$r24, var580=$r4, var2565=$z2, var2857=$r25, var2316=$r6, var646=$r5, var1532=$r8, var639=$r7, var2455=$r10, var38=$r9, var1652=$r12, var3482=$r11, var2571=$r21, var2897=$r13, var3442=$r26, var133=$r14, var2823=$r16, var2218=$r15}
; {org.hibernate.hql.internal.ast.tree.FromElement=var3740, r1=var1356, r0=var3747, $z0=var25, $r22=var3990, $r2=var3541, $z4=var3888, $r23=var2856, $r3=var1411, $z1=var1587, $r24=var177, $r4=var580, $z2=var2565, $r25=var2857, $r6=var2316, $r5=var646, $r8=var1532, $r7=var639, $r10=var2455, $r9=var38, $r12=var1652, $r11=var3482, $r21=var2571, $r13=var2897, $r26=var3442, $r14=var133, $r16=var2823, $r15=var2218}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 21}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.FromElement;	r0 := @parameter0: java.lang.StringBuilder;	$z0 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean isImplied()>();	if $z0 == 0 goto $r22 = "explicit";	$r22 = "explicit";	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$z4 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean isCollectionJoin()>();	if $z4 == 0 goto $r23 = "not a collection join";	$r23 = "not a collection join";	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$z1 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean fetch>;	if $z1 == 0 goto $r24 = "not a fetch join";	$r24 = "not a fetch join";	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r4 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$z2 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean isAllPropertyFetch>;	if $z2 == 0 goto $r25 = "fetch non-lazy properties";	$r25 = "fetch non-lazy properties";	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r6 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",classAlias=");	$r5 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getClassAlias()>();	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",role=");	$r7 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String role>;	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",tableName=");	$r9 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getTableName()>();	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",tableAlias=");	$r11 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getTableAlias()>();	virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r21 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.hql.internal.ast.tree.FromElement getRealOrigin()>();	$r13 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",origin=");	if $r21 != null goto $r26 = virtualinvoke $r21.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getText()>();	$r26 = "null";	goto [?= virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26)];	virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",columns={");	$r14 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String[] columns>;	if $r14 == null goto $r16 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",className=");	$r16 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",className=");	$r15 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String className>;	virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	return
;block_num 12