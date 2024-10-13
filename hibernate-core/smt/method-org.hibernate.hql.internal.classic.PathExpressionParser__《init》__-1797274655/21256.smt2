(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var86 0)
(declare-sort var1084 0)
(declare-sort var1934 0)
(declare-sort var3878 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1084) void)
(declare-fun cast-from-var86-to-var1084 (var86) var1084)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun componentPath/2096745176 (var86) String)
(declare-fun path/2096745176 (var86) String)
(declare-fun joinType/2096745176 (var86) var1934)
(declare-fun useThetaStyleJoin/2096745176 (var86) Bool)
(declare-fun var3878-init () var3878)
(declare-fun <init>/1281898776 (var3878) void)
(declare-fun collectionElements/2096745176 (var86) var3878)
(declare-const null-var86 var86)
(declare-const var1934-INNER_JOIN var1934)
(declare-const var1983 var86) ; Statement: r0 := @this: org.hibernate.hql.internal.classic.PathExpressionParser 
(assert (not (= var1983 null-var86)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var86-to-var1084 var1983))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1983!1 var86)
(define-const var2046 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2046)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2046!1 String)
(assert (= var2046!1 ""))
(declare-const var1983!2 var86)
(assert (not (= var1983!2 null-var86)))
(assert (= (componentPath/2096745176 var1983!2) var2046!1)) ; Statement: r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder componentPath> = $r1 
(define-const var784 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var784)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var784!1 String)
(assert (= var784!1 ""))
(declare-const var1983!3 var86)
(assert (not (= var1983!3 null-var86)))
(assert (= (path/2096745176 var1983!3) var784!1)) ; Statement: r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder path> = $r2 
(define-const var3936 var1934 var1934-INNER_JOIN) ; Statement: $r3 = <org.hibernate.sql.JoinType: org.hibernate.sql.JoinType INNER_JOIN> 
(declare-const var1983!4 var86)
(assert (not (= var1983!4 null-var86)))
(assert (= (joinType/2096745176 var1983!4) var3936)) ; Statement: r0.<org.hibernate.hql.internal.classic.PathExpressionParser: org.hibernate.sql.JoinType joinType> = $r3 
(declare-const var1983!5 var86)
(assert (not (= var1983!5 null-var86)))
(assert (= (useThetaStyleJoin/2096745176 var1983!5) (ite (= 1 1) true false))) ; Statement: r0.<org.hibernate.hql.internal.classic.PathExpressionParser: boolean useThetaStyleJoin> = 1 
(define-const var2365 var3878 var3878-init) ; Statement: $r4 = new java.util.LinkedList 
(assert true)
;(assert (<init>/1281898776 var2365)) ; Statement: specialinvoke $r4.<java.util.LinkedList: void <init>()>() 

(declare-const var2365!1 var3878)
(declare-const var1983!6 var86)
(assert (not (= var1983!6 null-var86)))
(assert (= (collectionElements/2096745176 var1983!6) var2365!1)) ; Statement: r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.util.LinkedList collectionElements> = $r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var86-to-var1084=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), componentPath/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.StringBuilder), path/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.StringBuilder), joinType/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], org.hibernate.sql.JoinType), useThetaStyleJoin/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], boolean), var3878-init=([], java.util.LinkedList), <init>/1281898776=([java.util.LinkedList], void), collectionElements/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], java.util.LinkedList)}
; {var86=org.hibernate.hql.internal.classic.PathExpressionParser, var1983=r0, var1084=java.lang.Object, var2046=$r1, var784=$r2, var1934=org.hibernate.sql.JoinType, var3936=$r3, var3878=java.util.LinkedList, var2365=$r4}
; {org.hibernate.hql.internal.classic.PathExpressionParser=var86, r0=var1983, java.lang.Object=var1084, $r1=var2046, $r2=var784, org.hibernate.sql.JoinType=var1934, $r3=var3936, java.util.LinkedList=var3878, $r4=var2365}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2}
;stmts r0 := @this: org.hibernate.hql.internal.classic.PathExpressionParser;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder componentPath> = $r1;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder path> = $r2;	$r3 = <org.hibernate.sql.JoinType: org.hibernate.sql.JoinType INNER_JOIN>;	r0.<org.hibernate.hql.internal.classic.PathExpressionParser: org.hibernate.sql.JoinType joinType> = $r3;	r0.<org.hibernate.hql.internal.classic.PathExpressionParser: boolean useThetaStyleJoin> = 1;	$r4 = new java.util.LinkedList;	specialinvoke $r4.<java.util.LinkedList: void <init>()>();	r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.util.LinkedList collectionElements> = $r4;	return
;block_num 1