(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3631 0)
(declare-sort var749 0)
(declare-sort var3184 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var749_getTypeId/-116061032 (ClassObject) Int)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getUnmodifiableAnnotationElements/-1760714504 (var3631) var3184)
(declare-fun var3184_iterator/-912451715 (var3184) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var3631 var3631)
(declare-const null-ClassObject ClassObject)
(declare-const var1133 var3631) ; Statement: r2 := @this: jdk.jfr.internal.AnnotationConstruct 
(assert (not (= var1133 null-var3631)))
(declare-const var2906 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2906 null-ClassObject)))
(define-const var1193 Int (var749_getTypeId/-116061032 var2906)) ; Statement: l0 = staticinvoke <jdk.jfr.internal.Type: long getTypeId(java.lang.Class)>(r0) 
(assert true)
(define-const var242 String (getName/-1958580599 var2906)) ; Statement: r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3618 var3184 (getUnmodifiableAnnotationElements/-1760714504 var1133)) ; Statement: $r3 = virtualinvoke r2.<jdk.jfr.internal.AnnotationConstruct: java.util.List getUnmodifiableAnnotationElements()>() 
(define-const var544 Iterator (var3184_iterator/-912451715 var3618)) ; Statement: r9 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1800 Bool (Iterator_hasNext/-1669924200 var544)) ; Statement: $z0 = interfaceinvoke r9.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke r2.<jdk.jfr.internal.AnnotationConstruct: java.util.List getUnmodifiableAnnotationElements()>() 
(assert (= (ite var1800 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3252 var3184 (getUnmodifiableAnnotationElements/-1760714504 var1133)) ; Statement: $r4 = virtualinvoke r2.<jdk.jfr.internal.AnnotationConstruct: java.util.List getUnmodifiableAnnotationElements()>() 
(define-const var174 Iterator (var3184_iterator/-912451715 var3252)) ; Statement: r11 = interfaceinvoke $r4.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var135 Bool (Iterator_hasNext/-1669924200 var174)) ; Statement: $z1 = interfaceinvoke r11.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto return null 
(assert (= (ite var135 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var749_getTypeId/-116061032=([java.lang.Class], long), getName/-1958580599=([java.lang.Class], java.lang.String), getUnmodifiableAnnotationElements/-1760714504=([jdk.jfr.internal.AnnotationConstruct], java.util.List), var3184_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var3631=jdk.jfr.internal.AnnotationConstruct, var1133=r2, var2906=r0, var749=jdk.jfr.internal.Type, var1193=l0, var242=r1, var3184=java.util.List, var3618=$r3, var544=r9, var1800=$z0, var3252=$r4, var174=r11, var135=$z1}
; {jdk.jfr.internal.AnnotationConstruct=var3631, r2=var1133, r0=var2906, jdk.jfr.internal.Type=var749, l0=var1193, r1=var242, java.util.List=var3184, $r3=var3618, r9=var544, $z0=var1800, $r4=var3252, r11=var174, $z1=var135}
;seq 
;cnt {}
;stmts r2 := @this: jdk.jfr.internal.AnnotationConstruct;	r0 := @parameter0: java.lang.Class;	l0 = staticinvoke <jdk.jfr.internal.Type: long getTypeId(java.lang.Class)>(r0);	r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r3 = virtualinvoke r2.<jdk.jfr.internal.AnnotationConstruct: java.util.List getUnmodifiableAnnotationElements()>();	r9 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r9.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke r2.<jdk.jfr.internal.AnnotationConstruct: java.util.List getUnmodifiableAnnotationElements()>();	$r4 = virtualinvoke r2.<jdk.jfr.internal.AnnotationConstruct: java.util.List getUnmodifiableAnnotationElements()>();	r11 = interfaceinvoke $r4.<java.util.List: java.util.Iterator iterator()>();	$z1 = interfaceinvoke r11.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto return null;	return null
;block_num 5