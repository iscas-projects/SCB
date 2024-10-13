(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1477 0)
(declare-sort var1353 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getStringBuilder/-1759132354 (var1477) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1477 var1477)
(declare-const null-String String)
(declare-const var1944 var1477) ; Statement: r0 := @this: org.hibernate.hql.internal.antlr.SqlGeneratorBase 
(assert (not (= var1944 null-var1477)))
(declare-const var2173 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2173 null-String)))
(assert true)
(define-const var358 String (getStringBuilder/-1759132354 var1944)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: java.lang.StringBuilder getStringBuilder()>() 
(assert true)
;(assert (append/672562846 var358 var2173)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var358!1 String)
(assert (= var358!1 (str.++ var358 var2173)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getStringBuilder/-1759132354=([org.hibernate.hql.internal.antlr.SqlGeneratorBase], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1477=org.hibernate.hql.internal.antlr.SqlGeneratorBase, var1944=r0, var2173=r1, var1353=null_type, var358=$r2}
; {org.hibernate.hql.internal.antlr.SqlGeneratorBase=var1477, r0=var1944, r1=var2173, null_type=var1353, $r2=var358}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.antlr.SqlGeneratorBase;	r1 := @parameter0: java.lang.String;	$r2 = virtualinvoke r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: java.lang.StringBuilder getStringBuilder()>();	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	return
;block_num 1