(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3826 0)
(declare-sort var3075 0)
(declare-sort var1668 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-1312527615 (var3826) var1668)
(declare-fun var1668_access$000/486460211 (var1668) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3826 var3826)
(declare-const null-String String)
(declare-const var2485 var3826) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.SqlGenerator$DefaultWriter 
(assert (not (= var2485 null-var3826)))
(declare-const var2519 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2519 null-String)))
(define-const var2025 var1668 (this$0/-1312527615 var2485)) ; Statement: $r1 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$DefaultWriter: org.hibernate.hql.internal.ast.SqlGenerator this$0> 
(define-const var970 String (var1668_access$000/486460211 var2025)) ; Statement: $r3 = staticinvoke <org.hibernate.hql.internal.ast.SqlGenerator: java.lang.StringBuilder access$000(org.hibernate.hql.internal.ast.SqlGenerator)>($r1) 
(assert true)
;(assert (append/672562846 var970 var2519)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var970!1 String)
(assert (= var970!1 (str.++ var970 var2519)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-1312527615=([org.hibernate.hql.internal.ast.SqlGenerator$DefaultWriter], org.hibernate.hql.internal.ast.SqlGenerator), var1668_access$000/486460211=([org.hibernate.hql.internal.ast.SqlGenerator], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3826=org.hibernate.hql.internal.ast.SqlGenerator$DefaultWriter, var2485=r0, var2519=r2, var3075=null_type, var1668=org.hibernate.hql.internal.ast.SqlGenerator, var2025=$r1, var970=$r3}
; {org.hibernate.hql.internal.ast.SqlGenerator$DefaultWriter=var3826, r0=var2485, r2=var2519, null_type=var3075, org.hibernate.hql.internal.ast.SqlGenerator=var1668, $r1=var2025, $r3=var970}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.SqlGenerator$DefaultWriter;	r2 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$DefaultWriter: org.hibernate.hql.internal.ast.SqlGenerator this$0>;	$r3 = staticinvoke <org.hibernate.hql.internal.ast.SqlGenerator: java.lang.StringBuilder access$000(org.hibernate.hql.internal.ast.SqlGenerator)>($r1);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	return
;block_num 1