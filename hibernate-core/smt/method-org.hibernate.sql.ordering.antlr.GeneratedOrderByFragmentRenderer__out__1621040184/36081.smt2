(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2783 0)
(declare-sort var3831 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/1323243358 (var2783) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2783 var2783)
(declare-const null-String String)
(declare-const var1631 var2783) ; Statement: r0 := @this: org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer 
(assert (not (= var1631 null-var2783)))
(declare-const var2325 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2325 null-String)))
(define-const var3643 String (buffer/1323243358 var1631)) ; Statement: $r2 = r0.<org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer: java.lang.StringBuilder buffer> 
(assert true)
;(assert (append/672562846 var3643 var2325)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3643!1 String)
(assert (= var3643!1 (str.++ var3643 var2325)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/1323243358=([org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2783=org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer, var1631=r0, var2325=r1, var3831=null_type, var3643=$r2}
; {org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer=var2783, r0=var1631, r1=var2325, null_type=var3831, $r2=var3643}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer: java.lang.StringBuilder buffer>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	return
;block_num 1