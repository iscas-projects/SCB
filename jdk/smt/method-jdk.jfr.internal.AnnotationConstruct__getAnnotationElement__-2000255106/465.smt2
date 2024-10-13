(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3196 0)
(declare-sort var1160 0)
(declare-sort var942 0)
(declare-sort var49 0)
(declare-sort var2520 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1160_getTypeId/-116061032 (ClassObject) Int)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getUnmodifiableAnnotationElements/-1760714504 (var3196) var942)
(declare-fun var942_iterator/-912451715 (var942) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var49)
(declare-fun cast-from-var49-to-var2520 (var49) var2520)
(declare-fun getTypeId/-2145167660 (var2520) Int)
(declare-fun getTypeName/1680671451 (var2520) String)
(declare-const null-var3196 var3196)
(declare-const null-ClassObject ClassObject)
(declare-const var2063 var3196) ; Statement: r2 := @this: jdk.jfr.internal.AnnotationConstruct 
(assert (not (= var2063 null-var3196)))
(declare-const var766 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var766 null-ClassObject)))
(define-const var3700 Int (var1160_getTypeId/-116061032 var766)) ; Statement: l0 = staticinvoke <jdk.jfr.internal.Type: long getTypeId(java.lang.Class)>(r0) 
(assert true)
(define-const var3537 String (getName/-1958580599 var766)) ; Statement: r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2278 var942 (getUnmodifiableAnnotationElements/-1760714504 var2063)) ; Statement: $r3 = virtualinvoke r2.<jdk.jfr.internal.AnnotationConstruct: java.util.List getUnmodifiableAnnotationElements()>() 
(define-const var3013 Iterator (var942_iterator/-912451715 var2278)) ; Statement: r9 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2698 Bool (Iterator_hasNext/-1669924200 var3013)) ; Statement: $z0 = interfaceinvoke r9.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke r2.<jdk.jfr.internal.AnnotationConstruct: java.util.List getUnmodifiableAnnotationElements()>() 
(assert (not (= (ite var2698 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1808 var49 (Iterator_next/-1124697587 var3013)) ; Statement: $r7 = interfaceinvoke r9.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3013!1 Iterator)
(define-const var306 var2520 (cast-from-var49-to-var2520 var1808)) ; Statement: r10 = (jdk.jfr.AnnotationElement) $r7 
(assert true)
(define-const var1546 Int (getTypeId/-2145167660 var306)) ; Statement: $l1 = virtualinvoke r10.<jdk.jfr.AnnotationElement: long getTypeId()>() 
(define-const var1561 Int (ite (> var1546 var3700) 1 (ite (< var1546 var3700) (- 1) 0))) ; Statement: $b2 = $l1 cmp l0 
 ; Statement: if $b2 != 0 goto (branch) 
(assert (not (not (= var1561 0)))) ; Negate: Cond: $b2 != 0  
(assert true)
(define-const var1179 String (getTypeName/1680671451 var306)) ; Statement: $r8 = virtualinvoke r10.<jdk.jfr.AnnotationElement: java.lang.String getTypeName()>() 
(assert true)
(define-const var3780 Bool (= var1179 var3537)) ; Statement: $z3 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z3 == 0 goto (branch) 
(assert (not (= (ite var3780 1 0) 0))) ; Negate: Cond: $z3 == 0  
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var1160_getTypeId/-116061032=([java.lang.Class], long), getName/-1958580599=([java.lang.Class], java.lang.String), getUnmodifiableAnnotationElements/-1760714504=([jdk.jfr.internal.AnnotationConstruct], java.util.List), var942_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var49-to-var2520=([java.lang.Object], jdk.jfr.AnnotationElement), getTypeId/-2145167660=([jdk.jfr.AnnotationElement], long), getTypeName/1680671451=([jdk.jfr.AnnotationElement], java.lang.String)}
; {var3196=jdk.jfr.internal.AnnotationConstruct, var2063=r2, var766=r0, var1160=jdk.jfr.internal.Type, var3700=l0, var3537=r1, var942=java.util.List, var2278=$r3, var3013=r9, var2698=$z0, var49=java.lang.Object, var1808=$r7, var2520=jdk.jfr.AnnotationElement, var306=r10, var1546=$l1, var1561=$b2, var1179=$r8, var3780=$z3}
; {jdk.jfr.internal.AnnotationConstruct=var3196, r2=var2063, r0=var766, jdk.jfr.internal.Type=var1160, l0=var3700, r1=var3537, java.util.List=var942, $r3=var2278, r9=var3013, $z0=var2698, java.lang.Object=var49, $r7=var1808, jdk.jfr.AnnotationElement=var2520, r10=var306, $l1=var1546, $b2=var1561, $r8=var1179, $z3=var3780}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: jdk.jfr.internal.AnnotationConstruct;	r0 := @parameter0: java.lang.Class;	l0 = staticinvoke <jdk.jfr.internal.Type: long getTypeId(java.lang.Class)>(r0);	r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r3 = virtualinvoke r2.<jdk.jfr.internal.AnnotationConstruct: java.util.List getUnmodifiableAnnotationElements()>();	r9 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r9.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke r2.<jdk.jfr.internal.AnnotationConstruct: java.util.List getUnmodifiableAnnotationElements()>();	$r7 = interfaceinvoke r9.<java.util.Iterator: java.lang.Object next()>();	r10 = (jdk.jfr.AnnotationElement) $r7;	$l1 = virtualinvoke r10.<jdk.jfr.AnnotationElement: long getTypeId()>();	$b2 = $l1 cmp l0;	if $b2 != 0 goto (branch);	$r8 = virtualinvoke r10.<jdk.jfr.AnnotationElement: java.lang.String getTypeName()>();	$z3 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z3 == 0 goto (branch);	return r10
;block_num 5