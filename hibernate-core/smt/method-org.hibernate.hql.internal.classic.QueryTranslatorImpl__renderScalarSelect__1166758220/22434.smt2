(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1980 0)
(declare-sort var3380 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun superQuery/916737798 (var1980) var1980)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun scalarTypes/916737798 (var1980) var3380)
(declare-fun var3380_size/-959786421 (var3380) Int)
(declare-fun scalarSelectTokens/916737798 (var1980) var3380)
(declare-fun var3380_iterator/-912451715 (var3380) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1980 var1980)
(declare-const var3796 var1980) ; Statement: r0 := @this: org.hibernate.hql.internal.classic.QueryTranslatorImpl 
(assert (not (= var3796 null-var1980)))
(define-const var934 var1980 (superQuery/916737798 var3796)) ; Statement: $r1 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: org.hibernate.hql.internal.classic.QueryTranslatorImpl superQuery> 
 ; Statement: if $r1 == null goto $z7 = 0 
(assert (= var934 null-var1980)) ; Cond: $r1 == null 
(define-const var2568 Bool (ite (= 1 0) true false)) ; Statement: $z7 = 0 
(assert true) ; Non Conditional
(define-const var1589 Bool var2568) ; Statement: z0 = $z7 
(define-const var1402 String String-init) ; Statement: $r40 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1402 20)) ; Statement: specialinvoke $r40.<java.lang.StringBuilder: void <init>(int)>(20) 

(declare-const var1402!1 String)
(declare-const var2721 Int)
(define-const var2793 var3380 (scalarTypes/916737798 var3796)) ; Statement: $r3 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.util.List scalarTypes> 
(define-const var1128 Int (var3380_size/-959786421 var2793)) ; Statement: $i0 = interfaceinvoke $r3.<java.util.List: int size()>() 
 ; Statement: if $i0 != 0 goto $r4 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.util.List scalarSelectTokens> 
(assert (not (= var1128 0))) ; Cond: $i0 != 0 
(define-const var3153 var3380 (scalarSelectTokens/916737798 var3796)) ; Statement: $r4 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.util.List scalarSelectTokens> 
(define-const var1464 Iterator (var3380_iterator/-912451715 var3153)) ; Statement: r33 = interfaceinvoke $r4.<java.util.List: java.util.Iterator iterator()>() 
(define-const var2698 Int 0) ; Statement: i12 = 0 
(define-const var533 Bool (ite (= 1 0) true false)) ; Statement: z8 = 0 
(define-const var2867 Bool (ite (= 1 0) true false)) ; Statement: z12 = 0 
(define-const var530 Bool (ite (= 1 0) true false)) ; Statement: z11 = 0 
(define-const var2235 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
(define-const var1680 Bool (Iterator_hasNext/-1669924200 var1464)) ; Statement: $z1 = interfaceinvoke r33.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var1680 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: if z0 != 0 goto $r39 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var1589 1 0) 0))) ; Cond: z0 != 0 
(assert true)
(define-const var920 String (toString/-2075883882 var1402!1)) ; Statement: $r39 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r39 
(check-sat)
(get-model)
(get-unsat-core)
; {superQuery/916737798=([org.hibernate.hql.internal.classic.QueryTranslatorImpl], org.hibernate.hql.internal.classic.QueryTranslatorImpl), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), scalarTypes/916737798=([org.hibernate.hql.internal.classic.QueryTranslatorImpl], java.util.List), var3380_size/-959786421=([java.util.List], int), scalarSelectTokens/916737798=([org.hibernate.hql.internal.classic.QueryTranslatorImpl], java.util.List), var3380_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1980=org.hibernate.hql.internal.classic.QueryTranslatorImpl, var3796=r0, var934=$r1, var2568=$z7, var1589=z0, var1402=$r40, var2721=20, var3380=java.util.List, var2793=$r3, var1128=$i0, var3153=$r4, var1464=r33, var2698=i12, var533=z8, var2867=z12, var530=z11, var2235=i13, var1680=$z1, var920=$r39}
; {org.hibernate.hql.internal.classic.QueryTranslatorImpl=var1980, r0=var3796, $r1=var934, $z7=var2568, z0=var1589, $r40=var1402, 20=var2721, java.util.List=var3380, $r3=var2793, $i0=var1128, $r4=var3153, r33=var1464, i12=var2698, z8=var533, z12=var2867, z11=var530, i13=var2235, $z1=var1680, $r39=var920}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.classic.QueryTranslatorImpl;	$r1 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: org.hibernate.hql.internal.classic.QueryTranslatorImpl superQuery>;	if $r1 == null goto $z7 = 0;	$z7 = 0;	z0 = $z7;	$r40 = new java.lang.StringBuilder;	specialinvoke $r40.<java.lang.StringBuilder: void <init>(int)>(20);	$r3 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.util.List scalarTypes>;	$i0 = interfaceinvoke $r3.<java.util.List: int size()>();	if $i0 != 0 goto $r4 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.util.List scalarSelectTokens>;	$r4 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.util.List scalarSelectTokens>;	r33 = interfaceinvoke $r4.<java.util.List: java.util.Iterator iterator()>();	i12 = 0;	z8 = 0;	z12 = 0;	z11 = 0;	i13 = 0;	$z1 = interfaceinvoke r33.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto (branch);	if z0 != 0 goto $r39 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	$r39 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	return $r39
;block_num 7