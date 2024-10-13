(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var238 0)
(declare-sort var583 0)
(declare-sort var1726 0)
(declare-sort var1988 0)
(declare-sort var110 0)
(declare-sort var2341 0)
(declare-sort var228 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSessionFactoryHelper/-126384614 (var1988) var1726)
(declare-fun cast-from-var238-to-var1988 (var238) var1988)
(declare-fun getImportedClassName/-754587902 (var1726 String) String)
(declare-fun var110_isEmpty/1672864985 (String) Bool)
(declare-fun var2341-init () var2341)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1580113206 (var2341 String) void)
(declare-fun cast-from-var2341-to-var228 (var2341) var228)
(declare-const null-var238 var238)
(declare-const null-String String)
(declare-const var2388 var238) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.ConstructorNode 
(assert (not (= var2388 null-var238)))
(declare-const var3961 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3961 null-String)))
(assert true)
(define-const var1067 var1726 (getSessionFactoryHelper/-126384614 (cast-from-var238-to-var1988 var2388))) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>() 
(assert true)
(define-const var2890 String (getImportedClassName/-754587902 var1067 var3961)) ; Statement: r3 = virtualinvoke $r2.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: java.lang.String getImportedClassName(java.lang.String)>(r1) 
(define-const var3314 Bool (var110_isEmpty/1672864985 var2890)) ; Statement: $z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isEmpty(java.lang.String)>(r3) 
 ; Statement: if $z0 == 0 goto $r18 = r3 
(assert (= (ite var3314 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3168 String var2890) ; Statement: $r18 = r3 
(assert true) ; Non Conditional
 ; Statement: if $r18 != null goto $r4 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>() 
(assert (not (not (= var3168 null-String)))) ; Negate: Cond: $r18 != null  
(define-const var1868 var2341 var2341-init) ; Statement: $r20 = new antlr.SemanticException 
(define-const var979 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var979)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var979!1 String)
(assert (= var979!1 ""))
(assert true)
(define-const var2832 String (append/672562846 var979!1 "Unable to locate class [")) ; Statement: $r14 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate class [") 
(declare-const var979!2 String)
(assert (= var979!2 (str.++ var979!1 "Unable to locate class [")))
(assert true)
(define-const var1335 String (append/672562846 var2832 var3961)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2832!1 String)
(assert (= var2832!1 (str.++ var2832 var3961)))
(assert true)
(define-const var1916 String (append/672562846 var1335 "]")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1335!1 String)
(assert (= var1335!1 (str.++ var1335 "]")))
(assert true)
(define-const var1966 String (toString/-2075883882 var1916)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1580113206 var1868 var1966)) ; Statement: specialinvoke $r20.<antlr.SemanticException: void <init>(java.lang.String)>($r17) 

(declare-const var1868!1 var2341)
(declare-const var1966!1 String)
(define-const var1153 var228 (cast-from-var2341-to-var228 var1868!1)) ; Statement: $r21 = (java.lang.Throwable) $r20 
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {getSessionFactoryHelper/-126384614=([org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode], org.hibernate.hql.internal.ast.util.SessionFactoryHelper), cast-from-var238-to-var1988=([org.hibernate.hql.internal.ast.tree.ConstructorNode], org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode), getImportedClassName/-754587902=([org.hibernate.hql.internal.ast.util.SessionFactoryHelper, java.lang.String], java.lang.String), var110_isEmpty/1672864985=([java.lang.String], boolean), var2341-init=([], antlr.SemanticException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1580113206=([antlr.SemanticException, java.lang.String], void), cast-from-var2341-to-var228=([antlr.SemanticException], java.lang.Throwable)}
; {var238=org.hibernate.hql.internal.ast.tree.ConstructorNode, var2388=r0, var3961=r1, var583=null_type, var1726=org.hibernate.hql.internal.ast.util.SessionFactoryHelper, var1988=org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode, var1067=$r2, var2890=r3, var110=org.hibernate.internal.util.StringHelper, var3314=$z0, var3168=$r18, var2341=antlr.SemanticException, var1868=$r20, var979=$r19, var2832=$r14, var1335=$r15, var1916=$r16, var1966=$r17, var228=java.lang.Throwable, var1153=$r21}
; {org.hibernate.hql.internal.ast.tree.ConstructorNode=var238, r0=var2388, r1=var3961, null_type=var583, org.hibernate.hql.internal.ast.util.SessionFactoryHelper=var1726, org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode=var1988, $r2=var1067, r3=var2890, org.hibernate.internal.util.StringHelper=var110, $z0=var3314, $r18=var3168, antlr.SemanticException=var2341, $r20=var1868, $r19=var979, $r14=var2832, $r15=var1335, $r16=var1916, $r17=var1966, java.lang.Throwable=var228, $r21=var1153}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.ConstructorNode;	r1 := @parameter0: java.lang.String;	$r2 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>();	r3 = virtualinvoke $r2.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: java.lang.String getImportedClassName(java.lang.String)>(r1);	$z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isEmpty(java.lang.String)>(r3);	if $z0 == 0 goto $r18 = r3;	$r18 = r3;	if $r18 != null goto $r4 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>();	$r20 = new antlr.SemanticException;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate class [");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r20.<antlr.SemanticException: void <init>(java.lang.String)>($r17);	$r21 = (java.lang.Throwable) $r20;	throw $r21
;block_num 4