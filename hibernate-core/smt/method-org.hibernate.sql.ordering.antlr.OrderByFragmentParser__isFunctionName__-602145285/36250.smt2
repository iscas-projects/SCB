(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2913 0)
(declare-sort var3288 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3288_getFirstChild/-534341403 (var3288) var3288)
(declare-fun var3288_getText/-200495485 (var3288) String)
(declare-const null-var2913 var2913)
(declare-const null-var3288 var3288)
(declare-const var3521 var2913) ; Statement: r2 := @this: org.hibernate.sql.ordering.antlr.OrderByFragmentParser 
(assert (not (= var3521 null-var2913)))
(declare-const var3875 var3288) ; Statement: r0 := @parameter0: antlr.collections.AST 
(assert (not (= var3875 null-var3288)))
(define-const var3862 var3288 (var3288_getFirstChild/-534341403 var3875)) ; Statement: r1 = interfaceinvoke r0.<antlr.collections.AST: antlr.collections.AST getFirstChild()>() 
 ; Statement: if r1 == null goto $r3 = r2.<org.hibernate.sql.ordering.antlr.OrderByFragmentParser: org.hibernate.sql.ordering.antlr.TranslationContext context> 
(assert (not (= var3862 null-var3288))) ; Negate: Cond: r1 == null  
(define-const var3170 String "{param list}") ; Statement: $r7 = "{param list}" 
(define-const var1239 String (var3288_getText/-200495485 var3862)) ; Statement: $r6 = interfaceinvoke r1.<antlr.collections.AST: java.lang.String getText()>() 
(assert true)
(define-const var1942 Bool (= var3170 var1239)) ; Statement: $z1 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z1 == 0 goto $r3 = r2.<org.hibernate.sql.ordering.antlr.OrderByFragmentParser: org.hibernate.sql.ordering.antlr.TranslationContext context> 
(assert (not (= (ite var1942 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3288_getFirstChild/-534341403=([antlr.collections.AST], antlr.collections.AST), var3288_getText/-200495485=([antlr.collections.AST], java.lang.String)}
; {var2913=org.hibernate.sql.ordering.antlr.OrderByFragmentParser, var3521=r2, var3288=antlr.collections.AST, var3875=r0, var3862=r1, var3170=$r7, var1239=$r6, var1942=$z1}
; {org.hibernate.sql.ordering.antlr.OrderByFragmentParser=var2913, r2=var3521, antlr.collections.AST=var3288, r0=var3875, r1=var3862, $r7=var3170, $r6=var1239, $z1=var1942}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.hibernate.sql.ordering.antlr.OrderByFragmentParser;	r0 := @parameter0: antlr.collections.AST;	r1 = interfaceinvoke r0.<antlr.collections.AST: antlr.collections.AST getFirstChild()>();	if r1 == null goto $r3 = r2.<org.hibernate.sql.ordering.antlr.OrderByFragmentParser: org.hibernate.sql.ordering.antlr.TranslationContext context>;	$r7 = "{param list}";	$r6 = interfaceinvoke r1.<antlr.collections.AST: java.lang.String getText()>();	$z1 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z1 == 0 goto $r3 = r2.<org.hibernate.sql.ordering.antlr.OrderByFragmentParser: org.hibernate.sql.ordering.antlr.TranslationContext context>;	return 1
;block_num 3