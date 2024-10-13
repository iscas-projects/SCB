(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1498 0)
(declare-sort var3964 0)
(declare-sort var3454 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun quoted/1732476537 (var1498) Bool)
(declare-const null-var1498 var1498)
(declare-const null-String String)
(declare-const null-var3454 var3454)
(declare-const var2088 var1498) ; Statement: r0 := @this: org.hibernate.hql.internal.classic.PreprocessingParser 
(assert (not (= var2088 null-var1498)))
(declare-const var902 String) ; Statement: r32 := @parameter0: java.lang.String 
(assert (not (= var902 null-String)))
(declare-const var2829 var3454) ; Statement: r16 := @parameter1: org.hibernate.hql.internal.classic.QueryTranslatorImpl 
(assert (not (= var2829 null-var3454)))
(define-const var351 Bool (quoted/1732476537 var2088)) ; Statement: $z0 = r0.<org.hibernate.hql.internal.classic.PreprocessingParser: boolean quoted> 
 ; Statement: if $z0 == 0 goto $r1 = "\'" 
(assert (= (ite var351 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3324 String "\u0027") ; Statement: $r1 = "\'" 
(assert true)
(define-const var2652 Bool (= var3324 var902)) ; Statement: $z1 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r32) 
 ; Statement: if $z1 == 0 goto $z9 = r0.<org.hibernate.hql.internal.classic.PreprocessingParser: boolean quoted> 
(assert (= (ite var2652 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3886 Bool (quoted/1732476537 var2088)) ; Statement: $z9 = r0.<org.hibernate.hql.internal.classic.PreprocessingParser: boolean quoted> 
 ; Statement: if $z9 == 0 goto $z2 = staticinvoke <org.hibernate.hql.internal.classic.ParserHelper: boolean isWhitespace(java.lang.String)>(r32) 
(assert (not (= (ite var3886 1 0) 0))) ; Negate: Cond: $z9 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {quoted/1732476537=([org.hibernate.hql.internal.classic.PreprocessingParser], boolean)}
; {var1498=org.hibernate.hql.internal.classic.PreprocessingParser, var2088=r0, var902=r32, var3964=null_type, var3454=org.hibernate.hql.internal.classic.QueryTranslatorImpl, var2829=r16, var351=$z0, var3324=$r1, var2652=$z1, var3886=$z9}
; {org.hibernate.hql.internal.classic.PreprocessingParser=var1498, r0=var2088, r32=var902, null_type=var3964, org.hibernate.hql.internal.classic.QueryTranslatorImpl=var3454, r16=var2829, $z0=var351, $r1=var3324, $z1=var2652, $z9=var3886}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.classic.PreprocessingParser;	r32 := @parameter0: java.lang.String;	r16 := @parameter1: org.hibernate.hql.internal.classic.QueryTranslatorImpl;	$z0 = r0.<org.hibernate.hql.internal.classic.PreprocessingParser: boolean quoted>;	if $z0 == 0 goto $r1 = "\'";	$r1 = "\'";	$z1 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r32);	if $z1 == 0 goto $z9 = r0.<org.hibernate.hql.internal.classic.PreprocessingParser: boolean quoted>;	$z9 = r0.<org.hibernate.hql.internal.classic.PreprocessingParser: boolean quoted>;	if $z9 == 0 goto $z2 = staticinvoke <org.hibernate.hql.internal.classic.ParserHelper: boolean isWhitespace(java.lang.String)>(r32);	return
;block_num 4