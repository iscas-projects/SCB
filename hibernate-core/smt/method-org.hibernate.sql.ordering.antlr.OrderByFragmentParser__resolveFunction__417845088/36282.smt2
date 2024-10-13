(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var513 0)
(declare-sort var1632 0)
(declare-sort var3229 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1632_getFirstChild/-534341403 (var1632) var1632)
(declare-fun var1632_getText/-200495485 (var1632) String)
(declare-fun var3229-init () var3229)
(declare-fun <init>/-208190597 (var3229) void)
(declare-const null-var513 var513)
(declare-const null-var1632 var1632)
(declare-const var513-$assertionsDisabled Bool)
(declare-const var3177 var513) ; Statement: r1 := @this: org.hibernate.sql.ordering.antlr.OrderByFragmentParser 
(assert (not (= var3177 null-var513)))
(declare-const var3439 var1632) ; Statement: r0 := @parameter0: antlr.collections.AST 
(assert (not (= var3439 null-var1632)))
(define-const var1914 var1632 (var1632_getFirstChild/-534341403 var3439)) ; Statement: r27 = interfaceinvoke r0.<antlr.collections.AST: antlr.collections.AST getFirstChild()>() 
 ; Statement: if r27 == null goto $r28 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>() 
(assert (not (= var1914 null-var1632))) ; Negate: Cond: r27 == null  
(define-const var370 Bool var513-$assertionsDisabled) ; Statement: $z0 = <org.hibernate.sql.ordering.antlr.OrderByFragmentParser: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto r27 = interfaceinvoke r27.<antlr.collections.AST: antlr.collections.AST getFirstChild()>() 
(assert (not (not (= (ite var370 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1555 String "{param list}") ; Statement: $r25 = "{param list}" 
(define-const var774 String (var1632_getText/-200495485 var1914)) ; Statement: $r24 = interfaceinvoke r27.<antlr.collections.AST: java.lang.String getText()>() 
(assert true)
(define-const var287 Bool (= var1555 var774)) ; Statement: $z1 = virtualinvoke $r25.<java.lang.String: boolean equals(java.lang.Object)>($r24) 
 ; Statement: if $z1 != 0 goto r27 = interfaceinvoke r27.<antlr.collections.AST: antlr.collections.AST getFirstChild()>() 
(assert (not (not (= (ite var287 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var2238 var3229 var3229-init) ; Statement: $r26 = new java.lang.AssertionError 
(assert true)
;(assert (<init>/-208190597 var2238)) ; Statement: specialinvoke $r26.<java.lang.AssertionError: void <init>()>() 

(declare-const var2238!1 var3229)
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {var1632_getFirstChild/-534341403=([antlr.collections.AST], antlr.collections.AST), var1632_getText/-200495485=([antlr.collections.AST], java.lang.String), var3229-init=([], java.lang.AssertionError), <init>/-208190597=([java.lang.AssertionError], void)}
; {var513=org.hibernate.sql.ordering.antlr.OrderByFragmentParser, var3177=r1, var1632=antlr.collections.AST, var3439=r0, var1914=r27, var370=$z0, var1555=$r25, var774=$r24, var287=$z1, var3229=java.lang.AssertionError, var2238=$r26}
; {org.hibernate.sql.ordering.antlr.OrderByFragmentParser=var513, r1=var3177, antlr.collections.AST=var1632, r0=var3439, r27=var1914, $z0=var370, $r25=var1555, $r24=var774, $z1=var287, java.lang.AssertionError=var3229, $r26=var2238}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.hibernate.sql.ordering.antlr.OrderByFragmentParser;	r0 := @parameter0: antlr.collections.AST;	r27 = interfaceinvoke r0.<antlr.collections.AST: antlr.collections.AST getFirstChild()>();	if r27 == null goto $r28 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>();	$z0 = <org.hibernate.sql.ordering.antlr.OrderByFragmentParser: boolean $assertionsDisabled>;	if $z0 != 0 goto r27 = interfaceinvoke r27.<antlr.collections.AST: antlr.collections.AST getFirstChild()>();	$r25 = "{param list}";	$r24 = interfaceinvoke r27.<antlr.collections.AST: java.lang.String getText()>();	$z1 = virtualinvoke $r25.<java.lang.String: boolean equals(java.lang.Object)>($r24);	if $z1 != 0 goto r27 = interfaceinvoke r27.<antlr.collections.AST: antlr.collections.AST getFirstChild()>();	$r26 = new java.lang.AssertionError;	specialinvoke $r26.<java.lang.AssertionError: void <init>()>();	throw $r26
;block_num 4