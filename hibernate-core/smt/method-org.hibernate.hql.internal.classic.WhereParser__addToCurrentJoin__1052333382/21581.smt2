(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2079 0)
(declare-sort var1106 0)
(declare-sort var700 0)
(declare-sort var2605 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun joinSequence/-190461038 (var1106) var700)
(declare-fun toJoinFragment/-435979520 (var700) var2605)
(declare-fun toWhereFragmentString/-1276368279 (var2605) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun indexValue/-190461038 (var1106) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun addToCurrentJoin/-1338290053 (var2079 String) void)
(declare-const null-var2079 var2079)
(declare-const null-var1106 var1106)
(declare-const var514 var2079) ; Statement: r0 := @this: org.hibernate.hql.internal.classic.WhereParser 
(assert (not (= var514 null-var2079)))
(declare-const var2138 var1106) ; Statement: r2 := @parameter0: org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement 
(assert (not (= var2138 null-var1106)))
(define-const var3507 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3507)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3507!1 String)
(assert (= var3507!1 ""))
(define-const var2599 var700 (joinSequence/-190461038 var2138)) ; Statement: $r3 = r2.<org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement: org.hibernate.engine.internal.JoinSequence joinSequence> 
(assert true)
(define-const var738 var2605 (toJoinFragment/-435979520 var2599)) ; Statement: $r4 = virtualinvoke $r3.<org.hibernate.engine.internal.JoinSequence: org.hibernate.sql.JoinFragment toJoinFragment()>() 
(assert true)
(define-const var825 String (toWhereFragmentString/-1276368279 var738)) ; Statement: $r5 = virtualinvoke $r4.<org.hibernate.sql.JoinFragment: java.lang.String toWhereFragmentString()>() 
(assert true)
(define-const var2224 String (append/672562846 var3507!1 var825)) ; Statement: $r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3507!2 String)
(assert (= var3507!2 (str.++ var3507!1 var825)))
(define-const var1546 String (indexValue/-190461038 var2138)) ; Statement: $r6 = r2.<org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement: java.lang.StringBuilder indexValue> 
(assert true)
(define-const var2536 String (toString/-2075883882 var1546)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2914 String (append/672562846 var2224 var2536)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2224!1 String)
(assert (= var2224!1 (str.++ var2224 var2536)))
(assert true)
(define-const var631 String (toString/-2075883882 var2914)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (addToCurrentJoin/-1338290053 var514 var631)) ; Statement: specialinvoke r0.<org.hibernate.hql.internal.classic.WhereParser: void addToCurrentJoin(java.lang.String)>($r10) 

(declare-const var514!1 var2079)
(declare-const var631!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), joinSequence/-190461038=([org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement], org.hibernate.engine.internal.JoinSequence), toJoinFragment/-435979520=([org.hibernate.engine.internal.JoinSequence], org.hibernate.sql.JoinFragment), toWhereFragmentString/-1276368279=([org.hibernate.sql.JoinFragment], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), indexValue/-190461038=([org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), addToCurrentJoin/-1338290053=([org.hibernate.hql.internal.classic.WhereParser, java.lang.String], void)}
; {var2079=org.hibernate.hql.internal.classic.WhereParser, var514=r0, var1106=org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement, var2138=r2, var3507=$r1, var700=org.hibernate.engine.internal.JoinSequence, var2599=$r3, var2605=org.hibernate.sql.JoinFragment, var738=$r4, var825=$r5, var2224=$r8, var1546=$r6, var2536=$r7, var2914=$r9, var631=$r10}
; {org.hibernate.hql.internal.classic.WhereParser=var2079, r0=var514, org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement=var1106, r2=var2138, $r1=var3507, org.hibernate.engine.internal.JoinSequence=var700, $r3=var2599, org.hibernate.sql.JoinFragment=var2605, $r4=var738, $r5=var825, $r8=var2224, $r6=var1546, $r7=var2536, $r9=var2914, $r10=var631}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: org.hibernate.hql.internal.classic.WhereParser;	r2 := @parameter0: org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = r2.<org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement: org.hibernate.engine.internal.JoinSequence joinSequence>;	$r4 = virtualinvoke $r3.<org.hibernate.engine.internal.JoinSequence: org.hibernate.sql.JoinFragment toJoinFragment()>();	$r5 = virtualinvoke $r4.<org.hibernate.sql.JoinFragment: java.lang.String toWhereFragmentString()>();	$r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r6 = r2.<org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement: java.lang.StringBuilder indexValue>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.hibernate.hql.internal.classic.WhereParser: void addToCurrentJoin(java.lang.String)>($r10);	goto [?= return];	return
;block_num 2