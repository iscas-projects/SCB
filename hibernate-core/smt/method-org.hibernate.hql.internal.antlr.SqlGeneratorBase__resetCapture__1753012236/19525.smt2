(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3444 0)
(declare-sort var3711 0)
(declare-sort var2629 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exprs/1664261911 (var3444) var3711)
(declare-fun var3711_size/-959786421 (var3711) Int)
(declare-fun var3711_remove/1853576941 (var3711 Int) var2629)
(declare-fun cast-from-var2629-to-String (var2629) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3711_isEmpty/-153543822 (var3711) Bool)
(declare-const null-var3444 var3444)
(declare-const var2169 var3444) ; Statement: r0 := @this: org.hibernate.hql.internal.antlr.SqlGeneratorBase 
(assert (not (= var2169 null-var3444)))
(define-const var2549 var3711 (exprs/1664261911 var2169)) ; Statement: $r2 = r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: java.util.List exprs> 
(define-const var44 var3711 (exprs/1664261911 var2169)) ; Statement: $r1 = r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: java.util.List exprs> 
(define-const var3436 Int (var3711_size/-959786421 var44)) ; Statement: $i0 = interfaceinvoke $r1.<java.util.List: int size()>() 
(define-const var1369 Int (- var3436 1)) ; Statement: $i1 = $i0 - 1 
(define-const var2422 var2629 (var3711_remove/1853576941 var2549 var1369)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object remove(int)>($i1) 
(define-const var2504 String (cast-from-var2629-to-String var2422)) ; Statement: r4 = (java.lang.StringBuilder) $r3 
(assert true)
(define-const var1988 String (toString/-2075883882 var2504)) ; Statement: r5 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1942 var3711 (exprs/1664261911 var2169)) ; Statement: $r6 = r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: java.util.List exprs> 
(define-const var2996 Bool (var3711_isEmpty/-153543822 var1942)) ; Statement: $z0 = interfaceinvoke $r6.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto return r5 
(assert (= (ite var2996 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {exprs/1664261911=([org.hibernate.hql.internal.antlr.SqlGeneratorBase], java.util.List), var3711_size/-959786421=([java.util.List], int), var3711_remove/1853576941=([java.util.List, int], java.lang.Object), cast-from-var2629-to-String=([java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3711_isEmpty/-153543822=([java.util.List], boolean)}
; {var3444=org.hibernate.hql.internal.antlr.SqlGeneratorBase, var2169=r0, var3711=java.util.List, var2549=$r2, var44=$r1, var3436=$i0, var1369=$i1, var2629=java.lang.Object, var2422=$r3, var2504=r4, var1988=r5, var1942=$r6, var2996=$z0}
; {org.hibernate.hql.internal.antlr.SqlGeneratorBase=var3444, r0=var2169, java.util.List=var3711, $r2=var2549, $r1=var44, $i0=var3436, $i1=var1369, java.lang.Object=var2629, $r3=var2422, r4=var2504, r5=var1988, $r6=var1942, $z0=var2996}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.antlr.SqlGeneratorBase;	$r2 = r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: java.util.List exprs>;	$r1 = r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: java.util.List exprs>;	$i0 = interfaceinvoke $r1.<java.util.List: int size()>();	$i1 = $i0 - 1;	$r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object remove(int)>($i1);	r4 = (java.lang.StringBuilder) $r3;	r5 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = r0.<org.hibernate.hql.internal.antlr.SqlGeneratorBase: java.util.List exprs>;	$z0 = interfaceinvoke $r6.<java.util.List: boolean isEmpty()>();	if $z0 == 0 goto return r5;	return r5
;block_num 2