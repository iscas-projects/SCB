(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2671 0)
(declare-sort var740 0)
(declare-sort var256 0)
(declare-sort var2278 0)
(declare-sort var883 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var256_requireNonNull/-961817614 (var2278) var2278)
(declare-fun cast-from-String-to-var2278 (String) var2278)
(declare-fun annotationNames/1283353528 (var2671) var883)
(declare-fun var883_iterator/-912451715 (var883) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var2278)
(declare-fun cast-from-var2278-to-String (var2278) String)
(declare-fun annotationValues/1283353528 (var2671) var883)
(declare-fun var883_get/-1216255739 (var883 Int) var2278)
(declare-const null-var2671 var2671)
(declare-const null-String String)
(declare-const var3753 var2671) ; Statement: r1 := @this: jdk.jfr.AnnotationElement 
(assert (not (= var3753 null-var2671)))
(declare-const var2692 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2692 null-String)))
;(assert (var256_requireNonNull/-961817614 (cast-from-String-to-var2278 var2692))) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r0) 

(declare-const var2692!1 String)
(define-const var3624 Int 0) ; Statement: i0 = 0 
(define-const var1600 var883 (annotationNames/1283353528 var3753)) ; Statement: $r2 = r1.<jdk.jfr.AnnotationElement: java.util.List annotationNames> 
(define-const var372 Iterator (var883_iterator/-912451715 var1600)) ; Statement: r19 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var927 Bool (Iterator_hasNext/-1669924200 var372)) ; Statement: $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r3 = new java.util.StringJoiner 
(assert (not (= (ite var927 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3518 var2278 (Iterator_next/-1124697587 var372)) ; Statement: $r16 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var372!1 Iterator)
(define-const var40 String (cast-from-var2278-to-String var3518)) ; Statement: r20 = (java.lang.String) $r16 
(assert true)
(define-const var152 Bool (= var2692!1 var40)) ; Statement: $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r20) 
 ; Statement: if $z2 == 0 goto i0 = i0 + 1 
(assert (not (= (ite var152 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2783 var883 (annotationValues/1283353528 var3753)) ; Statement: $r17 = r1.<jdk.jfr.AnnotationElement: java.util.List annotationValues> 
(define-const var526 var2278 (var883_get/-1216255739 var2783 var3624)) ; Statement: $r18 = interfaceinvoke $r17.<java.util.List: java.lang.Object get(int)>(i0) 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var256_requireNonNull/-961817614=([java.lang.Object], java.lang.Object), cast-from-String-to-var2278=([java.lang.String], java.lang.Object), annotationNames/1283353528=([jdk.jfr.AnnotationElement], java.util.List), var883_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var2278-to-String=([java.lang.Object], java.lang.String), annotationValues/1283353528=([jdk.jfr.AnnotationElement], java.util.List), var883_get/-1216255739=([java.util.List, int], java.lang.Object)}
; {var2671=jdk.jfr.AnnotationElement, var3753=r1, var2692=r0, var740=null_type, var256=java.util.Objects, var2278=java.lang.Object, var3624=i0, var883=java.util.List, var1600=$r2, var372=r19, var927=$z0, var3518=$r16, var40=r20, var152=$z2, var2783=$r17, var526=$r18}
; {jdk.jfr.AnnotationElement=var2671, r1=var3753, r0=var2692, null_type=var740, java.util.Objects=var256, java.lang.Object=var2278, i0=var3624, java.util.List=var883, $r2=var1600, r19=var372, $z0=var927, $r16=var3518, r20=var40, $z2=var152, $r17=var2783, $r18=var526}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: jdk.jfr.AnnotationElement;	r0 := @parameter0: java.lang.String;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r0);	i0 = 0;	$r2 = r1.<jdk.jfr.AnnotationElement: java.util.List annotationNames>;	r19 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r3 = new java.util.StringJoiner;	$r16 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>();	r20 = (java.lang.String) $r16;	$z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r20);	if $z2 == 0 goto i0 = i0 + 1;	$r17 = r1.<jdk.jfr.AnnotationElement: java.util.List annotationValues>;	$r18 = interfaceinvoke $r17.<java.util.List: java.lang.Object get(int)>(i0);	return $r18
;block_num 4