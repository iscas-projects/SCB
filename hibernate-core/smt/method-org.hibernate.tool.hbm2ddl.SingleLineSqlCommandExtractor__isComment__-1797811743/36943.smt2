(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1872 0)
(declare-sort var2265 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var1872 var1872)
(declare-const null-String String)
(declare-const var1839 var1872) ; Statement: r1 := @this: org.hibernate.tool.hbm2ddl.SingleLineSqlCommandExtractor 
(assert (not (= var1839 null-var1872)))
(declare-const var1310 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1310 null-String)))
(assert true)
(define-const var3745 Bool (startsWith/-1785782452 var1310 "--")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("--") 
 ; Statement: if $z0 != 0 goto $z3 = 1 
(assert (not (= (ite var3745 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1513 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= return $z3] 
(assert true) ; Non Conditional
 ; Statement: return $z3 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1872=org.hibernate.tool.hbm2ddl.SingleLineSqlCommandExtractor, var1839=r1, var1310=r0, var2265=null_type, var3745=$z0, var1513=$z3}
; {org.hibernate.tool.hbm2ddl.SingleLineSqlCommandExtractor=var1872, r1=var1839, r0=var1310, null_type=var2265, $z0=var3745, $z3=var1513}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @this: org.hibernate.tool.hbm2ddl.SingleLineSqlCommandExtractor;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("--");	if $z0 != 0 goto $z3 = 1;	$z3 = 1;	goto [?= return $z3];	return $z3
;block_num 3