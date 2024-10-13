(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2512 0)
(declare-sort var2559 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun rootCriteria/333213257 (var2512) var2559)
(declare-fun iterateOrderings/1168862106 (var2559) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2512 var2512)
(declare-const var293 var2512) ; Statement: r1 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator 
(assert (not (= var293 null-var2512)))
(define-const var1312 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1312 30)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(30) 

(declare-const var1312!1 String)
(declare-const var1123 Int)
(define-const var302 var2559 (rootCriteria/333213257 var293)) ; Statement: $r2 = r1.<org.hibernate.loader.criteria.CriteriaQueryTranslator: org.hibernate.internal.CriteriaImpl rootCriteria> 
(assert true)
(define-const var1886 Iterator (iterateOrderings/1168862106 var302)) ; Statement: r3 = virtualinvoke $r2.<org.hibernate.internal.CriteriaImpl: java.util.Iterator iterateOrderings()>() 
(assert true) ; Non Conditional
(define-const var2574 Bool (Iterator_hasNext/-1669924200 var1886)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2574 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var854 String (toString/-2075883882 var1312!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), rootCriteria/333213257=([org.hibernate.loader.criteria.CriteriaQueryTranslator], org.hibernate.internal.CriteriaImpl), iterateOrderings/1168862106=([org.hibernate.internal.CriteriaImpl], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2512=org.hibernate.loader.criteria.CriteriaQueryTranslator, var293=r1, var1312=$r0, var1123=30, var2559=org.hibernate.internal.CriteriaImpl, var302=$r2, var1886=r3, var2574=$z0, var854=$r4}
; {org.hibernate.loader.criteria.CriteriaQueryTranslator=var2512, r1=var293, $r0=var1312, 30=var1123, org.hibernate.internal.CriteriaImpl=var2559, $r2=var302, r3=var1886, $z0=var2574, $r4=var854}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(30);	$r2 = r1.<org.hibernate.loader.criteria.CriteriaQueryTranslator: org.hibernate.internal.CriteriaImpl rootCriteria>;	r3 = virtualinvoke $r2.<org.hibernate.internal.CriteriaImpl: java.util.Iterator iterateOrderings()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3