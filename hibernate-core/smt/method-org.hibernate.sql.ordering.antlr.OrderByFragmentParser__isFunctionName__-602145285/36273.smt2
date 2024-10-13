(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3877 0)
(declare-sort var2673 0)
(declare-sort var2502 0)
(declare-sort var576 0)
(declare-sort var3918 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2673_getFirstChild/-534341403 (var2673) var2673)
(declare-fun context/-1432686337 (var3877) var2502)
(declare-fun var2502_getSqlFunctionRegistry/-1825319288 (var2502) var576)
(declare-fun var2673_getText/-200495485 (var2673) String)
(declare-fun findSQLFunction/1942375706 (var576 String) var3918)
(declare-const null-var3877 var3877)
(declare-const null-var2673 var2673)
(declare-const null-var3918 var3918)
(declare-const var175 var3877) ; Statement: r2 := @this: org.hibernate.sql.ordering.antlr.OrderByFragmentParser 
(assert (not (= var175 null-var3877)))
(declare-const var1526 var2673) ; Statement: r0 := @parameter0: antlr.collections.AST 
(assert (not (= var1526 null-var2673)))
(define-const var3189 var2673 (var2673_getFirstChild/-534341403 var1526)) ; Statement: r1 = interfaceinvoke r0.<antlr.collections.AST: antlr.collections.AST getFirstChild()>() 
 ; Statement: if r1 == null goto $r3 = r2.<org.hibernate.sql.ordering.antlr.OrderByFragmentParser: org.hibernate.sql.ordering.antlr.TranslationContext context> 
(assert (= var3189 null-var2673)) ; Cond: r1 == null 
(define-const var691 var2502 (context/-1432686337 var175)) ; Statement: $r3 = r2.<org.hibernate.sql.ordering.antlr.OrderByFragmentParser: org.hibernate.sql.ordering.antlr.TranslationContext context> 
(define-const var3947 var576 (var2502_getSqlFunctionRegistry/-1825319288 var691)) ; Statement: $r5 = interfaceinvoke $r3.<org.hibernate.sql.ordering.antlr.TranslationContext: org.hibernate.dialect.function.SQLFunctionRegistry getSqlFunctionRegistry()>() 
(define-const var2576 String (var2673_getText/-200495485 var1526)) ; Statement: $r4 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>() 
(assert true)
(define-const var3955 var3918 (findSQLFunction/1942375706 var3947 var2576)) ; Statement: $r8 = virtualinvoke $r5.<org.hibernate.dialect.function.SQLFunctionRegistry: org.hibernate.dialect.function.SQLFunction findSQLFunction(java.lang.String)>($r4) 
 ; Statement: if $r8 != null goto $z0 = interfaceinvoke $r8.<org.hibernate.dialect.function.SQLFunction: boolean hasParenthesesIfNoArguments()>() 
(assert (not (not (= var3955 null-var3918)))) ; Negate: Cond: $r8 != null  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2673_getFirstChild/-534341403=([antlr.collections.AST], antlr.collections.AST), context/-1432686337=([org.hibernate.sql.ordering.antlr.OrderByFragmentParser], org.hibernate.sql.ordering.antlr.TranslationContext), var2502_getSqlFunctionRegistry/-1825319288=([org.hibernate.sql.ordering.antlr.TranslationContext], org.hibernate.dialect.function.SQLFunctionRegistry), var2673_getText/-200495485=([antlr.collections.AST], java.lang.String), findSQLFunction/1942375706=([org.hibernate.dialect.function.SQLFunctionRegistry, java.lang.String], org.hibernate.dialect.function.SQLFunction)}
; {var3877=org.hibernate.sql.ordering.antlr.OrderByFragmentParser, var175=r2, var2673=antlr.collections.AST, var1526=r0, var3189=r1, var2502=org.hibernate.sql.ordering.antlr.TranslationContext, var691=$r3, var576=org.hibernate.dialect.function.SQLFunctionRegistry, var3947=$r5, var2576=$r4, var3918=org.hibernate.dialect.function.SQLFunction, var3955=$r8}
; {org.hibernate.sql.ordering.antlr.OrderByFragmentParser=var3877, r2=var175, antlr.collections.AST=var2673, r0=var1526, r1=var3189, org.hibernate.sql.ordering.antlr.TranslationContext=var2502, $r3=var691, org.hibernate.dialect.function.SQLFunctionRegistry=var576, $r5=var3947, $r4=var2576, org.hibernate.dialect.function.SQLFunction=var3918, $r8=var3955}
;seq 
;cnt {}
;stmts r2 := @this: org.hibernate.sql.ordering.antlr.OrderByFragmentParser;	r0 := @parameter0: antlr.collections.AST;	r1 = interfaceinvoke r0.<antlr.collections.AST: antlr.collections.AST getFirstChild()>();	if r1 == null goto $r3 = r2.<org.hibernate.sql.ordering.antlr.OrderByFragmentParser: org.hibernate.sql.ordering.antlr.TranslationContext context>;	$r3 = r2.<org.hibernate.sql.ordering.antlr.OrderByFragmentParser: org.hibernate.sql.ordering.antlr.TranslationContext context>;	$r5 = interfaceinvoke $r3.<org.hibernate.sql.ordering.antlr.TranslationContext: org.hibernate.dialect.function.SQLFunctionRegistry getSqlFunctionRegistry()>();	$r4 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>();	$r8 = virtualinvoke $r5.<org.hibernate.dialect.function.SQLFunctionRegistry: org.hibernate.dialect.function.SQLFunction findSQLFunction(java.lang.String)>($r4);	if $r8 != null goto $z0 = interfaceinvoke $r8.<org.hibernate.dialect.function.SQLFunction: boolean hasParenthesesIfNoArguments()>();	return 0
;block_num 3