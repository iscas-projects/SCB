(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var706 0)
(declare-sort var1098 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getStringBuilder/-1759132354 (var1098) String)
(declare-fun cast-from-var706-to-var1098 (var706) var1098)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var706 var706)
(declare-const var2922 var706) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.SqlGenerator 
(assert (not (= var2922 null-var706)))
(assert true)
(define-const var211 String (getStringBuilder/-1759132354 (cast-from-var706-to-var1098 var2922))) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.SqlGenerator: java.lang.StringBuilder getStringBuilder()>() 
(assert true)
(define-const var3766 String (toString/-2075883882 var211)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getStringBuilder/-1759132354=([org.hibernate.hql.internal.antlr.SqlGeneratorBase], java.lang.StringBuilder), cast-from-var706-to-var1098=([org.hibernate.hql.internal.ast.SqlGenerator], org.hibernate.hql.internal.antlr.SqlGeneratorBase), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var706=org.hibernate.hql.internal.ast.SqlGenerator, var2922=r0, var1098=org.hibernate.hql.internal.antlr.SqlGeneratorBase, var211=$r1, var3766=$r2}
; {org.hibernate.hql.internal.ast.SqlGenerator=var706, r0=var2922, org.hibernate.hql.internal.antlr.SqlGeneratorBase=var1098, $r1=var211, $r2=var3766}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.SqlGenerator;	$r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.SqlGenerator: java.lang.StringBuilder getStringBuilder()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1