(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3338 0)
(declare-sort var3972 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun superQuery/916737798 (var3338) var3338)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun scalarTypes/916737798 (var3338) var3972)
(declare-fun var3972_size/-959786421 (var3972) Int)
(declare-fun returnedTypes/916737798 (var3338) var3972)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3338 var3338)
(declare-const var2459 var3338) ; Statement: r0 := @this: org.hibernate.hql.internal.classic.QueryTranslatorImpl 
(assert (not (= var2459 null-var3338)))
(define-const var2582 var3338 (superQuery/916737798 var2459)) ; Statement: $r1 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: org.hibernate.hql.internal.classic.QueryTranslatorImpl superQuery> 
 ; Statement: if $r1 == null goto $z7 = 0 
(assert (not (= var2582 null-var3338))) ; Negate: Cond: $r1 == null  
(define-const var3849 Bool (ite (= 1 1) true false)) ; Statement: $z7 = 1 
 ; Statement: goto [?= z0 = $z7] 
(assert true) ; Non Conditional
(define-const var3019 Bool var3849) ; Statement: z0 = $z7 
(define-const var2126 String String-init) ; Statement: $r40 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var2126 20)) ; Statement: specialinvoke $r40.<java.lang.StringBuilder: void <init>(int)>(20) 

(declare-const var2126!1 String)
(declare-const var311 Int)
(define-const var1112 var3972 (scalarTypes/916737798 var2459)) ; Statement: $r3 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.util.List scalarTypes> 
(define-const var2830 Int (var3972_size/-959786421 var1112)) ; Statement: $i0 = interfaceinvoke $r3.<java.util.List: int size()>() 
 ; Statement: if $i0 != 0 goto $r4 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.util.List scalarSelectTokens> 
(assert (not (not (= var2830 0)))) ; Negate: Cond: $i0 != 0  
(define-const var1723 var3972 (returnedTypes/916737798 var2459)) ; Statement: $r14 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.util.List returnedTypes> 
(define-const var3482 Int (var3972_size/-959786421 var1723)) ; Statement: i9 = interfaceinvoke $r14.<java.util.List: int size()>() 
(define-const var3281 Int 0) ; Statement: i10 = 0 
(assert true) ; Non Conditional
 ; Statement: if i10 >= i9 goto (branch) 
(assert (>= var3281 var3482)) ; Cond: i10 >= i9 
 ; Statement: goto [?= $r39 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3703 String (toString/-2075883882 var2126!1)) ; Statement: $r39 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r39 
(check-sat)
(get-model)
(get-unsat-core)
; {superQuery/916737798=([org.hibernate.hql.internal.classic.QueryTranslatorImpl], org.hibernate.hql.internal.classic.QueryTranslatorImpl), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), scalarTypes/916737798=([org.hibernate.hql.internal.classic.QueryTranslatorImpl], java.util.List), var3972_size/-959786421=([java.util.List], int), returnedTypes/916737798=([org.hibernate.hql.internal.classic.QueryTranslatorImpl], java.util.List), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3338=org.hibernate.hql.internal.classic.QueryTranslatorImpl, var2459=r0, var2582=$r1, var3849=$z7, var3019=z0, var2126=$r40, var311=20, var3972=java.util.List, var1112=$r3, var2830=$i0, var1723=$r14, var3482=i9, var3281=i10, var3703=$r39}
; {org.hibernate.hql.internal.classic.QueryTranslatorImpl=var3338, r0=var2459, $r1=var2582, $z7=var3849, z0=var3019, $r40=var2126, 20=var311, java.util.List=var3972, $r3=var1112, $i0=var2830, $r14=var1723, i9=var3482, i10=var3281, $r39=var3703}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.classic.QueryTranslatorImpl;	$r1 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: org.hibernate.hql.internal.classic.QueryTranslatorImpl superQuery>;	if $r1 == null goto $z7 = 0;	$z7 = 1;	goto [?= z0 = $z7];	z0 = $z7;	$r40 = new java.lang.StringBuilder;	specialinvoke $r40.<java.lang.StringBuilder: void <init>(int)>(20);	$r3 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.util.List scalarTypes>;	$i0 = interfaceinvoke $r3.<java.util.List: int size()>();	if $i0 != 0 goto $r4 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.util.List scalarSelectTokens>;	$r14 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.util.List returnedTypes>;	i9 = interfaceinvoke $r14.<java.util.List: int size()>();	i10 = 0;	if i10 >= i9 goto (branch);	goto [?= $r39 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>()];	$r39 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	return $r39
;block_num 7