(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var125 0)
(declare-sort var1218 0)
(declare-sort var2017 0)
(declare-sort var2181 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1218_getText/-200495485 (var1218) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1218_getType/1604486320 (var1218) Int)
(declare-fun getTokenTypeName/287828581 (var2017 Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var125 var125)
(declare-const null-var1218 var1218)
(declare-const var2181-SQL_TOKEN_PRINTER var2017)
(declare-const var1240 var125) ; Statement: r9 := @this: org.hibernate.hql.internal.ast.SqlGenerator 
(assert (not (= var1240 null-var125)))
(declare-const var2582 var1218) ; Statement: r0 := @parameter0: antlr.collections.AST 
(assert (not (= var2582 null-var1218)))
 ; Statement: if r0 != null goto $r1 = new java.lang.StringBuilder 
(assert (not (= var2582 null-var1218))) ; Cond: r0 != null 
(define-const var1421 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1421)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1421!1 String)
(assert (= var1421!1 ""))
(define-const var1795 String (var1218_getText/-200495485 var2582)) ; Statement: $r2 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>() 
(assert true)
(define-const var1011 String (append/672562846 var1421!1 var1795)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1421!2 String)
(assert (= var1421!2 (str.++ var1421!1 var1795)))
(assert true)
(define-const var716 String (append/672562846 var1011 " [")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [") 
(declare-const var1011!1 String)
(assert (= var1011!1 (str.++ var1011 " [")))
(define-const var3836 var2017 var2181-SQL_TOKEN_PRINTER) ; Statement: $r4 = <org.hibernate.hql.internal.ast.util.TokenPrinters: org.hibernate.hql.internal.ast.util.ASTPrinter SQL_TOKEN_PRINTER> 
(define-const var2832 Int (var1218_getType/1604486320 var2582)) ; Statement: $i0 = interfaceinvoke r0.<antlr.collections.AST: int getType()>() 
(assert true)
(define-const var2722 String (getTokenTypeName/287828581 var3836 var2832)) ; Statement: $r5 = virtualinvoke $r4.<org.hibernate.hql.internal.ast.util.ASTPrinter: java.lang.String getTokenTypeName(int)>($i0) 
(assert true)
(define-const var2583 String (append/672562846 var716 var2722)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var716!1 String)
(assert (= var716!1 (str.++ var716 var2722)))
(assert true)
(define-const var1573 String (append/672562846 var2583 "]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2583!1 String)
(assert (= var2583!1 (str.++ var2583 "]")))
(assert true)
(define-const var3482 String (toString/-2075883882 var1573)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1218_getText/-200495485=([antlr.collections.AST], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1218_getType/1604486320=([antlr.collections.AST], int), getTokenTypeName/287828581=([org.hibernate.hql.internal.ast.util.ASTPrinter, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var125=org.hibernate.hql.internal.ast.SqlGenerator, var1240=r9, var1218=antlr.collections.AST, var2582=r0, var1421=$r1, var1795=$r2, var1011=$r3, var716=$r6, var2017=org.hibernate.hql.internal.ast.util.ASTPrinter, var2181=org.hibernate.hql.internal.ast.util.TokenPrinters, var3836=$r4, var2832=$i0, var2722=$r5, var2583=$r7, var1573=$r8, var3482=$r10}
; {org.hibernate.hql.internal.ast.SqlGenerator=var125, r9=var1240, antlr.collections.AST=var1218, r0=var2582, $r1=var1421, $r2=var1795, $r3=var1011, $r6=var716, org.hibernate.hql.internal.ast.util.ASTPrinter=var2017, org.hibernate.hql.internal.ast.util.TokenPrinters=var2181, $r4=var3836, $i0=var2832, $r5=var2722, $r7=var2583, $r8=var1573, $r10=var3482}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.hibernate.hql.internal.ast.SqlGenerator;	r0 := @parameter0: antlr.collections.AST;	if r0 != null goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [");	$r4 = <org.hibernate.hql.internal.ast.util.TokenPrinters: org.hibernate.hql.internal.ast.util.ASTPrinter SQL_TOKEN_PRINTER>;	$i0 = interfaceinvoke r0.<antlr.collections.AST: int getType()>();	$r5 = virtualinvoke $r4.<org.hibernate.hql.internal.ast.util.ASTPrinter: java.lang.String getTokenTypeName(int)>($i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 3