(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1714 0)
(declare-sort var2504 0)
(declare-sort var623 0)
(declare-sort var2037 0)
(declare-sort var1192 0)
(declare-sort var1512 0)
(declare-sort var2687 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2504_getFirstChild/-534341403 (var2504) var2504)
(declare-fun var2504_getText/-200495485 (var2504) String)
(declare-fun context/-1432686337 (var1714) var623)
(declare-fun var623_getSqlFunctionRegistry/-1825319288 (var623) var2037)
(declare-fun findSQLFunction/1942375706 (var2037 String) var1192)
(declare-fun getASTFactory/1091589347 (var2687) var1512)
(declare-fun cast-from-var1714-to-var2687 (var1714) var2687)
(declare-fun create/1404089312 (var1512 Int String) var2504)
(declare-const null-var1714 var1714)
(declare-const null-var2504 var2504)
(declare-const null-var1192 var1192)
(declare-const var528 var1714) ; Statement: r1 := @this: org.hibernate.sql.ordering.antlr.OrderByFragmentParser 
(assert (not (= var528 null-var1714)))
(declare-const var3073 var2504) ; Statement: r0 := @parameter0: antlr.collections.AST 
(assert (not (= var3073 null-var2504)))
(define-const var1328 var2504 (var2504_getFirstChild/-534341403 var3073)) ; Statement: r27 = interfaceinvoke r0.<antlr.collections.AST: antlr.collections.AST getFirstChild()>() 
 ; Statement: if r27 == null goto $r28 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>() 
(assert (= var1328 null-var2504)) ; Cond: r27 == null 
(define-const var3093 String (var2504_getText/-200495485 var3073)) ; Statement: $r28 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>() 
(define-const var2630 var623 (context/-1432686337 var528)) ; Statement: $r29 = r1.<org.hibernate.sql.ordering.antlr.OrderByFragmentParser: org.hibernate.sql.ordering.antlr.TranslationContext context> 
(define-const var87 var2037 (var623_getSqlFunctionRegistry/-1825319288 var2630)) ; Statement: $r30 = interfaceinvoke $r29.<org.hibernate.sql.ordering.antlr.TranslationContext: org.hibernate.dialect.function.SQLFunctionRegistry getSqlFunctionRegistry()>() 
(assert true)
(define-const var2984 var1192 (findSQLFunction/1942375706 var87 var3093)) ; Statement: $r31 = virtualinvoke $r30.<org.hibernate.dialect.function.SQLFunctionRegistry: org.hibernate.dialect.function.SQLFunction findSQLFunction(java.lang.String)>($r28) 
 ; Statement: if $r31 != null goto $r2 = new java.util.ArrayList 
(assert (not (not (= var2984 null-var1192)))) ; Negate: Cond: $r31 != null  
(define-const var2060 String var3093) ; Statement: r32 = $r28 
 ; Statement: if r27 == null goto $r9 = virtualinvoke r1.<org.hibernate.sql.ordering.antlr.OrderByFragmentParser: antlr.ASTFactory getASTFactory()>() 
(assert (= var1328 null-var2504)) ; Cond: r27 == null 
(assert true)
(define-const var2665 var1512 (getASTFactory/1091589347 (cast-from-var1714-to-var2687 var528))) ; Statement: $r9 = virtualinvoke r1.<org.hibernate.sql.ordering.antlr.OrderByFragmentParser: antlr.ASTFactory getASTFactory()>() 
(assert true)
(define-const var811 var2504 (create/1404089312 var2665 21 var2060)) ; Statement: $r10 = virtualinvoke $r9.<antlr.ASTFactory: antlr.collections.AST create(int,java.lang.String)>(21, r32) 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var2504_getFirstChild/-534341403=([antlr.collections.AST], antlr.collections.AST), var2504_getText/-200495485=([antlr.collections.AST], java.lang.String), context/-1432686337=([org.hibernate.sql.ordering.antlr.OrderByFragmentParser], org.hibernate.sql.ordering.antlr.TranslationContext), var623_getSqlFunctionRegistry/-1825319288=([org.hibernate.sql.ordering.antlr.TranslationContext], org.hibernate.dialect.function.SQLFunctionRegistry), findSQLFunction/1942375706=([org.hibernate.dialect.function.SQLFunctionRegistry, java.lang.String], org.hibernate.dialect.function.SQLFunction), getASTFactory/1091589347=([antlr.LLkParser], antlr.ASTFactory), cast-from-var1714-to-var2687=([org.hibernate.sql.ordering.antlr.OrderByFragmentParser], antlr.LLkParser), create/1404089312=([antlr.ASTFactory, int, java.lang.String], antlr.collections.AST)}
; {var1714=org.hibernate.sql.ordering.antlr.OrderByFragmentParser, var528=r1, var2504=antlr.collections.AST, var3073=r0, var1328=r27, var3093=$r28, var623=org.hibernate.sql.ordering.antlr.TranslationContext, var2630=$r29, var2037=org.hibernate.dialect.function.SQLFunctionRegistry, var87=$r30, var1192=org.hibernate.dialect.function.SQLFunction, var2984=$r31, var2060=r32, var1512=antlr.ASTFactory, var2687=antlr.LLkParser, var2665=$r9, var811=$r10}
; {org.hibernate.sql.ordering.antlr.OrderByFragmentParser=var1714, r1=var528, antlr.collections.AST=var2504, r0=var3073, r27=var1328, $r28=var3093, org.hibernate.sql.ordering.antlr.TranslationContext=var623, $r29=var2630, org.hibernate.dialect.function.SQLFunctionRegistry=var2037, $r30=var87, org.hibernate.dialect.function.SQLFunction=var1192, $r31=var2984, r32=var2060, antlr.ASTFactory=var1512, antlr.LLkParser=var2687, $r9=var2665, $r10=var811}
;seq 
;cnt {}
;stmts r1 := @this: org.hibernate.sql.ordering.antlr.OrderByFragmentParser;	r0 := @parameter0: antlr.collections.AST;	r27 = interfaceinvoke r0.<antlr.collections.AST: antlr.collections.AST getFirstChild()>();	if r27 == null goto $r28 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>();	$r28 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>();	$r29 = r1.<org.hibernate.sql.ordering.antlr.OrderByFragmentParser: org.hibernate.sql.ordering.antlr.TranslationContext context>;	$r30 = interfaceinvoke $r29.<org.hibernate.sql.ordering.antlr.TranslationContext: org.hibernate.dialect.function.SQLFunctionRegistry getSqlFunctionRegistry()>();	$r31 = virtualinvoke $r30.<org.hibernate.dialect.function.SQLFunctionRegistry: org.hibernate.dialect.function.SQLFunction findSQLFunction(java.lang.String)>($r28);	if $r31 != null goto $r2 = new java.util.ArrayList;	r32 = $r28;	if r27 == null goto $r9 = virtualinvoke r1.<org.hibernate.sql.ordering.antlr.OrderByFragmentParser: antlr.ASTFactory getASTFactory()>();	$r9 = virtualinvoke r1.<org.hibernate.sql.ordering.antlr.OrderByFragmentParser: antlr.ASTFactory getASTFactory()>();	$r10 = virtualinvoke $r9.<antlr.ASTFactory: antlr.collections.AST create(int,java.lang.String)>(21, r32);	return $r10
;block_num 4