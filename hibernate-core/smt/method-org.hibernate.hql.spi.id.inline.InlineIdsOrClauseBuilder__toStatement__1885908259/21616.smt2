(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1271 0)
(declare-sort var927 0)
(declare-sort var502 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getIds/-474040572 (var502) var927)
(declare-fun cast-from-var1271-to-var502 (var1271) var502)
(declare-fun var927_size/-959786421 (var927) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1271 var1271)
(declare-const var2965 var1271) ; Statement: r1 := @this: org.hibernate.hql.spi.id.inline.InlineIdsOrClauseBuilder 
(assert (not (= var2965 null-var1271)))
(define-const var2057 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2057)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2057!1 String)
(assert (= var2057!1 ""))
(define-const var2842 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2658 var927 (getIds/-474040572 (cast-from-var1271-to-var502 var2965))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.hql.spi.id.inline.InlineIdsOrClauseBuilder: java.util.List getIds()>() 
(define-const var703 Int (var927_size/-959786421 var2658)) ; Statement: $i0 = interfaceinvoke $r2.<java.util.List: int size()>() 
 ; Statement: if i1 >= $i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2842 var703)) ; Cond: i1 >= $i0 
(assert true)
(define-const var1338 String (toString/-2075883882 var2057!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getIds/-474040572=([org.hibernate.hql.spi.id.inline.IdsClauseBuilder], java.util.List), cast-from-var1271-to-var502=([org.hibernate.hql.spi.id.inline.InlineIdsOrClauseBuilder], org.hibernate.hql.spi.id.inline.IdsClauseBuilder), var927_size/-959786421=([java.util.List], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1271=org.hibernate.hql.spi.id.inline.InlineIdsOrClauseBuilder, var2965=r1, var2057=$r0, var2842=i1, var927=java.util.List, var502=org.hibernate.hql.spi.id.inline.IdsClauseBuilder, var2658=$r2, var703=$i0, var1338=$r3}
; {org.hibernate.hql.spi.id.inline.InlineIdsOrClauseBuilder=var1271, r1=var2965, $r0=var2057, i1=var2842, java.util.List=var927, org.hibernate.hql.spi.id.inline.IdsClauseBuilder=var502, $r2=var2658, $i0=var703, $r3=var1338}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.spi.id.inline.InlineIdsOrClauseBuilder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i1 = 0;	$r2 = virtualinvoke r1.<org.hibernate.hql.spi.id.inline.InlineIdsOrClauseBuilder: java.util.List getIds()>();	$i0 = interfaceinvoke $r2.<java.util.List: int size()>();	if i1 >= $i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3