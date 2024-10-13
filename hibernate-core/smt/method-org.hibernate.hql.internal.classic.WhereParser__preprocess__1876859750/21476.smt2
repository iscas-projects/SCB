(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3804 0)
(declare-sort var1569 0)
(declare-sort var2332 0)
(declare-sort var3030 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3030_split/1975638040 (String String Bool) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var3804 var3804)
(declare-const null-String String)
(declare-const null-var2332 var2332)
(declare-const var2555 var3804) ; Statement: r4 := @this: org.hibernate.hql.internal.classic.WhereParser 
(assert (not (= var2555 null-var3804)))
(declare-const var2462 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2462 null-String)))
(declare-const var3927 var2332) ; Statement: r5 := @parameter1: org.hibernate.hql.internal.classic.QueryTranslatorImpl 
(assert (not (= var3927 null-var2332)))
(define-const var2307 (Array Int String) (var3030_split/1975638040 "." var2462 (ite (= 1 1) true false))) ; Statement: r1 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String[] split(java.lang.String,java.lang.String,boolean)>(".", r0, 1) 
(define-const var3491 Int (getLength-Arr-String-1 var2307)) ; Statement: $i0 = lengthof r1 
 ; Statement: if $i0 <= 5 goto return 
(assert (not (<= var3491 5))) ; Negate: Cond: $i0 <= 5  
(define-const var3657 String "elements") ; Statement: $r3 = "elements" 
(define-const var1811 Int (getLength-Arr-String-1 var2307)) ; Statement: $i1 = lengthof r1 
(define-const var2507 Int (- var1811 1)) ; Statement: $i2 = $i1 - 1 
(define-const var3117 String (select var2307 var2507)) ; Statement: $r2 = r1[$i2] 
(assert true)
(define-const var2547 Bool (= var3657 var3117)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 != 0 goto $r6 = r4.<org.hibernate.hql.internal.classic.WhereParser: org.hibernate.hql.internal.classic.PathExpressionParser pathExpressionParser> 
(assert (not (not (= (ite var2547 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2879 String "indices") ; Statement: $r15 = "indices" 
(define-const var2550 Int (getLength-Arr-String-1 var2307)) ; Statement: $i3 = lengthof r1 
(define-const var751 Int (- var2550 1)) ; Statement: $i4 = $i3 - 1 
(define-const var1990 String (select var2307 var751)) ; Statement: $r14 = r1[$i4] 
(assert true)
(define-const var375 Bool (= var2879 var1990)) ; Statement: $z1 = virtualinvoke $r15.<java.lang.String: boolean equals(java.lang.Object)>($r14) 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var375 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3030_split/1975638040=([java.lang.String, java.lang.String, boolean], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var3804=org.hibernate.hql.internal.classic.WhereParser, var2555=r4, var2462=r0, var1569=null_type, var2332=org.hibernate.hql.internal.classic.QueryTranslatorImpl, var3927=r5, var3030=org.hibernate.internal.util.StringHelper, var2307=r1, var3491=$i0, var3657=$r3, var1811=$i1, var2507=$i2, var3117=$r2, var2547=$z0, var2879=$r15, var2550=$i3, var751=$i4, var1990=$r14, var375=$z1}
; {org.hibernate.hql.internal.classic.WhereParser=var3804, r4=var2555, r0=var2462, null_type=var1569, org.hibernate.hql.internal.classic.QueryTranslatorImpl=var2332, r5=var3927, org.hibernate.internal.util.StringHelper=var3030, r1=var2307, $i0=var3491, $r3=var3657, $i1=var1811, $i2=var2507, $r2=var3117, $z0=var2547, $r15=var2879, $i3=var2550, $i4=var751, $r14=var1990, $z1=var375}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r4 := @this: org.hibernate.hql.internal.classic.WhereParser;	r0 := @parameter0: java.lang.String;	r5 := @parameter1: org.hibernate.hql.internal.classic.QueryTranslatorImpl;	r1 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String[] split(java.lang.String,java.lang.String,boolean)>(".", r0, 1);	$i0 = lengthof r1;	if $i0 <= 5 goto return;	$r3 = "elements";	$i1 = lengthof r1;	$i2 = $i1 - 1;	$r2 = r1[$i2];	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 != 0 goto $r6 = r4.<org.hibernate.hql.internal.classic.WhereParser: org.hibernate.hql.internal.classic.PathExpressionParser pathExpressionParser>;	$r15 = "indices";	$i3 = lengthof r1;	$i4 = $i3 - 1;	$r14 = r1[$i4];	$z1 = virtualinvoke $r15.<java.lang.String: boolean equals(java.lang.Object)>($r14);	if $z1 == 0 goto return;	return
;block_num 4