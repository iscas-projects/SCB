(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var592 0)
(declare-sort var2916 0)
(declare-sort var2897 0)
(declare-sort var217 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun path/2096745176 (var592) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPathAlias/-1851167974 (var2897 String) String)
(declare-fun reset/354145790 (var592 var2897) void)
(declare-fun currentName/2096745176 (var592) String)
(declare-fun getPropertyMapping/2097523752 (var2897 String) var217)
(declare-fun currentPropertyMapping/2096745176 (var592) var217)
(declare-fun ignoreInitialJoin/2096745176 (var592) Bool)
(declare-const null-var592 var592)
(declare-const null-String String)
(declare-const null-var2897 var2897)
(declare-const var1678 var592) ; Statement: r2 := @this: org.hibernate.hql.internal.classic.PathExpressionParser 
(assert (not (= var1678 null-var592)))
(declare-const var3560 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3560 null-String)))
(declare-const var3261 var2897) ; Statement: r1 := @parameter1: org.hibernate.hql.internal.classic.QueryTranslatorImpl 
(assert (not (= var3261 null-var2897)))
 ; Statement: if r0 == null goto $r3 = r2.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder path> 
(assert (= var3560 null-String)) ; Cond: r0 == null 
(define-const var2306 String (path/2096745176 var1678)) ; Statement: $r3 = r2.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder path> 
(assert true)
(define-const var2275 String (toString/-2075883882 var2306)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var361 String (getPathAlias/-1851167974 var3261 var2275)) ; Statement: $r40 = virtualinvoke r1.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.lang.String getPathAlias(java.lang.String)>($r4) 
 ; Statement: if $r40 == null goto $r5 = "." 
(assert (not (= var361 null-String))) ; Negate: Cond: $r40 == null  
(assert true)
;(assert (reset/354145790 var1678 var3261)) ; Statement: specialinvoke r2.<org.hibernate.hql.internal.classic.PathExpressionParser: void reset(org.hibernate.hql.internal.classic.QueryTranslatorImpl)>(r1) 

(declare-const var1678!1 var592)
(declare-const var3261!1 var2897)
(declare-const var1678!2 var592)
(assert (not (= var1678!2 null-var592)))
(assert (= (currentName/2096745176 var1678!2) var361)) ; Statement: r2.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String currentName> = $r40 
(define-const var2626 String (currentName/2096745176 var1678!2)) ; Statement: $r31 = r2.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String currentName> 
(assert true)
(define-const var2366 var217 (getPropertyMapping/2097523752 var3261!1 var2626)) ; Statement: $r32 = virtualinvoke r1.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: org.hibernate.persister.entity.PropertyMapping getPropertyMapping(java.lang.String)>($r31) 
(declare-const var1678!3 var592)
(assert (not (= var1678!3 null-var592)))
(assert (= (currentPropertyMapping/2096745176 var1678!3) var2366)) ; Statement: r2.<org.hibernate.hql.internal.classic.PathExpressionParser: org.hibernate.persister.entity.PropertyMapping currentPropertyMapping> = $r32 
(define-const var637 Bool (ignoreInitialJoin/2096745176 var1678!3)) ; Statement: $z7 = r2.<org.hibernate.hql.internal.classic.PathExpressionParser: boolean ignoreInitialJoin> 
 ; Statement: if $z7 != 0 goto return 
(assert (not (= (ite var637 1 0) 0))) ; Cond: $z7 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {path/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPathAlias/-1851167974=([org.hibernate.hql.internal.classic.QueryTranslatorImpl, java.lang.String], java.lang.String), reset/354145790=([org.hibernate.hql.internal.classic.PathExpressionParser, org.hibernate.hql.internal.classic.QueryTranslatorImpl], void), currentName/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.String), getPropertyMapping/2097523752=([org.hibernate.hql.internal.classic.QueryTranslatorImpl, java.lang.String], org.hibernate.persister.entity.PropertyMapping), currentPropertyMapping/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], org.hibernate.persister.entity.PropertyMapping), ignoreInitialJoin/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], boolean)}
; {var592=org.hibernate.hql.internal.classic.PathExpressionParser, var1678=r2, var3560=r0, var2916=null_type, var2897=org.hibernate.hql.internal.classic.QueryTranslatorImpl, var3261=r1, var2306=$r3, var2275=$r4, var361=$r40, var2626=$r31, var217=org.hibernate.persister.entity.PropertyMapping, var2366=$r32, var637=$z7}
; {org.hibernate.hql.internal.classic.PathExpressionParser=var592, r2=var1678, r0=var3560, null_type=var2916, org.hibernate.hql.internal.classic.QueryTranslatorImpl=var2897, r1=var3261, $r3=var2306, $r4=var2275, $r40=var361, $r31=var2626, org.hibernate.persister.entity.PropertyMapping=var217, $r32=var2366, $z7=var637}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.hql.internal.classic.PathExpressionParser;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: org.hibernate.hql.internal.classic.QueryTranslatorImpl;	if r0 == null goto $r3 = r2.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder path>;	$r3 = r2.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder path>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r40 = virtualinvoke r1.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.lang.String getPathAlias(java.lang.String)>($r4);	if $r40 == null goto $r5 = ".";	specialinvoke r2.<org.hibernate.hql.internal.classic.PathExpressionParser: void reset(org.hibernate.hql.internal.classic.QueryTranslatorImpl)>(r1);	r2.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String currentName> = $r40;	$r31 = r2.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String currentName>;	$r32 = virtualinvoke r1.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: org.hibernate.persister.entity.PropertyMapping getPropertyMapping(java.lang.String)>($r31);	r2.<org.hibernate.hql.internal.classic.PathExpressionParser: org.hibernate.persister.entity.PropertyMapping currentPropertyMapping> = $r32;	$z7 = r2.<org.hibernate.hql.internal.classic.PathExpressionParser: boolean ignoreInitialJoin>;	if $z7 != 0 goto return;	return
;block_num 4