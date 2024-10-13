(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var889 0)
(declare-sort var2612 0)
(declare-sort var1387 0)
(declare-sort var1295 0)
(declare-sort var456 0)
(declare-sort var2835 0)
(declare-sort var239 0)
(declare-sort var2208 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun rhsAlias/487596375 (var889) String)
(declare-fun enabledFilters/487596375 (var889) var1295)
(declare-fun var456_getManyToManyFilterFragment/-321101938 (var456 String var1295) String)
(declare-fun cast-from-var1387-to-var456 (var1387) var456)
(declare-fun on/487596375 (var889) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun joinable/487596375 (var889) var239)
(declare-fun var239_getTableName/48490405 (var239) String)
(declare-fun lhsColumns/487596375 (var889) (Array Int String))
(declare-fun rhsColumns/487596375 (var889) (Array Int String))
(declare-fun joinType/487596375 (var889) var2208)
(declare-fun addJoin/1751569653 (var2612 String String (Array Int String) (Array Int String) var2208 String) void)
(declare-fun var239_fromJoinFragment/-2074841343 (var239 String Bool Bool) String)
(declare-fun var239_whereJoinFragment/-1044814674 (var239 String Bool Bool) String)
(declare-fun addJoins/189560555 (var2612 String String) void)
(declare-const null-var889 var889)
(declare-const null-var2612 var2612)
(declare-const null-var1387 var1387)
(declare-const null-String String)
(declare-const var987 var889) ; Statement: r1 := @this: org.hibernate.loader.OuterJoinableAssociation 
(assert (not (= var987 null-var889)))
(declare-const var2454 var2612) ; Statement: r11 := @parameter0: org.hibernate.sql.JoinFragment 
(assert (not (= var2454 null-var2612)))
(declare-const var1761 var1387) ; Statement: r0 := @parameter1: org.hibernate.persister.collection.QueryableCollection 
(assert (not (= var1761 null-var1387)))
(define-const var1751 String (rhsAlias/487596375 var987)) ; Statement: $r3 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String rhsAlias> 
(define-const var3268 var1295 (enabledFilters/487596375 var987)) ; Statement: $r2 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.util.Map enabledFilters> 
(define-const var2606 String (var456_getManyToManyFilterFragment/-321101938 (cast-from-var1387-to-var456 var1761) var1751 var3268)) ; Statement: r4 = interfaceinvoke r0.<org.hibernate.persister.collection.QueryableCollection: java.lang.String getManyToManyFilterFragment(java.lang.String,java.util.Map)>($r3, $r2) 
 ; Statement: if r4 == null goto $r5 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String on> 
(assert (= var2606 null-String)) ; Cond: r4 == null 
(define-const var175 String (on/487596375 var987)) ; Statement: $r5 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String on> 
 ; Statement: if $r5 == null goto $r6 = new java.lang.StringBuilder 
(assert (= var175 null-String)) ; Cond: $r5 == null 
(define-const var2293 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2293)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2293!1 String)
(assert (= var2293!1 ""))
(define-const var2409 String (on/487596375 var987)) ; Statement: $r7 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String on> 
(assert true)
(define-const var2776 String (append/672562846 var2293!1 var2409)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2293!2 String)
(assert (= var2293!2 (str.++ var2293!1 var2409)))
(assert true)
(define-const var1025 String (append/672562846 var2776 " and ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ") 
(declare-const var2776!1 String)
(assert (= var2776!1 (str.++ var2776 " and ")))
(assert true)
(define-const var1231 String (append/672562846 var1025 var2606)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1025!1 String)
(assert (= var1025!1 (str.++ var1025 var2606)))
(assert true)
(define-const var1673 String (toString/-2075883882 var1231)) ; Statement: $r13 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var2581 var239 (joinable/487596375 var987)) ; Statement: $r14 = r1.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.persister.entity.Joinable joinable> 
(define-const var1405 String (var239_getTableName/48490405 var2581)) ; Statement: $r15 = interfaceinvoke $r14.<org.hibernate.persister.entity.Joinable: java.lang.String getTableName()>() 
(define-const var598 String (rhsAlias/487596375 var987)) ; Statement: $r16 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String rhsAlias> 
(define-const var920 (Array Int String) (lhsColumns/487596375 var987)) ; Statement: $r17 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String[] lhsColumns> 
(define-const var1452 (Array Int String) (rhsColumns/487596375 var987)) ; Statement: $r18 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String[] rhsColumns> 
(define-const var653 var2208 (joinType/487596375 var987)) ; Statement: $r19 = r1.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.sql.JoinType joinType> 
(assert true)
;(assert (addJoin/1751569653 var2454 var1405 var598 var920 var1452 var653 var1673)) ; Statement: virtualinvoke r11.<org.hibernate.sql.JoinFragment: void addJoin(java.lang.String,java.lang.String,java.lang.String[],java.lang.String[],org.hibernate.sql.JoinType,java.lang.String)>($r15, $r16, $r17, $r18, $r19, $r13) 

(declare-const var2454!1 var2612)
(declare-const var1405!1 String)
(declare-const var598!1 String)
(declare-const var920!1 (Array Int String))
(declare-const var1452!1 (Array Int String))
(declare-const var653!1 var2208)
(declare-const var1673!1 String)
(define-const var1367 var239 (joinable/487596375 var987)) ; Statement: $r20 = r1.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.persister.entity.Joinable joinable> 
(define-const var2641 String (rhsAlias/487596375 var987)) ; Statement: $r21 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String rhsAlias> 
(define-const var1470 String (var239_fromJoinFragment/-2074841343 var1367 var2641 (ite (= 1 0) true false) (ite (= 1 1) true false))) ; Statement: $r22 = interfaceinvoke $r20.<org.hibernate.persister.entity.Joinable: java.lang.String fromJoinFragment(java.lang.String,boolean,boolean)>($r21, 0, 1) 
(define-const var1197 var239 (joinable/487596375 var987)) ; Statement: $r23 = r1.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.persister.entity.Joinable joinable> 
(define-const var265 String (rhsAlias/487596375 var987)) ; Statement: $r24 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String rhsAlias> 
(define-const var2129 String (var239_whereJoinFragment/-1044814674 var1197 var265 (ite (= 1 0) true false) (ite (= 1 1) true false))) ; Statement: $r25 = interfaceinvoke $r23.<org.hibernate.persister.entity.Joinable: java.lang.String whereJoinFragment(java.lang.String,boolean,boolean)>($r24, 0, 1) 
(assert true)
;(assert (addJoins/189560555 var2454!1 var1470 var2129)) ; Statement: virtualinvoke r11.<org.hibernate.sql.JoinFragment: void addJoins(java.lang.String,java.lang.String)>($r22, $r25) 

(declare-const var2454!2 var2612)
(declare-const var1470!1 String)
(declare-const var2129!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {rhsAlias/487596375=([org.hibernate.loader.OuterJoinableAssociation], java.lang.String), enabledFilters/487596375=([org.hibernate.loader.OuterJoinableAssociation], java.util.Map), var456_getManyToManyFilterFragment/-321101938=([org.hibernate.persister.collection.CollectionPersister, java.lang.String, java.util.Map], java.lang.String), cast-from-var1387-to-var456=([org.hibernate.persister.collection.QueryableCollection], org.hibernate.persister.collection.CollectionPersister), on/487596375=([org.hibernate.loader.OuterJoinableAssociation], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), joinable/487596375=([org.hibernate.loader.OuterJoinableAssociation], org.hibernate.persister.entity.Joinable), var239_getTableName/48490405=([org.hibernate.persister.entity.Joinable], java.lang.String), lhsColumns/487596375=([org.hibernate.loader.OuterJoinableAssociation], java.lang.String[]), rhsColumns/487596375=([org.hibernate.loader.OuterJoinableAssociation], java.lang.String[]), joinType/487596375=([org.hibernate.loader.OuterJoinableAssociation], org.hibernate.sql.JoinType), addJoin/1751569653=([org.hibernate.sql.JoinFragment, java.lang.String, java.lang.String, java.lang.String[], java.lang.String[], org.hibernate.sql.JoinType, java.lang.String], void), var239_fromJoinFragment/-2074841343=([org.hibernate.persister.entity.Joinable, java.lang.String, boolean, boolean], java.lang.String), var239_whereJoinFragment/-1044814674=([org.hibernate.persister.entity.Joinable, java.lang.String, boolean, boolean], java.lang.String), addJoins/189560555=([org.hibernate.sql.JoinFragment, java.lang.String, java.lang.String], void)}
; {var889=org.hibernate.loader.OuterJoinableAssociation, var987=r1, var2612=org.hibernate.sql.JoinFragment, var2454=r11, var1387=org.hibernate.persister.collection.QueryableCollection, var1761=r0, var1751=$r3, var1295=java.util.Map, var3268=$r2, var456=org.hibernate.persister.collection.CollectionPersister, var2606=r4, var2835=null_type, var175=$r5, var2293=$r6, var2409=$r7, var2776=$r8, var1025=$r9, var1231=$r10, var1673=$r13, var239=org.hibernate.persister.entity.Joinable, var2581=$r14, var1405=$r15, var598=$r16, var920=$r17, var1452=$r18, var2208=org.hibernate.sql.JoinType, var653=$r19, var1367=$r20, var2641=$r21, var1470=$r22, var1197=$r23, var265=$r24, var2129=$r25}
; {org.hibernate.loader.OuterJoinableAssociation=var889, r1=var987, org.hibernate.sql.JoinFragment=var2612, r11=var2454, org.hibernate.persister.collection.QueryableCollection=var1387, r0=var1761, $r3=var1751, java.util.Map=var1295, $r2=var3268, org.hibernate.persister.collection.CollectionPersister=var456, r4=var2606, null_type=var2835, $r5=var175, $r6=var2293, $r7=var2409, $r8=var2776, $r9=var1025, $r10=var1231, $r13=var1673, org.hibernate.persister.entity.Joinable=var239, $r14=var2581, $r15=var1405, $r16=var598, $r17=var920, $r18=var1452, org.hibernate.sql.JoinType=var2208, $r19=var653, $r20=var1367, $r21=var2641, $r22=var1470, $r23=var1197, $r24=var265, $r25=var2129}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.loader.OuterJoinableAssociation;	r11 := @parameter0: org.hibernate.sql.JoinFragment;	r0 := @parameter1: org.hibernate.persister.collection.QueryableCollection;	$r3 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String rhsAlias>;	$r2 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.util.Map enabledFilters>;	r4 = interfaceinvoke r0.<org.hibernate.persister.collection.QueryableCollection: java.lang.String getManyToManyFilterFragment(java.lang.String,java.util.Map)>($r3, $r2);	if r4 == null goto $r5 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String on>;	$r5 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String on>;	if $r5 == null goto $r6 = new java.lang.StringBuilder;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String on>;	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r13 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = r1.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.persister.entity.Joinable joinable>;	$r15 = interfaceinvoke $r14.<org.hibernate.persister.entity.Joinable: java.lang.String getTableName()>();	$r16 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String rhsAlias>;	$r17 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String[] lhsColumns>;	$r18 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String[] rhsColumns>;	$r19 = r1.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.sql.JoinType joinType>;	virtualinvoke r11.<org.hibernate.sql.JoinFragment: void addJoin(java.lang.String,java.lang.String,java.lang.String[],java.lang.String[],org.hibernate.sql.JoinType,java.lang.String)>($r15, $r16, $r17, $r18, $r19, $r13);	$r20 = r1.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.persister.entity.Joinable joinable>;	$r21 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String rhsAlias>;	$r22 = interfaceinvoke $r20.<org.hibernate.persister.entity.Joinable: java.lang.String fromJoinFragment(java.lang.String,boolean,boolean)>($r21, 0, 1);	$r23 = r1.<org.hibernate.loader.OuterJoinableAssociation: org.hibernate.persister.entity.Joinable joinable>;	$r24 = r1.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String rhsAlias>;	$r25 = interfaceinvoke $r23.<org.hibernate.persister.entity.Joinable: java.lang.String whereJoinFragment(java.lang.String,boolean,boolean)>($r24, 0, 1);	virtualinvoke r11.<org.hibernate.sql.JoinFragment: void addJoins(java.lang.String,java.lang.String)>($r22, $r25);	return
;block_num 4