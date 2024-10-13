(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1248 0)
(declare-sort var624 0)
(declare-sort var2540 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getText/-2049517291 (var2540) String)
(declare-fun cast-from-var624-to-var2540 (var624) var2540)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var1248 var1248)
(declare-const null-var624 var624)
(declare-const var554 var1248) ; Statement: r4 := @this: org.hibernate.hql.internal.ast.HqlSqlWalker$WithClauseVisitor 
(assert (not (= var554 null-var1248)))
(declare-const var2186 var624) ; Statement: r0 := @parameter0: org.hibernate.hql.internal.ast.tree.DotNode 
(assert (not (= var2186 null-var624)))
(assert true)
(define-const var3952 String (getText/-2049517291 (cast-from-var624-to-var2540 var2186))) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String getText()>() 
(assert true)
(define-const var653 String (getText/-2049517291 (cast-from-var624-to-var2540 var2186))) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String getText()>() 
(assert true)
(define-const var643 Int (indexOf/-1037706067 var653 46)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int indexOf(int)>(46) 
(assert (not (and true (and (>= 0 0) (>= (str.len var3952) var643) (>= var643 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {getText/-2049517291=([antlr.CommonAST], java.lang.String), cast-from-var624-to-var2540=([org.hibernate.hql.internal.ast.tree.DotNode], antlr.CommonAST), indexOf/-1037706067=([java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var1248=org.hibernate.hql.internal.ast.HqlSqlWalker$WithClauseVisitor, var554=r4, var624=org.hibernate.hql.internal.ast.tree.DotNode, var2186=r0, var2540=antlr.CommonAST, var3952=$r2, var653=$r1, var643=$i0, var446=$r3}
; {org.hibernate.hql.internal.ast.HqlSqlWalker$WithClauseVisitor=var1248, r4=var554, org.hibernate.hql.internal.ast.tree.DotNode=var624, r0=var2186, antlr.CommonAST=var2540, $r2=var3952, $r1=var653, $i0=var643, $r3=var446}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r4 := @this: org.hibernate.hql.internal.ast.HqlSqlWalker$WithClauseVisitor;	r0 := @parameter0: org.hibernate.hql.internal.ast.tree.DotNode;	$r2 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String getText()>();	$r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String getText()>();	$i0 = virtualinvoke $r1.<java.lang.String: int indexOf(int)>(46);	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>(0, $i0);	return $r3
;block_num 1