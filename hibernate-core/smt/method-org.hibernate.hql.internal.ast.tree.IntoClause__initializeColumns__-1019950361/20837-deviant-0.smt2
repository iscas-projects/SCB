(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2759 0)
(declare-sort var123 0)
(declare-sort var3402 0)
(declare-sort var924 0)
(declare-sort var2670 0)
(declare-sort var1962 0)
(declare-sort var2835 0)
(declare-sort var197 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFirstChild/-1265729773 (var3402) var123)
(declare-fun cast-from-var2759-to-var3402 (var2759) var3402)
(declare-fun var924-init () var924)
(declare-fun <init>/-325640736 (var924) void)
(declare-fun var123_getFirstChild/-534341403 (var123) var123)
(declare-fun visitPropertySpecNodes/674278418 (var2759 var123 var2670) void)
(declare-fun cast-from-var924-to-var2670 (var924) var2670)
(declare-fun var2835_toTypeArray/-1036406940 (var197) (Array Int var1962))
(declare-fun cast-from-var924-to-var197 (var924) var197)
(declare-fun types/1732383027 (var2759) (Array Int var1962))
(declare-fun columnSpec/1732383027 (var2759) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var2759 var2759)
(declare-const var1942 var2759) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.IntoClause 
(assert (not (= var1942 null-var2759)))
(assert true)
(define-const var2985 var123 (getFirstChild/-1265729773 (cast-from-var2759-to-var3402 var1942))) ; Statement: r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.IntoClause: antlr.collections.AST getFirstChild()>() 
(define-const var2817 var924 var924-init) ; Statement: $r2 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2817)) ; Statement: specialinvoke $r2.<java.util.ArrayList: void <init>()>() 

(declare-const var2817!1 var924)
(define-const var687 var123 (var123_getFirstChild/-534341403 var2985)) ; Statement: $r3 = interfaceinvoke r1.<antlr.collections.AST: antlr.collections.AST getFirstChild()>() 
(assert true)
;(assert (visitPropertySpecNodes/674278418 var1942 var687 (cast-from-var924-to-var2670 var2817!1))) ; Statement: specialinvoke r0.<org.hibernate.hql.internal.ast.tree.IntoClause: void visitPropertySpecNodes(antlr.collections.AST,java.util.List)>($r3, $r2) 

(declare-const var1942!1 var2759)
(declare-const var687!1 var123)
(declare-const var2817!2 var924)
(define-const var2645 (Array Int var1962) (var2835_toTypeArray/-1036406940 (cast-from-var924-to-var197 var2817!2))) ; Statement: $r4 = staticinvoke <org.hibernate.internal.util.collections.ArrayHelper: org.hibernate.type.Type[] toTypeArray(java.util.Collection)>($r2) 
(declare-const var1942!2 var2759)
(assert (not (= var1942!2 null-var2759)))
(assert (= (types/1732383027 var1942!2) var2645)) ; Statement: r0.<org.hibernate.hql.internal.ast.tree.IntoClause: org.hibernate.type.Type[] types> = $r4 
(define-const var2038 String (columnSpec/1732383027 var1942!2)) ; Statement: $r6 = r0.<org.hibernate.hql.internal.ast.tree.IntoClause: java.lang.String columnSpec> 
(define-const var2104 String (columnSpec/1732383027 var1942!2)) ; Statement: $r5 = r0.<org.hibernate.hql.internal.ast.tree.IntoClause: java.lang.String columnSpec> 
(assert true)
(define-const var1522 Int (length/-134980193 var2104)) ; Statement: $i0 = virtualinvoke $r5.<java.lang.String: int length()>() 
(define-const var923 Int (- var1522 2)) ; Statement: $i1 = $i0 - 2 
(assert (not (and true (and (>= 0 0) (>= (str.len var2038) var923) (>= var923 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {getFirstChild/-1265729773=([antlr.CommonAST], antlr.collections.AST), cast-from-var2759-to-var3402=([org.hibernate.hql.internal.ast.tree.IntoClause], antlr.CommonAST), var924-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), var123_getFirstChild/-534341403=([antlr.collections.AST], antlr.collections.AST), visitPropertySpecNodes/674278418=([org.hibernate.hql.internal.ast.tree.IntoClause, antlr.collections.AST, java.util.List], void), cast-from-var924-to-var2670=([java.util.ArrayList], java.util.List), var2835_toTypeArray/-1036406940=([java.util.Collection], org.hibernate.type.Type[]), cast-from-var924-to-var197=([java.util.ArrayList], java.util.Collection), types/1732383027=([org.hibernate.hql.internal.ast.tree.IntoClause], org.hibernate.type.Type[]), columnSpec/1732383027=([org.hibernate.hql.internal.ast.tree.IntoClause], java.lang.String), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var2759=org.hibernate.hql.internal.ast.tree.IntoClause, var1942=r0, var123=antlr.collections.AST, var3402=antlr.CommonAST, var2985=r1, var924=java.util.ArrayList, var2817=$r2, var687=$r3, var2670=java.util.List, var1962=org.hibernate.type.Type, var2835=org.hibernate.internal.util.collections.ArrayHelper, var197=java.util.Collection, var2645=$r4, var2038=$r6, var2104=$r5, var1522=$i0, var923=$i1, var1957=$r7}
; {org.hibernate.hql.internal.ast.tree.IntoClause=var2759, r0=var1942, antlr.collections.AST=var123, antlr.CommonAST=var3402, r1=var2985, java.util.ArrayList=var924, $r2=var2817, $r3=var687, java.util.List=var2670, org.hibernate.type.Type=var1962, org.hibernate.internal.util.collections.ArrayHelper=var2835, java.util.Collection=var197, $r4=var2645, $r6=var2038, $r5=var2104, $i0=var1522, $i1=var923, $r7=var1957}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.IntoClause;	r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.IntoClause: antlr.collections.AST getFirstChild()>();	$r2 = new java.util.ArrayList;	specialinvoke $r2.<java.util.ArrayList: void <init>()>();	$r3 = interfaceinvoke r1.<antlr.collections.AST: antlr.collections.AST getFirstChild()>();	specialinvoke r0.<org.hibernate.hql.internal.ast.tree.IntoClause: void visitPropertySpecNodes(antlr.collections.AST,java.util.List)>($r3, $r2);	$r4 = staticinvoke <org.hibernate.internal.util.collections.ArrayHelper: org.hibernate.type.Type[] toTypeArray(java.util.Collection)>($r2);	r0.<org.hibernate.hql.internal.ast.tree.IntoClause: org.hibernate.type.Type[] types> = $r4;	$r6 = r0.<org.hibernate.hql.internal.ast.tree.IntoClause: java.lang.String columnSpec>;	$r5 = r0.<org.hibernate.hql.internal.ast.tree.IntoClause: java.lang.String columnSpec>;	$i0 = virtualinvoke $r5.<java.lang.String: int length()>();	$i1 = $i0 - 2;	$r7 = virtualinvoke $r6.<java.lang.String: java.lang.String substring(int,int)>(0, $i1);	r0.<org.hibernate.hql.internal.ast.tree.IntoClause: java.lang.String columnSpec> = $r7;	return
;block_num 1