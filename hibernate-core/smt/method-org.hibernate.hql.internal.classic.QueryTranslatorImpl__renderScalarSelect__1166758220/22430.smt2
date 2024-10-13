(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var396 0)
(declare-sort var3645 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun superQuery/916737798 (var396) var396)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun scalarTypes/916737798 (var396) var3645)
(declare-fun var3645_size/-959786421 (var3645) Int)
(declare-fun returnedTypes/916737798 (var396) var3645)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var396 var396)
(declare-const var3546 var396) ; Statement: r0 := @this: org.hibernate.hql.internal.classic.QueryTranslatorImpl 
(assert (not (= var3546 null-var396)))
(define-const var3386 var396 (superQuery/916737798 var3546)) ; Statement: $r1 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: org.hibernate.hql.internal.classic.QueryTranslatorImpl superQuery> 
 ; Statement: if $r1 == null goto $z7 = 0 
(assert (= var3386 null-var396)) ; Cond: $r1 == null 
(define-const var3647 Bool (ite (= 1 0) true false)) ; Statement: $z7 = 0 
(assert true) ; Non Conditional
(define-const var1625 Bool var3647) ; Statement: z0 = $z7 
(define-const var389 String String-init) ; Statement: $r40 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var389 20)) ; Statement: specialinvoke $r40.<java.lang.StringBuilder: void <init>(int)>(20) 

(declare-const var389!1 String)
(declare-const var1551 Int)
(define-const var2590 var3645 (scalarTypes/916737798 var3546)) ; Statement: $r3 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.util.List scalarTypes> 
(define-const var1366 Int (var3645_size/-959786421 var2590)) ; Statement: $i0 = interfaceinvoke $r3.<java.util.List: int size()>() 
 ; Statement: if $i0 != 0 goto $r4 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.util.List scalarSelectTokens> 
(assert (not (not (= var1366 0)))) ; Negate: Cond: $i0 != 0  
(define-const var2719 var3645 (returnedTypes/916737798 var3546)) ; Statement: $r14 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.util.List returnedTypes> 
(define-const var3571 Int (var3645_size/-959786421 var2719)) ; Statement: i9 = interfaceinvoke $r14.<java.util.List: int size()>() 
(define-const var1005 Int 0) ; Statement: i10 = 0 
(assert true) ; Non Conditional
 ; Statement: if i10 >= i9 goto (branch) 
(assert (>= var1005 var3571)) ; Cond: i10 >= i9 
 ; Statement: goto [?= $r39 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var1600 String (toString/-2075883882 var389!1)) ; Statement: $r39 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r39 
(check-sat)
(get-model)
(get-unsat-core)
; {superQuery/916737798=([org.hibernate.hql.internal.classic.QueryTranslatorImpl], org.hibernate.hql.internal.classic.QueryTranslatorImpl), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), scalarTypes/916737798=([org.hibernate.hql.internal.classic.QueryTranslatorImpl], java.util.List), var3645_size/-959786421=([java.util.List], int), returnedTypes/916737798=([org.hibernate.hql.internal.classic.QueryTranslatorImpl], java.util.List), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var396=org.hibernate.hql.internal.classic.QueryTranslatorImpl, var3546=r0, var3386=$r1, var3647=$z7, var1625=z0, var389=$r40, var1551=20, var3645=java.util.List, var2590=$r3, var1366=$i0, var2719=$r14, var3571=i9, var1005=i10, var1600=$r39}
; {org.hibernate.hql.internal.classic.QueryTranslatorImpl=var396, r0=var3546, $r1=var3386, $z7=var3647, z0=var1625, $r40=var389, 20=var1551, java.util.List=var3645, $r3=var2590, $i0=var1366, $r14=var2719, i9=var3571, i10=var1005, $r39=var1600}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.classic.QueryTranslatorImpl;	$r1 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: org.hibernate.hql.internal.classic.QueryTranslatorImpl superQuery>;	if $r1 == null goto $z7 = 0;	$z7 = 0;	z0 = $z7;	$r40 = new java.lang.StringBuilder;	specialinvoke $r40.<java.lang.StringBuilder: void <init>(int)>(20);	$r3 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.util.List scalarTypes>;	$i0 = interfaceinvoke $r3.<java.util.List: int size()>();	if $i0 != 0 goto $r4 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.util.List scalarSelectTokens>;	$r14 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.util.List returnedTypes>;	i9 = interfaceinvoke $r14.<java.util.List: int size()>();	i10 = 0;	if i10 >= i9 goto (branch);	goto [?= $r39 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>()];	$r39 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	return $r39
;block_num 7