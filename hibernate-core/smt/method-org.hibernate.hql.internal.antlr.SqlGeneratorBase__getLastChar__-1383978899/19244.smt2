(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2446 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/1664261911 (var2446) String)
(declare-fun length/-171891354 (String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2446 var2446)
(declare-const var1145 var2446) ; Statement: r0 := @this: org.hibernate.hql.internal.antlr.SqlGeneratorBase 
(assert (not (= var1145 null-var2446)))
(define-const var3817 String (buf/1664261911 var1145)) ; Statement: $r1 = r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: java.lang.StringBuilder buf> 
(assert true)
(define-const var3215 Int (length/-171891354 var3817)) ; Statement: i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
 ; Statement: if i0 != 0 goto $r2 = r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: java.lang.StringBuilder buf> 
(assert (not (not (= var3215 0)))) ; Negate: Cond: i0 != 0  
(define-const var2258 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/1664261911=([org.hibernate.hql.internal.antlr.SqlGeneratorBase], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), cast-from-Int-to-Int=([int], int)}
; {var2446=org.hibernate.hql.internal.antlr.SqlGeneratorBase, var1145=r0, var3817=$r1, var3215=i0, var2258=$i4}
; {org.hibernate.hql.internal.antlr.SqlGeneratorBase=var2446, r0=var1145, $r1=var3817, i0=var3215, $i4=var2258}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.antlr.SqlGeneratorBase;	$r1 = r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: java.lang.StringBuilder buf>;	i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	if i0 != 0 goto $r2 = r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: java.lang.StringBuilder buf>;	$i4 = (int) -1;	return $i4
;block_num 2