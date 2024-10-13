(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1236 0)
(declare-sort var3920 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3920_getText/-200495485 (var3920) String)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun adjustTemplateReferences/-88704969 (var1236 String) String)
(declare-const null-var1236 var1236)
(declare-const null-var3920 var3920)
(declare-const var3045 var1236) ; Statement: r2 := @this: org.hibernate.sql.ordering.antlr.OrderByFragmentParser 
(assert (not (= var3045 null-var1236)))
(declare-const var555 var3920) ; Statement: r0 := @parameter0: antlr.collections.AST 
(assert (not (= var555 null-var3920)))
(define-const var3723 String (var3920_getText/-200495485 var555)) ; Statement: r1 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>() 
(assert true)
(define-const var2208 Bool (contains/1009244746 var3723 (cast-from-String-to-String "$PlaceHolder$"))) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("$PlaceHolder$") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("{") 
(assert (not (= (ite var2208 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1752 String (adjustTemplateReferences/-88704969 var3045 var3723)) ; Statement: r9 = specialinvoke r2.<org.hibernate.sql.ordering.antlr.OrderByFragmentParser: java.lang.String adjustTemplateReferences(java.lang.String)>(r1) 
 ; Statement: goto [?= return r9] 
(assert true) ; Non Conditional
 ; Statement: return r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var3920_getText/-200495485=([antlr.collections.AST], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), adjustTemplateReferences/-88704969=([org.hibernate.sql.ordering.antlr.OrderByFragmentParser, java.lang.String], java.lang.String)}
; {var1236=org.hibernate.sql.ordering.antlr.OrderByFragmentParser, var3045=r2, var3920=antlr.collections.AST, var555=r0, var3723=r1, var2208=$z0, var1752=r9}
; {org.hibernate.sql.ordering.antlr.OrderByFragmentParser=var1236, r2=var3045, antlr.collections.AST=var3920, r0=var555, r1=var3723, $z0=var2208, r9=var1752}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r2 := @this: org.hibernate.sql.ordering.antlr.OrderByFragmentParser;	r0 := @parameter0: antlr.collections.AST;	r1 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("$PlaceHolder$");	if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("{");	r9 = specialinvoke r2.<org.hibernate.sql.ordering.antlr.OrderByFragmentParser: java.lang.String adjustTemplateReferences(java.lang.String)>(r1);	goto [?= return r9];	return r9
;block_num 3