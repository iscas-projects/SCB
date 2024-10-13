(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2234 0)
(declare-sort var1087 0)
(declare-sort var532 0)
(declare-sort var1361 0)
(declare-sort var688 0)
(declare-sort var1671 0)
(declare-sort var2944 0)
(declare-sort var1728 0)
(declare-sort var2418 0)
(declare-sort var3107 0)
(declare-sort var2504 0)
(declare-sort var3111 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun walker/-92828632 (var2234) var688)
(declare-fun getEnabledFilters/-499364216 (var688) var1671)
(declare-fun useFromFragment/1304569740 (var1361) Bool)
(declare-fun getWithClauseFragment/1092640389 (var1361) String)
(declare-fun toJoinFragment/-405071879 (var532 var1671 Bool String) var2944)
(declare-fun toFromFragmentString/701527262 (var2944) String)
(declare-fun toWhereFragmentString/-1276368279 (var2944) String)
(declare-fun getType/210539742 (var1728) Int)
(declare-fun cast-from-var1361-to-var1728 (var1361) var1728)
(declare-fun processFromFragment/313987946 (var2234 String var532) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var2418_debugf/585189783 (var2418 String var3107) void)
(declare-fun cast-from-String-to-var3107 (String) var3107)
(declare-fun var2234_processDynamicFilterParameters/54487805 (String var2504 var688) void)
(declare-fun cast-from-var1361-to-var2504 (var1361) var2504)
(declare-fun syntheticAndFactory/-92828632 (var2234) var3111)
(declare-fun addWhereFragment/594282555 (var3111 var2944 String var1087 var1361 var688) void)
(declare-const null-var2234 var2234)
(declare-const null-var1087 var1087)
(declare-const null-var532 var532)
(declare-const null-var1361 var1361)
(declare-const var2234-LOG var2418)
(declare-const var1497 var2234) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.util.JoinProcessor 
(assert (not (= var1497 null-var2234)))
(declare-const var3610 var1087) ; Statement: r9 := @parameter0: org.hibernate.hql.internal.ast.tree.QueryNode 
(assert (not (= var3610 null-var1087)))
(declare-const var2708 var532) ; Statement: r0 := @parameter1: org.hibernate.engine.internal.JoinSequence 
(assert (not (= var2708 null-var532)))
(declare-const var34 var1361) ; Statement: r3 := @parameter2: org.hibernate.hql.internal.ast.tree.FromElement 
(assert (not (= var34 null-var1361)))
(define-const var2517 var688 (walker/-92828632 var1497)) ; Statement: $r2 = r1.<org.hibernate.hql.internal.ast.util.JoinProcessor: org.hibernate.hql.internal.ast.HqlSqlWalker walker> 
(assert true)
(define-const var1032 var1671 (getEnabledFilters/-499364216 var2517)) ; Statement: $r5 = virtualinvoke $r2.<org.hibernate.hql.internal.ast.HqlSqlWalker: java.util.Map getEnabledFilters()>() 
(assert true)
(define-const var2394 Bool (useFromFragment/1304569740 var34)) ; Statement: $z0 = virtualinvoke r3.<org.hibernate.hql.internal.ast.tree.FromElement: boolean useFromFragment()>() 
 ; Statement: if $z0 != 0 goto $z6 = 1 
(assert (not (= (ite var2394 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2064 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= $r4 = virtualinvoke r3.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getWithClauseFragment()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3826 String (getWithClauseFragment/1092640389 var34)) ; Statement: $r4 = virtualinvoke r3.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getWithClauseFragment()>() 
(assert true)
(define-const var2273 var2944 (toJoinFragment/-405071879 var2708 var1032 var2064 var3826)) ; Statement: $r13 = virtualinvoke r0.<org.hibernate.engine.internal.JoinSequence: org.hibernate.sql.JoinFragment toJoinFragment(java.util.Map,boolean,java.lang.String)>($r5, $z6, $r4) 
(assert true)
(define-const var2988 String (toFromFragmentString/701527262 var2273)) ; Statement: $r14 = virtualinvoke $r13.<org.hibernate.sql.JoinFragment: java.lang.String toFromFragmentString()>() 
(assert true)
(define-const var1155 String (toWhereFragmentString/-1276368279 var2273)) ; Statement: $r15 = virtualinvoke $r13.<org.hibernate.sql.JoinFragment: java.lang.String toWhereFragmentString()>() 
(assert true)
(define-const var1610 Int (getType/210539742 (cast-from-var1361-to-var1728 var34))) ; Statement: $i0 = virtualinvoke r3.<org.hibernate.hql.internal.ast.tree.FromElement: int getType()>() 
 ; Statement: if $i0 != 143 goto $z7 = virtualinvoke r3.<org.hibernate.hql.internal.ast.tree.FromElement: boolean useFromFragment()>() 
(assert (not (= var1610 143))) ; Cond: $i0 != 143 
(assert true)
(define-const var1627 Bool (useFromFragment/1304569740 var34)) ; Statement: $z7 = virtualinvoke r3.<org.hibernate.hql.internal.ast.tree.FromElement: boolean useFromFragment()>() 
 ; Statement: if $z7 != 0 goto $r6 = specialinvoke r1.<org.hibernate.hql.internal.ast.util.JoinProcessor: java.lang.String processFromFragment(java.lang.String,org.hibernate.engine.internal.JoinSequence)>($r14, r0) 
(assert (not (= (ite var1627 1 0) 0))) ; Cond: $z7 != 0 
(assert true)
(define-const var1624 String (processFromFragment/313987946 var1497 var2988 var2708)) ; Statement: $r6 = specialinvoke r1.<org.hibernate.hql.internal.ast.util.JoinProcessor: java.lang.String processFromFragment(java.lang.String,org.hibernate.engine.internal.JoinSequence)>($r14, r0) 
(assert true)
(define-const var1972 String (trim/-847153721 var1624)) ; Statement: $r11 = virtualinvoke $r6.<java.lang.String: java.lang.String trim()>() 
(define-const var696 var2418 var2234-LOG) ; Statement: $r7 = <org.hibernate.hql.internal.ast.util.JoinProcessor: org.hibernate.internal.CoreMessageLogger LOG> 
;(assert (var2418_debugf/585189783 var696 "Using FROM fragment [%s]" (cast-from-String-to-var3107 var1972))) ; Statement: interfaceinvoke $r7.<org.hibernate.internal.CoreMessageLogger: void debugf(java.lang.String,java.lang.Object)>("Using FROM fragment [%s]", $r11) 

(declare-const var696!1 var2418)
(declare-const var579 String)
(declare-const var1972!1 String)
(define-const var3742 var688 (walker/-92828632 var1497)) ; Statement: $r8 = r1.<org.hibernate.hql.internal.ast.util.JoinProcessor: org.hibernate.hql.internal.ast.HqlSqlWalker walker> 
;(assert (var2234_processDynamicFilterParameters/54487805 var1972!1 (cast-from-var1361-to-var2504 var34) var3742)) ; Statement: staticinvoke <org.hibernate.hql.internal.ast.util.JoinProcessor: void processDynamicFilterParameters(java.lang.String,org.hibernate.hql.internal.ast.tree.ParameterContainer,org.hibernate.hql.internal.ast.HqlSqlWalker)>($r11, r3, $r8) 

(declare-const var1972!2 String)
(declare-const var34!1 var1361)
(declare-const var3742!1 var688)
(assert true) ; Non Conditional
(define-const var3047 var3111 (syntheticAndFactory/-92828632 var1497)) ; Statement: $r16 = r1.<org.hibernate.hql.internal.ast.util.JoinProcessor: org.hibernate.hql.internal.ast.util.SyntheticAndFactory syntheticAndFactory> 
(define-const var928 var688 (walker/-92828632 var1497)) ; Statement: $r17 = r1.<org.hibernate.hql.internal.ast.util.JoinProcessor: org.hibernate.hql.internal.ast.HqlSqlWalker walker> 
(assert true)
;(assert (addWhereFragment/594282555 var3047 var2273 var1155 var3610 var34!1 var928)) ; Statement: virtualinvoke $r16.<org.hibernate.hql.internal.ast.util.SyntheticAndFactory: void addWhereFragment(org.hibernate.sql.JoinFragment,java.lang.String,org.hibernate.hql.internal.ast.tree.QueryNode,org.hibernate.hql.internal.ast.tree.FromElement,org.hibernate.hql.internal.ast.HqlSqlWalker)>($r13, $r15, r9, r3, $r17) 

(declare-const var3047!1 var3111)
(declare-const var2273!1 var2944)
(declare-const var1155!1 String)
(declare-const var3610!1 var1087)
(declare-const var34!2 var1361)
(declare-const var928!1 var688)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {walker/-92828632=([org.hibernate.hql.internal.ast.util.JoinProcessor], org.hibernate.hql.internal.ast.HqlSqlWalker), getEnabledFilters/-499364216=([org.hibernate.hql.internal.ast.HqlSqlWalker], java.util.Map), useFromFragment/1304569740=([org.hibernate.hql.internal.ast.tree.FromElement], boolean), getWithClauseFragment/1092640389=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), toJoinFragment/-405071879=([org.hibernate.engine.internal.JoinSequence, java.util.Map, boolean, java.lang.String], org.hibernate.sql.JoinFragment), toFromFragmentString/701527262=([org.hibernate.sql.JoinFragment], java.lang.String), toWhereFragmentString/-1276368279=([org.hibernate.sql.JoinFragment], java.lang.String), getType/210539742=([antlr.CommonAST], int), cast-from-var1361-to-var1728=([org.hibernate.hql.internal.ast.tree.FromElement], antlr.CommonAST), processFromFragment/313987946=([org.hibernate.hql.internal.ast.util.JoinProcessor, java.lang.String, org.hibernate.engine.internal.JoinSequence], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), var2418_debugf/585189783=([org.hibernate.internal.CoreMessageLogger, java.lang.String, java.lang.Object], void), cast-from-String-to-var3107=([java.lang.String], java.lang.Object), var2234_processDynamicFilterParameters/54487805=([java.lang.String, org.hibernate.hql.internal.ast.tree.ParameterContainer, org.hibernate.hql.internal.ast.HqlSqlWalker], void), cast-from-var1361-to-var2504=([org.hibernate.hql.internal.ast.tree.FromElement], org.hibernate.hql.internal.ast.tree.ParameterContainer), syntheticAndFactory/-92828632=([org.hibernate.hql.internal.ast.util.JoinProcessor], org.hibernate.hql.internal.ast.util.SyntheticAndFactory), addWhereFragment/594282555=([org.hibernate.hql.internal.ast.util.SyntheticAndFactory, org.hibernate.sql.JoinFragment, java.lang.String, org.hibernate.hql.internal.ast.tree.QueryNode, org.hibernate.hql.internal.ast.tree.FromElement, org.hibernate.hql.internal.ast.HqlSqlWalker], void)}
; {var2234=org.hibernate.hql.internal.ast.util.JoinProcessor, var1497=r1, var1087=org.hibernate.hql.internal.ast.tree.QueryNode, var3610=r9, var532=org.hibernate.engine.internal.JoinSequence, var2708=r0, var1361=org.hibernate.hql.internal.ast.tree.FromElement, var34=r3, var688=org.hibernate.hql.internal.ast.HqlSqlWalker, var2517=$r2, var1671=java.util.Map, var1032=$r5, var2394=$z0, var2064=$z6, var3826=$r4, var2944=org.hibernate.sql.JoinFragment, var2273=$r13, var2988=$r14, var1155=$r15, var1728=antlr.CommonAST, var1610=$i0, var1627=$z7, var1624=$r6, var1972=$r11, var2418=org.hibernate.internal.CoreMessageLogger, var696=$r7, var3107=java.lang.Object, var579="Using FROM fragment [%s]", var3742=$r8, var2504=org.hibernate.hql.internal.ast.tree.ParameterContainer, var3111=org.hibernate.hql.internal.ast.util.SyntheticAndFactory, var3047=$r16, var928=$r17}
; {org.hibernate.hql.internal.ast.util.JoinProcessor=var2234, r1=var1497, org.hibernate.hql.internal.ast.tree.QueryNode=var1087, r9=var3610, org.hibernate.engine.internal.JoinSequence=var532, r0=var2708, org.hibernate.hql.internal.ast.tree.FromElement=var1361, r3=var34, org.hibernate.hql.internal.ast.HqlSqlWalker=var688, $r2=var2517, java.util.Map=var1671, $r5=var1032, $z0=var2394, $z6=var2064, $r4=var3826, org.hibernate.sql.JoinFragment=var2944, $r13=var2273, $r14=var2988, $r15=var1155, antlr.CommonAST=var1728, $i0=var1610, $z7=var1627, $r6=var1624, $r11=var1972, org.hibernate.internal.CoreMessageLogger=var2418, $r7=var696, java.lang.Object=var3107, "Using FROM fragment [%s]"=var579, $r8=var3742, org.hibernate.hql.internal.ast.tree.ParameterContainer=var2504, org.hibernate.hql.internal.ast.util.SyntheticAndFactory=var3111, $r16=var3047, $r17=var928}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.ast.util.JoinProcessor;	r9 := @parameter0: org.hibernate.hql.internal.ast.tree.QueryNode;	r0 := @parameter1: org.hibernate.engine.internal.JoinSequence;	r3 := @parameter2: org.hibernate.hql.internal.ast.tree.FromElement;	$r2 = r1.<org.hibernate.hql.internal.ast.util.JoinProcessor: org.hibernate.hql.internal.ast.HqlSqlWalker walker>;	$r5 = virtualinvoke $r2.<org.hibernate.hql.internal.ast.HqlSqlWalker: java.util.Map getEnabledFilters()>();	$z0 = virtualinvoke r3.<org.hibernate.hql.internal.ast.tree.FromElement: boolean useFromFragment()>();	if $z0 != 0 goto $z6 = 1;	$z6 = 1;	goto [?= $r4 = virtualinvoke r3.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getWithClauseFragment()>()];	$r4 = virtualinvoke r3.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getWithClauseFragment()>();	$r13 = virtualinvoke r0.<org.hibernate.engine.internal.JoinSequence: org.hibernate.sql.JoinFragment toJoinFragment(java.util.Map,boolean,java.lang.String)>($r5, $z6, $r4);	$r14 = virtualinvoke $r13.<org.hibernate.sql.JoinFragment: java.lang.String toFromFragmentString()>();	$r15 = virtualinvoke $r13.<org.hibernate.sql.JoinFragment: java.lang.String toWhereFragmentString()>();	$i0 = virtualinvoke r3.<org.hibernate.hql.internal.ast.tree.FromElement: int getType()>();	if $i0 != 143 goto $z7 = virtualinvoke r3.<org.hibernate.hql.internal.ast.tree.FromElement: boolean useFromFragment()>();	$z7 = virtualinvoke r3.<org.hibernate.hql.internal.ast.tree.FromElement: boolean useFromFragment()>();	if $z7 != 0 goto $r6 = specialinvoke r1.<org.hibernate.hql.internal.ast.util.JoinProcessor: java.lang.String processFromFragment(java.lang.String,org.hibernate.engine.internal.JoinSequence)>($r14, r0);	$r6 = specialinvoke r1.<org.hibernate.hql.internal.ast.util.JoinProcessor: java.lang.String processFromFragment(java.lang.String,org.hibernate.engine.internal.JoinSequence)>($r14, r0);	$r11 = virtualinvoke $r6.<java.lang.String: java.lang.String trim()>();	$r7 = <org.hibernate.hql.internal.ast.util.JoinProcessor: org.hibernate.internal.CoreMessageLogger LOG>;	interfaceinvoke $r7.<org.hibernate.internal.CoreMessageLogger: void debugf(java.lang.String,java.lang.Object)>("Using FROM fragment [%s]", $r11);	$r8 = r1.<org.hibernate.hql.internal.ast.util.JoinProcessor: org.hibernate.hql.internal.ast.HqlSqlWalker walker>;	staticinvoke <org.hibernate.hql.internal.ast.util.JoinProcessor: void processDynamicFilterParameters(java.lang.String,org.hibernate.hql.internal.ast.tree.ParameterContainer,org.hibernate.hql.internal.ast.HqlSqlWalker)>($r11, r3, $r8);	$r16 = r1.<org.hibernate.hql.internal.ast.util.JoinProcessor: org.hibernate.hql.internal.ast.util.SyntheticAndFactory syntheticAndFactory>;	$r17 = r1.<org.hibernate.hql.internal.ast.util.JoinProcessor: org.hibernate.hql.internal.ast.HqlSqlWalker walker>;	virtualinvoke $r16.<org.hibernate.hql.internal.ast.util.SyntheticAndFactory: void addWhereFragment(org.hibernate.sql.JoinFragment,java.lang.String,org.hibernate.hql.internal.ast.tree.QueryNode,org.hibernate.hql.internal.ast.tree.FromElement,org.hibernate.hql.internal.ast.HqlSqlWalker)>($r13, $r15, r9, r3, $r17);	return
;block_num 6