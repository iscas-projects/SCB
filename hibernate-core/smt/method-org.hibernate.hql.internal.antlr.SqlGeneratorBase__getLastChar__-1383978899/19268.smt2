(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1005 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/1664261911 (var1005) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun charAt/1621160911 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1005 var1005)
(declare-const var2255 var1005) ; Statement: r0 := @this: org.hibernate.hql.internal.antlr.SqlGeneratorBase 
(assert (not (= var2255 null-var1005)))
(define-const var3485 String (buf/1664261911 var2255)) ; Statement: $r1 = r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: java.lang.StringBuilder buf> 
(assert true)
(define-const var2058 Int (length/-171891354 var3485)) ; Statement: i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
 ; Statement: if i0 != 0 goto $r2 = r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: java.lang.StringBuilder buf> 
(assert (not (= var2058 0))) ; Cond: i0 != 0 
(define-const var633 String (buf/1664261911 var2255)) ; Statement: $r2 = r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: java.lang.StringBuilder buf> 
(define-const var1292 Int (- var2058 1)) ; Statement: $i1 = i0 - 1 
(assert true)
(define-const var3117 Int (charAt/1621160911 var633 var1292)) ; Statement: $c2 = virtualinvoke $r2.<java.lang.StringBuilder: char charAt(int)>($i1) 
(define-const var3790 Int (cast-from-Int-to-Int var3117)) ; Statement: $i5 = (int) $c2 
 ; Statement: return $i5 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/1664261911=([org.hibernate.hql.internal.antlr.SqlGeneratorBase], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), charAt/1621160911=([java.lang.StringBuilder, int], char), cast-from-Int-to-Int=([char], int)}
; {var1005=org.hibernate.hql.internal.antlr.SqlGeneratorBase, var2255=r0, var3485=$r1, var2058=i0, var633=$r2, var1292=$i1, var3117=$c2, var3790=$i5}
; {org.hibernate.hql.internal.antlr.SqlGeneratorBase=var1005, r0=var2255, $r1=var3485, i0=var2058, $r2=var633, $i1=var1292, $c2=var3117, $i5=var3790}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: char charAt(int)>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: char charAt(int)>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.antlr.SqlGeneratorBase;	$r1 = r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: java.lang.StringBuilder buf>;	i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	if i0 != 0 goto $r2 = r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: java.lang.StringBuilder buf>;	$r2 = r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: java.lang.StringBuilder buf>;	$i1 = i0 - 1;	$c2 = virtualinvoke $r2.<java.lang.StringBuilder: char charAt(int)>($i1);	$i5 = (int) $c2;	return $i5
;block_num 2