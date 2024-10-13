(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2961 0)
(declare-sort var3661 0)
(declare-sort var2018 0)
(declare-sort var3734 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3661_getText/-200495485 (var3661) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3661_getType/1604486320 (var3661) Int)
(declare-fun getTokenTypeName/287828581 (var2018 Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2961 var2961)
(declare-const null-var3661 var3661)
(declare-const var3734-ORDERBY_FRAGMENT_PRINTER var2018)
(declare-const var780 var2961) ; Statement: r9 := @this: org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer 
(assert (not (= var780 null-var2961)))
(declare-const var3136 var3661) ; Statement: r0 := @parameter0: antlr.collections.AST 
(assert (not (= var3136 null-var3661)))
 ; Statement: if r0 != null goto $r1 = new java.lang.StringBuilder 
(assert (not (= var3136 null-var3661))) ; Cond: r0 != null 
(define-const var3800 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3800)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3800!1 String)
(assert (= var3800!1 ""))
(define-const var1985 String (var3661_getText/-200495485 var3136)) ; Statement: $r2 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>() 
(assert true)
(define-const var1835 String (append/672562846 var3800!1 var1985)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3800!2 String)
(assert (= var3800!2 (str.++ var3800!1 var1985)))
(assert true)
(define-const var2798 String (append/672562846 var1835 " [")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [") 
(declare-const var1835!1 String)
(assert (= var1835!1 (str.++ var1835 " [")))
(define-const var493 var2018 var3734-ORDERBY_FRAGMENT_PRINTER) ; Statement: $r4 = <org.hibernate.hql.internal.ast.util.TokenPrinters: org.hibernate.hql.internal.ast.util.ASTPrinter ORDERBY_FRAGMENT_PRINTER> 
(define-const var1519 Int (var3661_getType/1604486320 var3136)) ; Statement: $i0 = interfaceinvoke r0.<antlr.collections.AST: int getType()>() 
(assert true)
(define-const var3083 String (getTokenTypeName/287828581 var493 var1519)) ; Statement: $r5 = virtualinvoke $r4.<org.hibernate.hql.internal.ast.util.ASTPrinter: java.lang.String getTokenTypeName(int)>($i0) 
(assert true)
(define-const var3640 String (append/672562846 var2798 var3083)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2798!1 String)
(assert (= var2798!1 (str.++ var2798 var3083)))
(assert true)
(define-const var1335 String (append/672562846 var3640 "]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3640!1 String)
(assert (= var3640!1 (str.++ var3640 "]")))
(assert true)
(define-const var2864 String (toString/-2075883882 var1335)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3661_getText/-200495485=([antlr.collections.AST], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3661_getType/1604486320=([antlr.collections.AST], int), getTokenTypeName/287828581=([org.hibernate.hql.internal.ast.util.ASTPrinter, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2961=org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer, var780=r9, var3661=antlr.collections.AST, var3136=r0, var3800=$r1, var1985=$r2, var1835=$r3, var2798=$r6, var2018=org.hibernate.hql.internal.ast.util.ASTPrinter, var3734=org.hibernate.hql.internal.ast.util.TokenPrinters, var493=$r4, var1519=$i0, var3083=$r5, var3640=$r7, var1335=$r8, var2864=$r10}
; {org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer=var2961, r9=var780, antlr.collections.AST=var3661, r0=var3136, $r1=var3800, $r2=var1985, $r3=var1835, $r6=var2798, org.hibernate.hql.internal.ast.util.ASTPrinter=var2018, org.hibernate.hql.internal.ast.util.TokenPrinters=var3734, $r4=var493, $i0=var1519, $r5=var3083, $r7=var3640, $r8=var1335, $r10=var2864}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer;	r0 := @parameter0: antlr.collections.AST;	if r0 != null goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [");	$r4 = <org.hibernate.hql.internal.ast.util.TokenPrinters: org.hibernate.hql.internal.ast.util.ASTPrinter ORDERBY_FRAGMENT_PRINTER>;	$i0 = interfaceinvoke r0.<antlr.collections.AST: int getType()>();	$r5 = virtualinvoke $r4.<org.hibernate.hql.internal.ast.util.ASTPrinter: java.lang.String getTokenTypeName(int)>($i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 3