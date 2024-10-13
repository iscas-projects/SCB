(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3351 0)
(declare-sort var2503 0)
(declare-sort var3242 0)
(declare-sort var845 0)
(declare-sort var2119 0)
(declare-sort var2734 0)
(declare-sort var3531 0)
(declare-sort var3656 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun rhsAlias/487596375 (var3351) String)
(declare-fun enabledFilters/487596375 (var3351) var845)
(declare-fun var2119_getManyToManyFilterFragment/-321101938 (var2119 String var845) String)
(declare-fun cast-from-var3242-to-var2119 (var3242) var2119)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun on/487596375 (var3351) String)
(declare-fun joinable/487596375 (var3351) var3531)
(declare-fun var3531_getTableName/48490405 (var3531) String)
(declare-fun lhsColumns/487596375 (var3351) (Array Int String))
(declare-fun rhsColumns/487596375 (var3351) (Array Int String))
(declare-fun joinType/487596375 (var3351) var3656)
(declare-fun addJoin/1751569653 (var2503 String String (Array Int String) (Array Int String) var3656 String) void)
(declare-fun var3531_fromJoinFragment/-2074841343 (var3531 String Bool Bool) String)
(declare-fun var3531_whereJoinFragment/-1044814674 (var3531 String Bool Bool) String)
(declare-fun addJoins/189560555 (var2503 String String) void)
(declare-const null-var3351 var3351)
(declare-const null-var2503 var2503)
(declare-const null-var3242 var3242)
(declare-const null-String String)
(declare-const var278 var3351) ; Statement: r1 := @this: org.hibernate.loader.OuterJoinableAssociation 
(assert (not (= var278 null-var3351)))
(declare-const var2686 var2503) ; Statement: r11 := @parameter0: org.hibernate.sql.JoinFragment 
(assert (not (= var2686 null-var2503)))
(declare-const var1222 var3242) ; Statement: r0 := @parameter1: org.hibernate.persister.collection.QueryableCollection 
(assert (not (= var1222 null-var3242)))
(define-const var1484 String (rhsAlias/487596375 var278)) ; Statement: $r3 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String rhsAlias> 
(define-const var318 var845 (enabledFilters/487596375 var278)) ; Statement: $r2 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.util.Map enabledFilters> 
(define-const var488 String (var2119_getManyToManyFilterFragment/-321101938 (cast-from-var3242-to-var2119 var1222) var1484 var318)) ; Statement: r4 = interfaceinvoke r0.<org.hibernate.persister.collection.QueryableCollection: java.lang.String getManyToManyFilterFragment(java.lang.String,java.util.Map)>($r3, $r2) 
 ; Statement: if r4 == null goto $r5 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String on> 
(assert (not (= var488 null-String))) ; Negate: Cond: r4 == null  
(assert true)
(define-const var718 Bool (isEmpty/-1285796103 var488)) ; Statement: $z1 = virtualinvoke r4.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto $r5 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String on> 
(assert (not (= (ite var718 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3511 String (on/487596375 var278)) ; Statement: $r13 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String on> 
 ; Statement: goto [?= $r14 = r1.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.persister.entity.Joinable joinable>] 
(assert true) ; Non Conditional
(define-const var2652 var3531 (joinable/487596375 var278)) ; Statement: $r14 = r1.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.persister.entity.Joinable joinable> 
(define-const var35 String (var3531_getTableName/48490405 var2652)) ; Statement: $r15 = interfaceinvoke $r14.<org.hibernate.persister.entity.Joinable: java.lang.String getTableName()>() 
(define-const var2657 String (rhsAlias/487596375 var278)) ; Statement: $r16 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String rhsAlias> 
(define-const var2912 (Array Int String) (lhsColumns/487596375 var278)) ; Statement: $r17 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String[] lhsColumns> 
(define-const var422 (Array Int String) (rhsColumns/487596375 var278)) ; Statement: $r18 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String[] rhsColumns> 
(define-const var2713 var3656 (joinType/487596375 var278)) ; Statement: $r19 = r1.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.sql.JoinType joinType> 
(assert true)
;(assert (addJoin/1751569653 var2686 var35 var2657 var2912 var422 var2713 var3511)) ; Statement: virtualinvoke r11.<org.hibernate.sql.JoinFragment: void addJoin(java.lang.String,java.lang.String,java.lang.String[],java.lang.String[],org.hibernate.sql.JoinType,java.lang.String)>($r15, $r16, $r17, $r18, $r19, $r13) 

(declare-const var2686!1 var2503)
(declare-const var35!1 String)
(declare-const var2657!1 String)
(declare-const var2912!1 (Array Int String))
(declare-const var422!1 (Array Int String))
(declare-const var2713!1 var3656)
(declare-const var3511!1 String)
(define-const var1523 var3531 (joinable/487596375 var278)) ; Statement: $r20 = r1.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.persister.entity.Joinable joinable> 
(define-const var1397 String (rhsAlias/487596375 var278)) ; Statement: $r21 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String rhsAlias> 
(define-const var2000 String (var3531_fromJoinFragment/-2074841343 var1523 var1397 (ite (= 1 0) true false) (ite (= 1 1) true false))) ; Statement: $r22 = interfaceinvoke $r20.<org.hibernate.persister.entity.Joinable: java.lang.String fromJoinFragment(java.lang.String,boolean,boolean)>($r21, 0, 1) 
(define-const var1738 var3531 (joinable/487596375 var278)) ; Statement: $r23 = r1.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.persister.entity.Joinable joinable> 
(define-const var457 String (rhsAlias/487596375 var278)) ; Statement: $r24 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String rhsAlias> 
(define-const var1667 String (var3531_whereJoinFragment/-1044814674 var1738 var457 (ite (= 1 0) true false) (ite (= 1 1) true false))) ; Statement: $r25 = interfaceinvoke $r23.<org.hibernate.persister.entity.Joinable: java.lang.String whereJoinFragment(java.lang.String,boolean,boolean)>($r24, 0, 1) 
(assert true)
;(assert (addJoins/189560555 var2686!1 var2000 var1667)) ; Statement: virtualinvoke r11.<org.hibernate.sql.JoinFragment: void addJoins(java.lang.String,java.lang.String)>($r22, $r25) 

(declare-const var2686!2 var2503)
(declare-const var2000!1 String)
(declare-const var1667!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {rhsAlias/487596375=([org.hibernate.loader.OuterJoinableAssociation], java.lang.String), enabledFilters/487596375=([org.hibernate.loader.OuterJoinableAssociation], java.util.Map), var2119_getManyToManyFilterFragment/-321101938=([org.hibernate.persister.collection.CollectionPersister, java.lang.String, java.util.Map], java.lang.String), cast-from-var3242-to-var2119=([org.hibernate.persister.collection.QueryableCollection], org.hibernate.persister.collection.CollectionPersister), isEmpty/-1285796103=([java.lang.String], boolean), on/487596375=([org.hibernate.loader.OuterJoinableAssociation], java.lang.String), joinable/487596375=([org.hibernate.loader.OuterJoinableAssociation], org.hibernate.persister.entity.Joinable), var3531_getTableName/48490405=([org.hibernate.persister.entity.Joinable], java.lang.String), lhsColumns/487596375=([org.hibernate.loader.OuterJoinableAssociation], java.lang.String[]), rhsColumns/487596375=([org.hibernate.loader.OuterJoinableAssociation], java.lang.String[]), joinType/487596375=([org.hibernate.loader.OuterJoinableAssociation], org.hibernate.sql.JoinType), addJoin/1751569653=([org.hibernate.sql.JoinFragment, java.lang.String, java.lang.String, java.lang.String[], java.lang.String[], org.hibernate.sql.JoinType, java.lang.String], void), var3531_fromJoinFragment/-2074841343=([org.hibernate.persister.entity.Joinable, java.lang.String, boolean, boolean], java.lang.String), var3531_whereJoinFragment/-1044814674=([org.hibernate.persister.entity.Joinable, java.lang.String, boolean, boolean], java.lang.String), addJoins/189560555=([org.hibernate.sql.JoinFragment, java.lang.String, java.lang.String], void)}
; {var3351=org.hibernate.loader.OuterJoinableAssociation, var278=r1, var2503=org.hibernate.sql.JoinFragment, var2686=r11, var3242=org.hibernate.persister.collection.QueryableCollection, var1222=r0, var1484=$r3, var845=java.util.Map, var318=$r2, var2119=org.hibernate.persister.collection.CollectionPersister, var488=r4, var2734=null_type, var718=$z1, var3511=$r13, var3531=org.hibernate.persister.entity.Joinable, var2652=$r14, var35=$r15, var2657=$r16, var2912=$r17, var422=$r18, var3656=org.hibernate.sql.JoinType, var2713=$r19, var1523=$r20, var1397=$r21, var2000=$r22, var1738=$r23, var457=$r24, var1667=$r25}
; {org.hibernate.loader.OuterJoinableAssociation=var3351, r1=var278, org.hibernate.sql.JoinFragment=var2503, r11=var2686, org.hibernate.persister.collection.QueryableCollection=var3242, r0=var1222, $r3=var1484, java.util.Map=var845, $r2=var318, org.hibernate.persister.collection.CollectionPersister=var2119, r4=var488, null_type=var2734, $z1=var718, $r13=var3511, org.hibernate.persister.entity.Joinable=var3531, $r14=var2652, $r15=var35, $r16=var2657, $r17=var2912, $r18=var422, org.hibernate.sql.JoinType=var3656, $r19=var2713, $r20=var1523, $r21=var1397, $r22=var2000, $r23=var1738, $r24=var457, $r25=var1667}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: org.hibernate.loader.OuterJoinableAssociation;	r11 := @parameter0: org.hibernate.sql.JoinFragment;	r0 := @parameter1: org.hibernate.persister.collection.QueryableCollection;	$r3 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String rhsAlias>;	$r2 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.util.Map enabledFilters>;	r4 = interfaceinvoke r0.<org.hibernate.persister.collection.QueryableCollection: java.lang.String getManyToManyFilterFragment(java.lang.String,java.util.Map)>($r3, $r2);	if r4 == null goto $r5 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String on>;	$z1 = virtualinvoke r4.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto $r5 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String on>;	$r13 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String on>;	goto [?= $r14 = r1.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.persister.entity.Joinable joinable>];	$r14 = r1.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.persister.entity.Joinable joinable>;	$r15 = interfaceinvoke $r14.<org.hibernate.persister.entity.Joinable: java.lang.String getTableName()>();	$r16 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String rhsAlias>;	$r17 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String[] lhsColumns>;	$r18 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String[] rhsColumns>;	$r19 = r1.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.sql.JoinType joinType>;	virtualinvoke r11.<org.hibernate.sql.JoinFragment: void addJoin(java.lang.String,java.lang.String,java.lang.String[],java.lang.String[],org.hibernate.sql.JoinType,java.lang.String)>($r15, $r16, $r17, $r18, $r19, $r13);	$r20 = r1.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.persister.entity.Joinable joinable>;	$r21 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String rhsAlias>;	$r22 = interfaceinvoke $r20.<org.hibernate.persister.entity.Joinable: java.lang.String fromJoinFragment(java.lang.String,boolean,boolean)>($r21, 0, 1);	$r23 = r1.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.persister.entity.Joinable joinable>;	$r24 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String rhsAlias>;	$r25 = interfaceinvoke $r23.<org.hibernate.persister.entity.Joinable: java.lang.String whereJoinFragment(java.lang.String,boolean,boolean)>($r24, 0, 1);	virtualinvoke r11.<org.hibernate.sql.JoinFragment: void addJoins(java.lang.String,java.lang.String)>($r22, $r25);	return
;block_num 4