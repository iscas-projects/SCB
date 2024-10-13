(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2794 0)
(declare-sort var2934 0)
(declare-sort var3105 0)
(declare-sort var3575 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2934_getText/-200495485 (var2934) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2934_getType/1604486320 (var2934) Int)
(declare-fun getTokenTypeName/287828581 (var3105 Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2794 var2794)
(declare-const null-var2934 var2934)
(declare-const var3575-SQL_TOKEN_PRINTER var3105)
(declare-const var23 var2794) ; Statement: r9 := @this: org.hibernate.hql.internal.ast.HqlSqlWalker 
(assert (not (= var23 null-var2794)))
(declare-const var116 var2934) ; Statement: r0 := @parameter0: antlr.collections.AST 
(assert (not (= var116 null-var2934)))
 ; Statement: if r0 != null goto $r1 = new java.lang.StringBuilder 
(assert (not (= var116 null-var2934))) ; Cond: r0 != null 
(define-const var260 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var260)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var260!1 String)
(assert (= var260!1 ""))
(define-const var730 String (var2934_getText/-200495485 var116)) ; Statement: $r2 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>() 
(assert true)
(define-const var3989 String (append/672562846 var260!1 var730)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var260!2 String)
(assert (= var260!2 (str.++ var260!1 var730)))
(assert true)
(define-const var1169 String (append/672562846 var3989 " [")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [") 
(declare-const var3989!1 String)
(assert (= var3989!1 (str.++ var3989 " [")))
(define-const var2216 var3105 var3575-SQL_TOKEN_PRINTER) ; Statement: $r4 = <org.hibernate.hql.internal.ast.util.TokenPrinters: org.hibernate.hql.internal.ast.util.ASTPrinter SQL_TOKEN_PRINTER> 
(define-const var552 Int (var2934_getType/1604486320 var116)) ; Statement: $i0 = interfaceinvoke r0.<antlr.collections.AST: int getType()>() 
(assert true)
(define-const var224 String (getTokenTypeName/287828581 var2216 var552)) ; Statement: $r5 = virtualinvoke $r4.<org.hibernate.hql.internal.ast.util.ASTPrinter: java.lang.String getTokenTypeName(int)>($i0) 
(assert true)
(define-const var3595 String (append/672562846 var1169 var224)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1169!1 String)
(assert (= var1169!1 (str.++ var1169 var224)))
(assert true)
(define-const var874 String (append/672562846 var3595 "]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3595!1 String)
(assert (= var3595!1 (str.++ var3595 "]")))
(assert true)
(define-const var3111 String (toString/-2075883882 var874)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2934_getText/-200495485=([antlr.collections.AST], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2934_getType/1604486320=([antlr.collections.AST], int), getTokenTypeName/287828581=([org.hibernate.hql.internal.ast.util.ASTPrinter, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2794=org.hibernate.hql.internal.ast.HqlSqlWalker, var23=r9, var2934=antlr.collections.AST, var116=r0, var260=$r1, var730=$r2, var3989=$r3, var1169=$r6, var3105=org.hibernate.hql.internal.ast.util.ASTPrinter, var3575=org.hibernate.hql.internal.ast.util.TokenPrinters, var2216=$r4, var552=$i0, var224=$r5, var3595=$r7, var874=$r8, var3111=$r10}
; {org.hibernate.hql.internal.ast.HqlSqlWalker=var2794, r9=var23, antlr.collections.AST=var2934, r0=var116, $r1=var260, $r2=var730, $r3=var3989, $r6=var1169, org.hibernate.hql.internal.ast.util.ASTPrinter=var3105, org.hibernate.hql.internal.ast.util.TokenPrinters=var3575, $r4=var2216, $i0=var552, $r5=var224, $r7=var3595, $r8=var874, $r10=var3111}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.hibernate.hql.internal.ast.HqlSqlWalker;	r0 := @parameter0: antlr.collections.AST;	if r0 != null goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [");	$r4 = <org.hibernate.hql.internal.ast.util.TokenPrinters: org.hibernate.hql.internal.ast.util.ASTPrinter SQL_TOKEN_PRINTER>;	$i0 = interfaceinvoke r0.<antlr.collections.AST: int getType()>();	$r5 = virtualinvoke $r4.<org.hibernate.hql.internal.ast.util.ASTPrinter: java.lang.String getTokenTypeName(int)>($i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 3