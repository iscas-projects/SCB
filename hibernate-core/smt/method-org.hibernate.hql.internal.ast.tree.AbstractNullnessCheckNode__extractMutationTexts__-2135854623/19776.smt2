(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var513 0)
(declare-sort var820 0)
(declare-sort var3521 0)
(declare-sort var674 0)
(declare-sort var1956 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getType/210539742 (var820) Int)
(declare-fun cast-from-var513-to-var820 (var513) var820)
(declare-fun var3521-init () var3521)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var674) String)
(declare-fun cast-from-var513-to-var674 (var513) var674)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var3521 String) void)
(declare-fun cast-from-var3521-to-var1956 (var3521) var1956)
(declare-const null-var513 var513)
(declare-const null-Int Int)
(declare-const var2878 var513) ; Statement: r0 := @parameter0: org.hibernate.hql.internal.ast.tree.Node 
(assert (not (= var2878 null-var513)))
(declare-const var1829 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1829 null-Int)))
(define-const var2481 Bool false) ; Statement: $z0 = r0 instanceof org.hibernate.hql.internal.ast.tree.ParameterNode 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.Node: int getType()>() 
(assert (= (ite var2481 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2247 Int (getType/210539742 (cast-from-var513-to-var820 var2878))) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.Node: int getType()>() 
 ; Statement: if $i0 != 98 goto $z1 = r0 instanceof org.hibernate.hql.internal.ast.tree.SqlNode 
(assert (not (= var2247 98))) ; Cond: $i0 != 98 
(define-const var3052 Bool false) ; Statement: $z1 = r0 instanceof org.hibernate.hql.internal.ast.tree.SqlNode 
 ; Statement: if $z1 == 0 goto $r15 = new org.hibernate.HibernateException 
(assert (= (ite var3052 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3079 var3521 var3521-init) ; Statement: $r15 = new org.hibernate.HibernateException 
(define-const var2022 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2022)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2022!1 String)
(assert (= var2022!1 ""))
(assert true)
(define-const var2872 String (append/672562846 var2022!1 "don\u0027t know how to extract row value elements from node : ")) ; Statement: $r3 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("don\'t know how to extract row value elements from node : ") 
(declare-const var2022!2 String)
(assert (= var2022!2 (str.++ var2022!1 "don\u0027t know how to extract row value elements from node : ")))
(assert true)
(define-const var1297 String (append/-1031950772 var2872 (cast-from-var513-to-var674 var2878))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2872!1 String)
(assert (str.prefixof var2872 var2872!1))
(assert true)
(define-const var1904 String (toString/-2075883882 var1297)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var3079 var1904)) ; Statement: specialinvoke $r15.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r5) 

(declare-const var3079!1 var3521)
(declare-const var1904!1 String)
(define-const var2115 var1956 (cast-from-var3521-to-var1956 var3079!1)) ; Statement: $r17 = (java.lang.Throwable) $r15 
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {getType/210539742=([antlr.CommonAST], int), cast-from-var513-to-var820=([org.hibernate.hql.internal.ast.tree.Node], antlr.CommonAST), var3521-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var513-to-var674=([org.hibernate.hql.internal.ast.tree.Node], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var3521-to-var1956=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var513=org.hibernate.hql.internal.ast.tree.Node, var2878=r0, var1829=i1, var2481=$z0, var820=antlr.CommonAST, var2247=$i0, var3052=$z1, var3521=org.hibernate.HibernateException, var3079=$r15, var2022=$r14, var2872=$r3, var674=java.lang.Object, var1297=$r4, var1904=$r5, var1956=java.lang.Throwable, var2115=$r17}
; {org.hibernate.hql.internal.ast.tree.Node=var513, r0=var2878, i1=var1829, $z0=var2481, antlr.CommonAST=var820, $i0=var2247, $z1=var3052, org.hibernate.HibernateException=var3521, $r15=var3079, $r14=var2022, $r3=var2872, java.lang.Object=var674, $r4=var1297, $r5=var1904, java.lang.Throwable=var1956, $r17=var2115}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.hibernate.hql.internal.ast.tree.Node;	i1 := @parameter1: int;	$z0 = r0 instanceof org.hibernate.hql.internal.ast.tree.ParameterNode;	if $z0 == 0 goto $i0 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.Node: int getType()>();	$i0 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.Node: int getType()>();	if $i0 != 98 goto $z1 = r0 instanceof org.hibernate.hql.internal.ast.tree.SqlNode;	$z1 = r0 instanceof org.hibernate.hql.internal.ast.tree.SqlNode;	if $z1 == 0 goto $r15 = new org.hibernate.HibernateException;	$r15 = new org.hibernate.HibernateException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("don\'t know how to extract row value elements from node : ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r5);	$r17 = (java.lang.Throwable) $r15;	throw $r17
;block_num 4