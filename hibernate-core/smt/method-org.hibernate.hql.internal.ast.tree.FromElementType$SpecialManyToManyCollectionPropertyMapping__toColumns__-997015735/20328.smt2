(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3188 0)
(declare-sort var2025 0)
(declare-sort var1855 0)
(declare-sort var2248 0)
(declare-sort var843 0)
(declare-sort var2679 0)
(declare-sort var94 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validate/75558535 (var3188 String) void)
(declare-fun this$0/-770684603 (var3188) var1855)
(declare-fun var1855_access$200/1783521215 (var1855) var2248)
(declare-fun getFirstJoin/863464665 (var2248) var843)
(declare-fun getAlias/905039722 (var843) String)
(declare-fun var1855_access$400/1826326132 (var1855) var2679)
(declare-fun var94_toColumns/701355653 (var94 String String) (Array Int String))
(declare-fun cast-from-var2679-to-var94 (var2679) var94)
(declare-const null-var3188 var3188)
(declare-const null-String String)
(declare-const var1174 var3188) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.FromElementType$SpecialManyToManyCollectionPropertyMapping 
(assert (not (= var1174 null-var3188)))
(declare-const var2334 String) ; Statement: r30 := @parameter0: java.lang.String 
(assert (not (= var2334 null-String)))
(declare-const var881 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var881 null-String)))
(assert true)
;(assert (validate/75558535 var1174 var881)) ; Statement: specialinvoke r0.<org.hibernate.hql.internal.ast.tree.FromElementType$SpecialManyToManyCollectionPropertyMapping: void validate(java.lang.String)>(r1) 

(declare-const var1174!1 var3188)
(declare-const var881!1 String)
(define-const var3305 var1855 (this$0/-770684603 var1174!1)) ; Statement: $r2 = r0.<org.hibernate.hql.internal.ast.tree.FromElementType$SpecialManyToManyCollectionPropertyMapping: org.hibernate.hql.internal.ast.tree.FromElementType this$0> 
(define-const var13 var2248 (var1855_access$200/1783521215 var3305)) ; Statement: $r3 = staticinvoke <org.hibernate.hql.internal.ast.tree.FromElementType: org.hibernate.engine.internal.JoinSequence access$200(org.hibernate.hql.internal.ast.tree.FromElementType)>($r2) 
(assert true)
(define-const var371 var843 (getFirstJoin/863464665 var13)) ; Statement: $r4 = virtualinvoke $r3.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence$Join getFirstJoin()>() 
(assert true)
(define-const var2207 String (getAlias/905039722 var371)) ; Statement: r5 = virtualinvoke $r4.<org.hibernate.engine.internal.JoinSequence$Join: java.lang.String getAlias()>() 
(define-const var1222 String "index") ; Statement: $r6 = "index" 
(assert true)
(define-const var336 Bool (= var1222 var881!1)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r7 = r0.<org.hibernate.hql.internal.ast.tree.FromElementType$SpecialManyToManyCollectionPropertyMapping: org.hibernate.hql.internal.ast.tree.FromElementType this$0> 
(assert (not (= (ite var336 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1981 var1855 (this$0/-770684603 var1174!1)) ; Statement: $r27 = r0.<org.hibernate.hql.internal.ast.tree.FromElementType$SpecialManyToManyCollectionPropertyMapping: org.hibernate.hql.internal.ast.tree.FromElementType this$0> 
(define-const var237 var2679 (var1855_access$400/1826326132 var1981)) ; Statement: $r28 = staticinvoke <org.hibernate.hql.internal.ast.tree.FromElementType: org.hibernate.persister.collection.QueryableCollection access$400(org.hibernate.hql.internal.ast.tree.FromElementType)>($r27) 
(define-const var1006 (Array Int String) (var94_toColumns/701355653 (cast-from-var2679-to-var94 var237) var2207 var881!1)) ; Statement: $r29 = interfaceinvoke $r28.<org.hibernate.persister.collection.QueryableCollection: java.lang.String[] toColumns(java.lang.String,java.lang.String)>(r5, r1) 
 ; Statement: return $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {validate/75558535=([org.hibernate.hql.internal.ast.tree.FromElementType$SpecialManyToManyCollectionPropertyMapping, java.lang.String], void), this$0/-770684603=([org.hibernate.hql.internal.ast.tree.FromElementType$SpecialManyToManyCollectionPropertyMapping], org.hibernate.hql.internal.ast.tree.FromElementType), var1855_access$200/1783521215=([org.hibernate.hql.internal.ast.tree.FromElementType], org.hibernate.engine.internal.JoinSequence), getFirstJoin/863464665=([org.hibernate.engine.internal.JoinSequence], org.hibernate.engine.internal.JoinSequence$Join), getAlias/905039722=([org.hibernate.engine.internal.JoinSequence$Join], java.lang.String), var1855_access$400/1826326132=([org.hibernate.hql.internal.ast.tree.FromElementType], org.hibernate.persister.collection.QueryableCollection), var94_toColumns/701355653=([org.hibernate.persister.entity.PropertyMapping, java.lang.String, java.lang.String], java.lang.String[]), cast-from-var2679-to-var94=([org.hibernate.persister.collection.QueryableCollection], org.hibernate.persister.entity.PropertyMapping)}
; {var3188=org.hibernate.hql.internal.ast.tree.FromElementType$SpecialManyToManyCollectionPropertyMapping, var1174=r0, var2334=r30, var2025=null_type, var881=r1, var1855=org.hibernate.hql.internal.ast.tree.FromElementType, var3305=$r2, var2248=org.hibernate.engine.internal.JoinSequence, var13=$r3, var843=org.hibernate.engine.internal.JoinSequence$Join, var371=$r4, var2207=r5, var1222=$r6, var336=$z0, var1981=$r27, var2679=org.hibernate.persister.collection.QueryableCollection, var237=$r28, var94=org.hibernate.persister.entity.PropertyMapping, var1006=$r29}
; {org.hibernate.hql.internal.ast.tree.FromElementType$SpecialManyToManyCollectionPropertyMapping=var3188, r0=var1174, r30=var2334, null_type=var2025, r1=var881, org.hibernate.hql.internal.ast.tree.FromElementType=var1855, $r2=var3305, org.hibernate.engine.internal.JoinSequence=var2248, $r3=var13, org.hibernate.engine.internal.JoinSequence$Join=var843, $r4=var371, r5=var2207, $r6=var1222, $z0=var336, $r27=var1981, org.hibernate.persister.collection.QueryableCollection=var2679, $r28=var237, org.hibernate.persister.entity.PropertyMapping=var94, $r29=var1006}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.FromElementType$SpecialManyToManyCollectionPropertyMapping;	r30 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	specialinvoke r0.<org.hibernate.hql.internal.ast.tree.FromElementType$SpecialManyToManyCollectionPropertyMapping: void validate(java.lang.String)>(r1);	$r2 = r0.<org.hibernate.hql.internal.ast.tree.FromElementType$SpecialManyToManyCollectionPropertyMapping: org.hibernate.hql.internal.ast.tree.FromElementType this$0>;	$r3 = staticinvoke <org.hibernate.hql.internal.ast.tree.FromElementType: org.hibernate.engine.internal.JoinSequence access$200(org.hibernate.hql.internal.ast.tree.FromElementType)>($r2);	$r4 = virtualinvoke $r3.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence$Join getFirstJoin()>();	r5 = virtualinvoke $r4.<org.hibernate.engine.internal.JoinSequence$Join: java.lang.String getAlias()>();	$r6 = "index";	$z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r7 = r0.<org.hibernate.hql.internal.ast.tree.FromElementType$SpecialManyToManyCollectionPropertyMapping: org.hibernate.hql.internal.ast.tree.FromElementType this$0>;	$r27 = r0.<org.hibernate.hql.internal.ast.tree.FromElementType$SpecialManyToManyCollectionPropertyMapping: org.hibernate.hql.internal.ast.tree.FromElementType this$0>;	$r28 = staticinvoke <org.hibernate.hql.internal.ast.tree.FromElementType: org.hibernate.persister.collection.QueryableCollection access$400(org.hibernate.hql.internal.ast.tree.FromElementType)>($r27);	$r29 = interfaceinvoke $r28.<org.hibernate.persister.collection.QueryableCollection: java.lang.String[] toColumns(java.lang.String,java.lang.String)>(r5, r1);	return $r29
;block_num 2