(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1106 0)
(declare-sort var347 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-1312527615 (var1106) var347)
(declare-fun var347_access$100/478700852 (var347) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1106 var1106)
(declare-const var1896 var1106) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.SqlGenerator$DefaultWriter 
(assert (not (= var1896 null-var1106)))
(define-const var3299 var347 (this$0/-1312527615 var1896)) ; Statement: $r1 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$DefaultWriter: org.hibernate.hql.internal.ast.SqlGenerator this$0> 
(define-const var2160 String (var347_access$100/478700852 var3299)) ; Statement: $r2 = staticinvoke <org.hibernate.hql.internal.ast.SqlGenerator: java.lang.StringBuilder access$100(org.hibernate.hql.internal.ast.SqlGenerator)>($r1) 
(assert true)
;(assert (append/672562846 var2160 ", ")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var2160!1 String)
(assert (= var2160!1 (str.++ var2160 ", ")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-1312527615=([org.hibernate.hql.internal.ast.SqlGenerator$DefaultWriter], org.hibernate.hql.internal.ast.SqlGenerator), var347_access$100/478700852=([org.hibernate.hql.internal.ast.SqlGenerator], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1106=org.hibernate.hql.internal.ast.SqlGenerator$DefaultWriter, var1896=r0, var347=org.hibernate.hql.internal.ast.SqlGenerator, var3299=$r1, var2160=$r2}
; {org.hibernate.hql.internal.ast.SqlGenerator$DefaultWriter=var1106, r0=var1896, org.hibernate.hql.internal.ast.SqlGenerator=var347, $r1=var3299, $r2=var2160}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.SqlGenerator$DefaultWriter;	$r1 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$DefaultWriter: org.hibernate.hql.internal.ast.SqlGenerator this$0>;	$r2 = staticinvoke <org.hibernate.hql.internal.ast.SqlGenerator: java.lang.StringBuilder access$100(org.hibernate.hql.internal.ast.SqlGenerator)>($r1);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	return
;block_num 1