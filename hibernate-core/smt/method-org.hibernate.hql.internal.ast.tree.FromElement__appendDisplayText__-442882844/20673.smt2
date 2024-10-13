(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1131 0)
(declare-sort var409 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isImplied/989199759 (var1131) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun isCollectionJoin/497542235 (var1131) Bool)
(declare-fun fetch/1214266158 (var1131) Bool)
(declare-fun isAllPropertyFetch/1214266158 (var1131) Bool)
(declare-fun getClassAlias/-1384515022 (var1131) String)
(declare-fun role/1214266158 (var1131) String)
(declare-fun getTableName/693895703 (var1131) String)
(declare-fun getTableAlias/-89139576 (var1131) String)
(declare-fun getRealOrigin/-214553715 (var1131) var1131)
(declare-fun getText/-2049517291 (var409) String)
(declare-fun cast-from-var1131-to-var409 (var1131) var409)
(declare-fun columns/1214266158 (var1131) (Array Int String))
(declare-fun className/1214266158 (var1131) String)
(declare-const null-var1131 var1131)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var255 var1131) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.FromElement 
(assert (not (= var255 null-var1131)))
(declare-const var499 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var499 null-String)))
(assert true)
(define-const var3206 Bool (isImplied/989199759 var255)) ; Statement: $z0 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean isImplied()>() 
 ; Statement: if $z0 == 0 goto $r22 = "explicit" 
(assert (= (ite var3206 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3746 String "explicit") ; Statement: $r22 = "explicit" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var499 var3746)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var499!1 String)
(assert (= var499!1 (str.++ var499 var3746)))
(assert true)
(define-const var3511 String (append/672562846 var499!1 ",")) ; Statement: $r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var499!2 String)
(assert (= var499!2 (str.++ var499!1 ",")))
(assert true)
(define-const var1243 Bool (isCollectionJoin/497542235 var255)) ; Statement: $z4 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean isCollectionJoin()>() 
 ; Statement: if $z4 == 0 goto $r23 = "not a collection join" 
(assert (not (= (ite var1243 1 0) 0))) ; Negate: Cond: $z4 == 0  
(define-const var3208 String "collection join") ; Statement: $r23 = "collection join" 
 ; Statement: goto [?= virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3511 var3208)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var3511!1 String)
(assert (= var3511!1 (str.++ var3511 var3208)))
(assert true)
(define-const var3976 String (append/672562846 var499!2 ",")) ; Statement: $r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var499!3 String)
(assert (= var499!3 (str.++ var499!2 ",")))
(define-const var766 Bool (fetch/1214266158 var255)) ; Statement: $z1 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean fetch> 
 ; Statement: if $z1 == 0 goto $r24 = "not a fetch join" 
(assert (not (= (ite var766 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2849 String "fetch join") ; Statement: $r24 = "fetch join" 
 ; Statement: goto [?= virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3976 var2849)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var3976!1 String)
(assert (= var3976!1 (str.++ var3976 var2849)))
(assert true)
(define-const var1714 String (append/672562846 var499!3 ",")) ; Statement: $r4 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var499!4 String)
(assert (= var499!4 (str.++ var499!3 ",")))
(define-const var1902 Bool (isAllPropertyFetch/1214266158 var255)) ; Statement: $z2 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean isAllPropertyFetch> 
 ; Statement: if $z2 == 0 goto $r25 = "fetch non-lazy properties" 
(assert (not (= (ite var1902 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3386 String "fetch all properties") ; Statement: $r25 = "fetch all properties" 
 ; Statement: goto [?= virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1714 var3386)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var1714!1 String)
(assert (= var1714!1 (str.++ var1714 var3386)))
(assert true)
(define-const var1809 String (append/672562846 var499!4 ",classAlias=")) ; Statement: $r6 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",classAlias=") 
(declare-const var499!5 String)
(assert (= var499!5 (str.++ var499!4 ",classAlias=")))
(assert true)
(define-const var1830 String (getClassAlias/-1384515022 var255)) ; Statement: $r5 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getClassAlias()>() 
(assert true)
;(assert (append/672562846 var1809 var1830)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1809!1 String)
(assert (= var1809!1 (str.++ var1809 var1830)))
(assert true)
(define-const var2435 String (append/672562846 var499!5 ",role=")) ; Statement: $r8 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",role=") 
(declare-const var499!6 String)
(assert (= var499!6 (str.++ var499!5 ",role=")))
(define-const var496 String (role/1214266158 var255)) ; Statement: $r7 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String role> 
(assert true)
;(assert (append/672562846 var2435 var496)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2435!1 String)
(assert (= var2435!1 (str.++ var2435 var496)))
(assert true)
(define-const var1552 String (append/672562846 var499!6 ",tableName=")) ; Statement: $r10 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",tableName=") 
(declare-const var499!7 String)
(assert (= var499!7 (str.++ var499!6 ",tableName=")))
(assert true)
(define-const var2484 String (getTableName/693895703 var255)) ; Statement: $r9 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getTableName()>() 
(assert true)
;(assert (append/672562846 var1552 var2484)) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1552!1 String)
(assert (= var1552!1 (str.++ var1552 var2484)))
(assert true)
(define-const var799 String (append/672562846 var499!7 ",tableAlias=")) ; Statement: $r12 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",tableAlias=") 
(declare-const var499!8 String)
(assert (= var499!8 (str.++ var499!7 ",tableAlias=")))
(assert true)
(define-const var1045 String (getTableAlias/-89139576 var255)) ; Statement: $r11 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getTableAlias()>() 
(assert true)
;(assert (append/672562846 var799 var1045)) ; Statement: virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var799!1 String)
(assert (= var799!1 (str.++ var799 var1045)))
(assert true)
(define-const var755 var1131 (getRealOrigin/-214553715 var255)) ; Statement: $r21 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.hql.internal.ast.tree.FromElement getRealOrigin()>() 
(assert true)
(define-const var3258 String (append/672562846 var499!8 ",origin=")) ; Statement: $r13 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",origin=") 
(declare-const var499!9 String)
(assert (= var499!9 (str.++ var499!8 ",origin=")))
 ; Statement: if $r21 != null goto $r26 = virtualinvoke $r21.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getText()>() 
(assert (not (= var755 null-var1131))) ; Cond: $r21 != null 
(assert true)
(define-const var2616 String (getText/-2049517291 (cast-from-var1131-to-var409 var755))) ; Statement: $r26 = virtualinvoke $r21.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getText()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3258 var2616)) ; Statement: virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var3258!1 String)
(assert (= var3258!1 (str.++ var3258 var2616)))
(assert true)
;(assert (append/672562846 var499!9 ",columns={")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",columns={") 
(declare-const var499!10 String)
(assert (= var499!10 (str.++ var499!9 ",columns={")))
(define-const var1688 (Array Int String) (columns/1214266158 var255)) ; Statement: $r14 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String[] columns> 
 ; Statement: if $r14 == null goto $r16 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",className=") 
(assert (= var1688 null-__Array__Int__String__)) ; Cond: $r14 == null 
(assert true)
(define-const var1274 String (append/672562846 var499!10 ",className=")) ; Statement: $r16 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",className=") 
(declare-const var499!11 String)
(assert (= var499!11 (str.++ var499!10 ",className=")))
(define-const var2980 String (className/1214266158 var255)) ; Statement: $r15 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String className> 
(assert true)
;(assert (append/672562846 var1274 var2980)) ; Statement: virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var1274!1 String)
(assert (= var1274!1 (str.++ var1274 var2980)))
(assert true)
;(assert (append/672562846 var499!11 "}")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var499!12 String)
(assert (= var499!12 (str.++ var499!11 "}")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isImplied/989199759=([org.hibernate.hql.internal.ast.tree.FromElement], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), isCollectionJoin/497542235=([org.hibernate.hql.internal.ast.tree.FromElement], boolean), fetch/1214266158=([org.hibernate.hql.internal.ast.tree.FromElement], boolean), isAllPropertyFetch/1214266158=([org.hibernate.hql.internal.ast.tree.FromElement], boolean), getClassAlias/-1384515022=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), role/1214266158=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), getTableName/693895703=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), getTableAlias/-89139576=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), getRealOrigin/-214553715=([org.hibernate.hql.internal.ast.tree.FromElement], org.hibernate.hql.internal.ast.tree.FromElement), getText/-2049517291=([antlr.CommonAST], java.lang.String), cast-from-var1131-to-var409=([org.hibernate.hql.internal.ast.tree.FromElement], antlr.CommonAST), columns/1214266158=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String[]), className/1214266158=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String)}
; {var1131=org.hibernate.hql.internal.ast.tree.FromElement, var255=r1, var499=r0, var3206=$z0, var3746=$r22, var3511=$r2, var1243=$z4, var3208=$r23, var3976=$r3, var766=$z1, var2849=$r24, var1714=$r4, var1902=$z2, var3386=$r25, var1809=$r6, var1830=$r5, var2435=$r8, var496=$r7, var1552=$r10, var2484=$r9, var799=$r12, var1045=$r11, var755=$r21, var3258=$r13, var409=antlr.CommonAST, var2616=$r26, var1688=$r14, var1274=$r16, var2980=$r15}
; {org.hibernate.hql.internal.ast.tree.FromElement=var1131, r1=var255, r0=var499, $z0=var3206, $r22=var3746, $r2=var3511, $z4=var1243, $r23=var3208, $r3=var3976, $z1=var766, $r24=var2849, $r4=var1714, $z2=var1902, $r25=var3386, $r6=var1809, $r5=var1830, $r8=var2435, $r7=var496, $r10=var1552, $r9=var2484, $r12=var799, $r11=var1045, $r21=var755, $r13=var3258, antlr.CommonAST=var409, $r26=var2616, $r14=var1688, $r16=var1274, $r15=var2980}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 21}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.FromElement;	r0 := @parameter0: java.lang.StringBuilder;	$z0 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean isImplied()>();	if $z0 == 0 goto $r22 = "explicit";	$r22 = "explicit";	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$z4 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean isCollectionJoin()>();	if $z4 == 0 goto $r23 = "not a collection join";	$r23 = "collection join";	goto [?= virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23)];	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$z1 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean fetch>;	if $z1 == 0 goto $r24 = "not a fetch join";	$r24 = "fetch join";	goto [?= virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24)];	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r4 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$z2 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean isAllPropertyFetch>;	if $z2 == 0 goto $r25 = "fetch non-lazy properties";	$r25 = "fetch all properties";	goto [?= virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25)];	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r6 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",classAlias=");	$r5 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getClassAlias()>();	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",role=");	$r7 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String role>;	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",tableName=");	$r9 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getTableName()>();	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",tableAlias=");	$r11 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getTableAlias()>();	virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r21 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.hql.internal.ast.tree.FromElement getRealOrigin()>();	$r13 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",origin=");	if $r21 != null goto $r26 = virtualinvoke $r21.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getText()>();	$r26 = virtualinvoke $r21.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getText()>();	virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",columns={");	$r14 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String[] columns>;	if $r14 == null goto $r16 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",className=");	$r16 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",className=");	$r15 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String className>;	virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	return
;block_num 12