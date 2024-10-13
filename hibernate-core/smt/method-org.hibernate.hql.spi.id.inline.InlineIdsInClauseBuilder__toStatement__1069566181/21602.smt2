(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3977 0)
(declare-sort var3423 0)
(declare-sort var917 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getColumns/-660309720 (var3423) (Array Int String))
(declare-fun cast-from-var3977-to-var3423 (var3977) var3423)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun getIds/-474040572 (var3423) var917)
(declare-fun var917_size/-959786421 (var917) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3977 var3977)
(declare-const var2800 var3977) ; Statement: r1 := @this: org.hibernate.hql.spi.id.inline.InlineIdsInClauseBuilder 
(assert (not (= var2800 null-var3977)))
(define-const var225 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var225)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var225!1 String)
(assert (= var225!1 ""))
(assert true)
(define-const var2957 (Array Int String) (getColumns/-660309720 (cast-from-var3977-to-var3423 var2800))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.hql.spi.id.inline.InlineIdsInClauseBuilder: java.lang.String[] getColumns()>() 
(define-const var3217 (Array Int String) (cast-from-__Array__Int__String__-to-__Array__Int__String__ var2957)) ; Statement: $r3 = (java.lang.CharSequence[]) $r2 
(define-const var2631 String (String_join/-1520935655 (cast-from-String-to-String ",") var3217)) ; Statement: r4 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(",", $r3) 
(define-const var1537 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1964 var917 (getIds/-474040572 (cast-from-var3977-to-var3423 var2800))) ; Statement: $r5 = virtualinvoke r1.<org.hibernate.hql.spi.id.inline.InlineIdsInClauseBuilder: java.util.List getIds()>() 
(define-const var925 Int (var917_size/-959786421 var1964)) ; Statement: $i0 = interfaceinvoke $r5.<java.util.List: int size()>() 
 ; Statement: if i4 >= $i0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var1537 var925)) ; Cond: i4 >= $i0 
(assert true)
(define-const var3237 String (toString/-2075883882 var225!1)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getColumns/-660309720=([org.hibernate.hql.spi.id.inline.IdsClauseBuilder], java.lang.String[]), cast-from-var3977-to-var3423=([org.hibernate.hql.spi.id.inline.InlineIdsInClauseBuilder], org.hibernate.hql.spi.id.inline.IdsClauseBuilder), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), getIds/-474040572=([org.hibernate.hql.spi.id.inline.IdsClauseBuilder], java.util.List), var917_size/-959786421=([java.util.List], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3977=org.hibernate.hql.spi.id.inline.InlineIdsInClauseBuilder, var2800=r1, var225=$r0, var3423=org.hibernate.hql.spi.id.inline.IdsClauseBuilder, var2957=$r2, var3217=$r3, var2631=r4, var1537=i4, var917=java.util.List, var1964=$r5, var925=$i0, var3237=$r6}
; {org.hibernate.hql.spi.id.inline.InlineIdsInClauseBuilder=var3977, r1=var2800, $r0=var225, org.hibernate.hql.spi.id.inline.IdsClauseBuilder=var3423, $r2=var2957, $r3=var3217, r4=var2631, i4=var1537, java.util.List=var917, $r5=var1964, $i0=var925, $r6=var3237}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.spi.id.inline.InlineIdsInClauseBuilder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.hql.spi.id.inline.InlineIdsInClauseBuilder: java.lang.String[] getColumns()>();	$r3 = (java.lang.CharSequence[]) $r2;	r4 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(",", $r3);	i4 = 0;	$r5 = virtualinvoke r1.<org.hibernate.hql.spi.id.inline.InlineIdsInClauseBuilder: java.util.List getIds()>();	$i0 = interfaceinvoke $r5.<java.util.List: int size()>();	if i4 >= $i0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3