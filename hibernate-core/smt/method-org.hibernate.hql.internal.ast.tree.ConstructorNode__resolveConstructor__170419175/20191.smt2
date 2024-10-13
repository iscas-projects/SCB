(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3104 0)
(declare-sort var1282 0)
(declare-sort var3219 0)
(declare-sort var467 0)
(declare-sort var3182 0)
(declare-sort var718 0)
(declare-sort var2576 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSessionFactoryHelper/-126384614 (var467) var3219)
(declare-fun cast-from-var3104-to-var467 (var3104) var467)
(declare-fun getImportedClassName/-754587902 (var3219 String) String)
(declare-fun var3182_isEmpty/1672864985 (String) Bool)
(declare-fun var718-init () var718)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1580113206 (var718 String) void)
(declare-fun cast-from-var718-to-var2576 (var718) var2576)
(declare-const null-var3104 var3104)
(declare-const null-String String)
(declare-const var67 var3104) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.ConstructorNode 
(assert (not (= var67 null-var3104)))
(declare-const var499 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var499 null-String)))
(assert true)
(define-const var2223 var3219 (getSessionFactoryHelper/-126384614 (cast-from-var3104-to-var467 var67))) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>() 
(assert true)
(define-const var3264 String (getImportedClassName/-754587902 var2223 var499)) ; Statement: r3 = virtualinvoke $r2.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: java.lang.String getImportedClassName(java.lang.String)>(r1) 
(define-const var774 Bool (var3182_isEmpty/1672864985 var3264)) ; Statement: $z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isEmpty(java.lang.String)>(r3) 
 ; Statement: if $z0 == 0 goto $r18 = r3 
(assert (not (= (ite var774 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3830 String var499) ; Statement: $r18 = r1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $r18 != null goto $r4 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>() 
(assert (not (not (= var3830 null-String)))) ; Negate: Cond: $r18 != null  
(define-const var1427 var718 var718-init) ; Statement: $r20 = new antlr.SemanticException 
(define-const var2087 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2087)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2087!1 String)
(assert (= var2087!1 ""))
(assert true)
(define-const var1709 String (append/672562846 var2087!1 "Unable to locate class [")) ; Statement: $r14 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate class [") 
(declare-const var2087!2 String)
(assert (= var2087!2 (str.++ var2087!1 "Unable to locate class [")))
(assert true)
(define-const var2138 String (append/672562846 var1709 var499)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1709!1 String)
(assert (= var1709!1 (str.++ var1709 var499)))
(assert true)
(define-const var3497 String (append/672562846 var2138 "]")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2138!1 String)
(assert (= var2138!1 (str.++ var2138 "]")))
(assert true)
(define-const var3321 String (toString/-2075883882 var3497)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1580113206 var1427 var3321)) ; Statement: specialinvoke $r20.<antlr.SemanticException: void <init>(java.lang.String)>($r17) 

(declare-const var1427!1 var718)
(declare-const var3321!1 String)
(define-const var2249 var2576 (cast-from-var718-to-var2576 var1427!1)) ; Statement: $r21 = (java.lang.Throwable) $r20 
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {getSessionFactoryHelper/-126384614=([org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode], org.hibernate.hql.internal.ast.util.SessionFactoryHelper), cast-from-var3104-to-var467=([org.hibernate.hql.internal.ast.tree.ConstructorNode], org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode), getImportedClassName/-754587902=([org.hibernate.hql.internal.ast.util.SessionFactoryHelper, java.lang.String], java.lang.String), var3182_isEmpty/1672864985=([java.lang.String], boolean), var718-init=([], antlr.SemanticException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1580113206=([antlr.SemanticException, java.lang.String], void), cast-from-var718-to-var2576=([antlr.SemanticException], java.lang.Throwable)}
; {var3104=org.hibernate.hql.internal.ast.tree.ConstructorNode, var67=r0, var499=r1, var1282=null_type, var3219=org.hibernate.hql.internal.ast.util.SessionFactoryHelper, var467=org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode, var2223=$r2, var3264=r3, var3182=org.hibernate.internal.util.StringHelper, var774=$z0, var3830=$r18, var718=antlr.SemanticException, var1427=$r20, var2087=$r19, var1709=$r14, var2138=$r15, var3497=$r16, var3321=$r17, var2576=java.lang.Throwable, var2249=$r21}
; {org.hibernate.hql.internal.ast.tree.ConstructorNode=var3104, r0=var67, r1=var499, null_type=var1282, org.hibernate.hql.internal.ast.util.SessionFactoryHelper=var3219, org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode=var467, $r2=var2223, r3=var3264, org.hibernate.internal.util.StringHelper=var3182, $z0=var774, $r18=var3830, antlr.SemanticException=var718, $r20=var1427, $r19=var2087, $r14=var1709, $r15=var2138, $r16=var3497, $r17=var3321, java.lang.Throwable=var2576, $r21=var2249}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.ConstructorNode;	r1 := @parameter0: java.lang.String;	$r2 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>();	r3 = virtualinvoke $r2.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: java.lang.String getImportedClassName(java.lang.String)>(r1);	$z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isEmpty(java.lang.String)>(r3);	if $z0 == 0 goto $r18 = r3;	$r18 = r1;	goto [?= (branch)];	if $r18 != null goto $r4 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>();	$r20 = new antlr.SemanticException;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate class [");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r20.<antlr.SemanticException: void <init>(java.lang.String)>($r17);	$r21 = (java.lang.Throwable) $r20;	throw $r21
;block_num 4