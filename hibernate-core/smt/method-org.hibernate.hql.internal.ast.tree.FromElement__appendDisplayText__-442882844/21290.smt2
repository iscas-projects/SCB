(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var793 0)
(declare-sort var3166 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isImplied/989199759 (var793) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun isCollectionJoin/497542235 (var793) Bool)
(declare-fun fetch/1214266158 (var793) Bool)
(declare-fun isAllPropertyFetch/1214266158 (var793) Bool)
(declare-fun getClassAlias/-1384515022 (var793) String)
(declare-fun role/1214266158 (var793) String)
(declare-fun getTableName/693895703 (var793) String)
(declare-fun getTableAlias/-89139576 (var793) String)
(declare-fun getRealOrigin/-214553715 (var793) var793)
(declare-fun getText/-2049517291 (var3166) String)
(declare-fun cast-from-var793-to-var3166 (var793) var3166)
(declare-fun columns/1214266158 (var793) (Array Int String))
(declare-fun className/1214266158 (var793) String)
(declare-const null-var793 var793)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var696 var793) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.FromElement 
(assert (not (= var696 null-var793)))
(declare-const var2367 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2367 null-String)))
(assert true)
(define-const var3615 Bool (isImplied/989199759 var696)) ; Statement: $z0 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean isImplied()>() 
 ; Statement: if $z0 == 0 goto $r22 = "explicit" 
(assert (= (ite var3615 1 0) 0)) ; Cond: $z0 == 0 
(define-const var396 String "explicit") ; Statement: $r22 = "explicit" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2367 var396)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var2367!1 String)
(assert (= var2367!1 (str.++ var2367 var396)))
(assert true)
(define-const var3820 String (append/672562846 var2367!1 ",")) ; Statement: $r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var2367!2 String)
(assert (= var2367!2 (str.++ var2367!1 ",")))
(assert true)
(define-const var3703 Bool (isCollectionJoin/497542235 var696)) ; Statement: $z4 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean isCollectionJoin()>() 
 ; Statement: if $z4 == 0 goto $r23 = "not a collection join" 
(assert (= (ite var3703 1 0) 0)) ; Cond: $z4 == 0 
(define-const var3242 String "not a collection join") ; Statement: $r23 = "not a collection join" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3820 var3242)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var3820!1 String)
(assert (= var3820!1 (str.++ var3820 var3242)))
(assert true)
(define-const var1182 String (append/672562846 var2367!2 ",")) ; Statement: $r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var2367!3 String)
(assert (= var2367!3 (str.++ var2367!2 ",")))
(define-const var3049 Bool (fetch/1214266158 var696)) ; Statement: $z1 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean fetch> 
 ; Statement: if $z1 == 0 goto $r24 = "not a fetch join" 
(assert (not (= (ite var3049 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var378 String "fetch join") ; Statement: $r24 = "fetch join" 
 ; Statement: goto [?= virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1182 var378)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var1182!1 String)
(assert (= var1182!1 (str.++ var1182 var378)))
(assert true)
(define-const var2122 String (append/672562846 var2367!3 ",")) ; Statement: $r4 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var2367!4 String)
(assert (= var2367!4 (str.++ var2367!3 ",")))
(define-const var1116 Bool (isAllPropertyFetch/1214266158 var696)) ; Statement: $z2 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean isAllPropertyFetch> 
 ; Statement: if $z2 == 0 goto $r25 = "fetch non-lazy properties" 
(assert (= (ite var1116 1 0) 0)) ; Cond: $z2 == 0 
(define-const var319 String "fetch non-lazy properties") ; Statement: $r25 = "fetch non-lazy properties" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2122 var319)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var2122!1 String)
(assert (= var2122!1 (str.++ var2122 var319)))
(assert true)
(define-const var2112 String (append/672562846 var2367!4 ",classAlias=")) ; Statement: $r6 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",classAlias=") 
(declare-const var2367!5 String)
(assert (= var2367!5 (str.++ var2367!4 ",classAlias=")))
(assert true)
(define-const var3480 String (getClassAlias/-1384515022 var696)) ; Statement: $r5 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getClassAlias()>() 
(assert true)
;(assert (append/672562846 var2112 var3480)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2112!1 String)
(assert (= var2112!1 (str.++ var2112 var3480)))
(assert true)
(define-const var2780 String (append/672562846 var2367!5 ",role=")) ; Statement: $r8 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",role=") 
(declare-const var2367!6 String)
(assert (= var2367!6 (str.++ var2367!5 ",role=")))
(define-const var1365 String (role/1214266158 var696)) ; Statement: $r7 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String role> 
(assert true)
;(assert (append/672562846 var2780 var1365)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2780!1 String)
(assert (= var2780!1 (str.++ var2780 var1365)))
(assert true)
(define-const var1022 String (append/672562846 var2367!6 ",tableName=")) ; Statement: $r10 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",tableName=") 
(declare-const var2367!7 String)
(assert (= var2367!7 (str.++ var2367!6 ",tableName=")))
(assert true)
(define-const var3312 String (getTableName/693895703 var696)) ; Statement: $r9 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getTableName()>() 
(assert true)
;(assert (append/672562846 var1022 var3312)) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1022!1 String)
(assert (= var1022!1 (str.++ var1022 var3312)))
(assert true)
(define-const var2586 String (append/672562846 var2367!7 ",tableAlias=")) ; Statement: $r12 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",tableAlias=") 
(declare-const var2367!8 String)
(assert (= var2367!8 (str.++ var2367!7 ",tableAlias=")))
(assert true)
(define-const var3572 String (getTableAlias/-89139576 var696)) ; Statement: $r11 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getTableAlias()>() 
(assert true)
;(assert (append/672562846 var2586 var3572)) ; Statement: virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2586!1 String)
(assert (= var2586!1 (str.++ var2586 var3572)))
(assert true)
(define-const var3553 var793 (getRealOrigin/-214553715 var696)) ; Statement: $r21 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.hql.internal.ast.tree.FromElement getRealOrigin()>() 
(assert true)
(define-const var2869 String (append/672562846 var2367!8 ",origin=")) ; Statement: $r13 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",origin=") 
(declare-const var2367!9 String)
(assert (= var2367!9 (str.++ var2367!8 ",origin=")))
 ; Statement: if $r21 != null goto $r26 = virtualinvoke $r21.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getText()>() 
(assert (not (= var3553 null-var793))) ; Cond: $r21 != null 
(assert true)
(define-const var3445 String (getText/-2049517291 (cast-from-var793-to-var3166 var3553))) ; Statement: $r26 = virtualinvoke $r21.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getText()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2869 var3445)) ; Statement: virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var2869!1 String)
(assert (= var2869!1 (str.++ var2869 var3445)))
(assert true)
;(assert (append/672562846 var2367!9 ",columns={")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",columns={") 
(declare-const var2367!10 String)
(assert (= var2367!10 (str.++ var2367!9 ",columns={")))
(define-const var317 (Array Int String) (columns/1214266158 var696)) ; Statement: $r14 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String[] columns> 
 ; Statement: if $r14 == null goto $r16 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",className=") 
(assert (= var317 null-__Array__Int__String__)) ; Cond: $r14 == null 
(assert true)
(define-const var1166 String (append/672562846 var2367!10 ",className=")) ; Statement: $r16 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",className=") 
(declare-const var2367!11 String)
(assert (= var2367!11 (str.++ var2367!10 ",className=")))
(define-const var1453 String (className/1214266158 var696)) ; Statement: $r15 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String className> 
(assert true)
;(assert (append/672562846 var1166 var1453)) ; Statement: virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var1166!1 String)
(assert (= var1166!1 (str.++ var1166 var1453)))
(assert true)
;(assert (append/672562846 var2367!11 "}")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var2367!12 String)
(assert (= var2367!12 (str.++ var2367!11 "}")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isImplied/989199759=([org.hibernate.hql.internal.ast.tree.FromElement], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), isCollectionJoin/497542235=([org.hibernate.hql.internal.ast.tree.FromElement], boolean), fetch/1214266158=([org.hibernate.hql.internal.ast.tree.FromElement], boolean), isAllPropertyFetch/1214266158=([org.hibernate.hql.internal.ast.tree.FromElement], boolean), getClassAlias/-1384515022=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), role/1214266158=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), getTableName/693895703=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), getTableAlias/-89139576=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), getRealOrigin/-214553715=([org.hibernate.hql.internal.ast.tree.FromElement], org.hibernate.hql.internal.ast.tree.FromElement), getText/-2049517291=([antlr.CommonAST], java.lang.String), cast-from-var793-to-var3166=([org.hibernate.hql.internal.ast.tree.FromElement], antlr.CommonAST), columns/1214266158=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String[]), className/1214266158=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String)}
; {var793=org.hibernate.hql.internal.ast.tree.FromElement, var696=r1, var2367=r0, var3615=$z0, var396=$r22, var3820=$r2, var3703=$z4, var3242=$r23, var1182=$r3, var3049=$z1, var378=$r24, var2122=$r4, var1116=$z2, var319=$r25, var2112=$r6, var3480=$r5, var2780=$r8, var1365=$r7, var1022=$r10, var3312=$r9, var2586=$r12, var3572=$r11, var3553=$r21, var2869=$r13, var3166=antlr.CommonAST, var3445=$r26, var317=$r14, var1166=$r16, var1453=$r15}
; {org.hibernate.hql.internal.ast.tree.FromElement=var793, r1=var696, r0=var2367, $z0=var3615, $r22=var396, $r2=var3820, $z4=var3703, $r23=var3242, $r3=var1182, $z1=var3049, $r24=var378, $r4=var2122, $z2=var1116, $r25=var319, $r6=var2112, $r5=var3480, $r8=var2780, $r7=var1365, $r10=var1022, $r9=var3312, $r12=var2586, $r11=var3572, $r21=var3553, $r13=var2869, antlr.CommonAST=var3166, $r26=var3445, $r14=var317, $r16=var1166, $r15=var1453}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 21}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.FromElement;	r0 := @parameter0: java.lang.StringBuilder;	$z0 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean isImplied()>();	if $z0 == 0 goto $r22 = "explicit";	$r22 = "explicit";	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$z4 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean isCollectionJoin()>();	if $z4 == 0 goto $r23 = "not a collection join";	$r23 = "not a collection join";	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$z1 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean fetch>;	if $z1 == 0 goto $r24 = "not a fetch join";	$r24 = "fetch join";	goto [?= virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24)];	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r4 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$z2 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: boolean isAllPropertyFetch>;	if $z2 == 0 goto $r25 = "fetch non-lazy properties";	$r25 = "fetch non-lazy properties";	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r6 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",classAlias=");	$r5 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getClassAlias()>();	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",role=");	$r7 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String role>;	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",tableName=");	$r9 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getTableName()>();	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",tableAlias=");	$r11 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getTableAlias()>();	virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r21 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.hql.internal.ast.tree.FromElement getRealOrigin()>();	$r13 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",origin=");	if $r21 != null goto $r26 = virtualinvoke $r21.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getText()>();	$r26 = virtualinvoke $r21.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getText()>();	virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",columns={");	$r14 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String[] columns>;	if $r14 == null goto $r16 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",className=");	$r16 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",className=");	$r15 = r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String className>;	virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	return
;block_num 12