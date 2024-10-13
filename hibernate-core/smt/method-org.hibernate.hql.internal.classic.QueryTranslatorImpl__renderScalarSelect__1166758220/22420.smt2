(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1355 0)
(declare-sort var2408 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun superQuery/916737798 (var1355) var1355)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun scalarTypes/916737798 (var1355) var2408)
(declare-fun var2408_size/-959786421 (var2408) Int)
(declare-fun scalarSelectTokens/916737798 (var1355) var2408)
(declare-fun var2408_iterator/-912451715 (var2408) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1355 var1355)
(declare-const var774 var1355) ; Statement: r0 := @this: org.hibernate.hql.internal.classic.QueryTranslatorImpl 
(assert (not (= var774 null-var1355)))
(define-const var874 var1355 (superQuery/916737798 var774)) ; Statement: $r1 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: org.hibernate.hql.internal.classic.QueryTranslatorImpl superQuery> 
 ; Statement: if $r1 == null goto $z7 = 0 
(assert (not (= var874 null-var1355))) ; Negate: Cond: $r1 == null  
(define-const var272 Bool (ite (= 1 1) true false)) ; Statement: $z7 = 1 
 ; Statement: goto [?= z0 = $z7] 
(assert true) ; Non Conditional
(define-const var347 Bool var272) ; Statement: z0 = $z7 
(define-const var3759 String String-init) ; Statement: $r40 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3759 20)) ; Statement: specialinvoke $r40.<java.lang.StringBuilder: void <init>(int)>(20) 

(declare-const var3759!1 String)
(declare-const var3131 Int)
(define-const var2617 var2408 (scalarTypes/916737798 var774)) ; Statement: $r3 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.util.List scalarTypes> 
(define-const var2756 Int (var2408_size/-959786421 var2617)) ; Statement: $i0 = interfaceinvoke $r3.<java.util.List: int size()>() 
 ; Statement: if $i0 != 0 goto $r4 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.util.List scalarSelectTokens> 
(assert (not (= var2756 0))) ; Cond: $i0 != 0 
(define-const var1636 var2408 (scalarSelectTokens/916737798 var774)) ; Statement: $r4 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.util.List scalarSelectTokens> 
(define-const var1482 Iterator (var2408_iterator/-912451715 var1636)) ; Statement: r33 = interfaceinvoke $r4.<java.util.List: java.util.Iterator iterator()>() 
(define-const var715 Int 0) ; Statement: i12 = 0 
(define-const var1004 Bool (ite (= 1 0) true false)) ; Statement: z8 = 0 
(define-const var2264 Bool (ite (= 1 0) true false)) ; Statement: z12 = 0 
(define-const var682 Bool (ite (= 1 0) true false)) ; Statement: z11 = 0 
(define-const var2991 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
(define-const var1310 Bool (Iterator_hasNext/-1669924200 var1482)) ; Statement: $z1 = interfaceinvoke r33.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var1310 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: if z0 != 0 goto $r39 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var347 1 0) 0))) ; Cond: z0 != 0 
(assert true)
(define-const var2156 String (toString/-2075883882 var3759!1)) ; Statement: $r39 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r39 
(check-sat)
(get-model)
(get-unsat-core)
; {superQuery/916737798=([org.hibernate.hql.internal.classic.QueryTranslatorImpl], org.hibernate.hql.internal.classic.QueryTranslatorImpl), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), scalarTypes/916737798=([org.hibernate.hql.internal.classic.QueryTranslatorImpl], java.util.List), var2408_size/-959786421=([java.util.List], int), scalarSelectTokens/916737798=([org.hibernate.hql.internal.classic.QueryTranslatorImpl], java.util.List), var2408_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1355=org.hibernate.hql.internal.classic.QueryTranslatorImpl, var774=r0, var874=$r1, var272=$z7, var347=z0, var3759=$r40, var3131=20, var2408=java.util.List, var2617=$r3, var2756=$i0, var1636=$r4, var1482=r33, var715=i12, var1004=z8, var2264=z12, var682=z11, var2991=i13, var1310=$z1, var2156=$r39}
; {org.hibernate.hql.internal.classic.QueryTranslatorImpl=var1355, r0=var774, $r1=var874, $z7=var272, z0=var347, $r40=var3759, 20=var3131, java.util.List=var2408, $r3=var2617, $i0=var2756, $r4=var1636, r33=var1482, i12=var715, z8=var1004, z12=var2264, z11=var682, i13=var2991, $z1=var1310, $r39=var2156}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.classic.QueryTranslatorImpl;	$r1 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: org.hibernate.hql.internal.classic.QueryTranslatorImpl superQuery>;	if $r1 == null goto $z7 = 0;	$z7 = 1;	goto [?= z0 = $z7];	z0 = $z7;	$r40 = new java.lang.StringBuilder;	specialinvoke $r40.<java.lang.StringBuilder: void <init>(int)>(20);	$r3 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.util.List scalarTypes>;	$i0 = interfaceinvoke $r3.<java.util.List: int size()>();	if $i0 != 0 goto $r4 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.util.List scalarSelectTokens>;	$r4 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.util.List scalarSelectTokens>;	r33 = interfaceinvoke $r4.<java.util.List: java.util.Iterator iterator()>();	i12 = 0;	z8 = 0;	z12 = 0;	z11 = 0;	i13 = 0;	$z1 = interfaceinvoke r33.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto (branch);	if z0 != 0 goto $r39 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	$r39 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	return $r39
;block_num 7