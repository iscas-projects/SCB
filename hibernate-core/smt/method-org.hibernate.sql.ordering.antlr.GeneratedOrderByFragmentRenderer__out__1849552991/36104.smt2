(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2832 0)
(declare-sort var2636 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/1323243358 (var2832) String)
(declare-fun var2636_getText/-200495485 (var2636) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2832 var2832)
(declare-const null-var2636 var2636)
(declare-const var250 var2832) ; Statement: r0 := @this: org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer 
(assert (not (= var250 null-var2832)))
(declare-const var743 var2636) ; Statement: r1 := @parameter0: antlr.collections.AST 
(assert (not (= var743 null-var2636)))
(define-const var3202 String (buffer/1323243358 var250)) ; Statement: $r2 = r0.<org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer: java.lang.StringBuilder buffer> 
(define-const var326 String (var2636_getText/-200495485 var743)) ; Statement: $r3 = interfaceinvoke r1.<antlr.collections.AST: java.lang.String getText()>() 
(assert true)
;(assert (append/672562846 var3202 var326)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3202!1 String)
(assert (= var3202!1 (str.++ var3202 var326)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/1323243358=([org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer], java.lang.StringBuilder), var2636_getText/-200495485=([antlr.collections.AST], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2832=org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer, var250=r0, var2636=antlr.collections.AST, var743=r1, var3202=$r2, var326=$r3}
; {org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer=var2832, r0=var250, antlr.collections.AST=var2636, r1=var743, $r2=var3202, $r3=var326}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer;	r1 := @parameter0: antlr.collections.AST;	$r2 = r0.<org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer: java.lang.StringBuilder buffer>;	$r3 = interfaceinvoke r1.<antlr.collections.AST: java.lang.String getText()>();	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	return
;block_num 1