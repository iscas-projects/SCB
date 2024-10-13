(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1738 0)
(declare-sort var1673 0)
(declare-sort var2920 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getColumns/-660309720 (var1673) (Array Int String))
(declare-fun cast-from-var1738-to-var1673 (var1738) var1673)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getIds/-474040572 (var1673) var2920)
(declare-fun var2920_size/-959786421 (var2920) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1738 var1738)
(declare-const var144 var1738) ; Statement: r1 := @this: org.hibernate.hql.spi.id.inline.InlineIdsSubSelectValuesListBuilder 
(assert (not (= var144 null-var1738)))
(define-const var3083 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3083)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3083!1 String)
(assert (= var3083!1 ""))
(assert true)
(define-const var1546 (Array Int String) (getColumns/-660309720 (cast-from-var1738-to-var1673 var144))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.hql.spi.id.inline.InlineIdsSubSelectValuesListBuilder: java.lang.String[] getColumns()>() 
(define-const var2819 (Array Int String) (cast-from-__Array__Int__String__-to-__Array__Int__String__ var1546)) ; Statement: $r3 = (java.lang.CharSequence[]) $r2 
(define-const var2608 String (String_join/-1520935655 (cast-from-String-to-String ",") var2819)) ; Statement: r4 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(",", $r3) 
(assert true)
(define-const var2871 String (append/672562846 var3083!1 "select ")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(declare-const var3083!2 String)
(assert (= var3083!2 (str.++ var3083!1 "select ")))
(assert true)
(define-const var1721 String (append/672562846 var2871 var2608)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2871!1 String)
(assert (= var2871!1 (str.++ var2871 var2608)))
(assert true)
;(assert (append/672562846 var1721 " from ( values ")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ( values ") 
(declare-const var1721!1 String)
(assert (= var1721!1 (str.++ var1721 " from ( values ")))
(define-const var438 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1425 var2920 (getIds/-474040572 (cast-from-var1738-to-var1673 var144))) ; Statement: $r7 = virtualinvoke r1.<org.hibernate.hql.spi.id.inline.InlineIdsSubSelectValuesListBuilder: java.util.List getIds()>() 
(define-const var1796 Int (var2920_size/-959786421 var1425)) ; Statement: $i0 = interfaceinvoke $r7.<java.util.List: int size()>() 
 ; Statement: if i1 >= $i0 goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") as HT (") 
(assert (>= var438 var1796)) ; Cond: i1 >= $i0 
(assert true)
(define-const var2523 String (append/672562846 var3083!2 ") as HT (")) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") as HT (") 
(declare-const var3083!3 String)
(assert (= var3083!3 (str.++ var3083!2 ") as HT (")))
(assert true)
(define-const var2963 String (append/672562846 var2523 var2608)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2523!1 String)
(assert (= var2523!1 (str.++ var2523 var2608)))
(assert true)
;(assert (append/672562846 var2963 ") ")) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var2963!1 String)
(assert (= var2963!1 (str.++ var2963 ") ")))
(assert true)
(define-const var3366 String (toString/-2075883882 var3083!3)) ; Statement: $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getColumns/-660309720=([org.hibernate.hql.spi.id.inline.IdsClauseBuilder], java.lang.String[]), cast-from-var1738-to-var1673=([org.hibernate.hql.spi.id.inline.InlineIdsSubSelectValuesListBuilder], org.hibernate.hql.spi.id.inline.IdsClauseBuilder), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getIds/-474040572=([org.hibernate.hql.spi.id.inline.IdsClauseBuilder], java.util.List), var2920_size/-959786421=([java.util.List], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1738=org.hibernate.hql.spi.id.inline.InlineIdsSubSelectValuesListBuilder, var144=r1, var3083=$r0, var1673=org.hibernate.hql.spi.id.inline.IdsClauseBuilder, var1546=$r2, var2819=$r3, var2608=r4, var2871=$r5, var1721=$r6, var438=i1, var2920=java.util.List, var1425=$r7, var1796=$i0, var2523=$r8, var2963=$r9, var3366=$r10}
; {org.hibernate.hql.spi.id.inline.InlineIdsSubSelectValuesListBuilder=var1738, r1=var144, $r0=var3083, org.hibernate.hql.spi.id.inline.IdsClauseBuilder=var1673, $r2=var1546, $r3=var2819, r4=var2608, $r5=var2871, $r6=var1721, i1=var438, java.util.List=var2920, $r7=var1425, $i0=var1796, $r8=var2523, $r9=var2963, $r10=var3366}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.spi.id.inline.InlineIdsSubSelectValuesListBuilder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.hql.spi.id.inline.InlineIdsSubSelectValuesListBuilder: java.lang.String[] getColumns()>();	$r3 = (java.lang.CharSequence[]) $r2;	r4 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(",", $r3);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ( values ");	i1 = 0;	$r7 = virtualinvoke r1.<org.hibernate.hql.spi.id.inline.InlineIdsSubSelectValuesListBuilder: java.util.List getIds()>();	$i0 = interfaceinvoke $r7.<java.util.List: int size()>();	if i1 >= $i0 goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") as HT (");	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") as HT (");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 3