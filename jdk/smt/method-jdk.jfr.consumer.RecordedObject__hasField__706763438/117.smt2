(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2923 0)
(declare-sort var3220 0)
(declare-sort var1318 0)
(declare-sort var1509 0)
(declare-sort var2730 0)
(declare-sort var2667 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1318_requireNonNull/-961817614 (var1509) var1509)
(declare-fun cast-from-String-to-var1509 (String) var1509)
(declare-fun descriptors/-1914112014 (var2923) var2730)
(declare-fun var2730_iterator/-912451715 (var2730) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var1509)
(declare-fun cast-from-var1509-to-var2667 (var1509) var2667)
(declare-fun getName/-812373214 (var2667) String)
(declare-const null-var2923 var2923)
(declare-const null-String String)
(declare-const var82 var2923) ; Statement: r1 := @this: jdk.jfr.consumer.RecordedObject 
(assert (not (= var82 null-var2923)))
(declare-const var2656 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2656 null-String)))
;(assert (var1318_requireNonNull/-961817614 (cast-from-String-to-var1509 var2656))) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r0) 

(declare-const var2656!1 String)
(define-const var1144 var2730 (descriptors/-1914112014 var82)) ; Statement: $r2 = r1.<jdk.jfr.consumer.RecordedObject: java.util.List descriptors> 
(define-const var2397 Iterator (var2730_iterator/-912451715 var1144)) ; Statement: r14 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var997 Bool (Iterator_hasNext/-1669924200 var2397)) ; Statement: $z0 = interfaceinvoke r14.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto i1 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(".") 
(assert (not (= (ite var997 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var735 var1509 (Iterator_next/-1124697587 var2397)) ; Statement: $r12 = interfaceinvoke r14.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2397!1 Iterator)
(define-const var36 var2667 (cast-from-var1509-to-var2667 var735)) ; Statement: r15 = (jdk.jfr.ValueDescriptor) $r12 
(assert true)
(define-const var2697 String (getName/-812373214 var36)) ; Statement: $r13 = virtualinvoke r15.<jdk.jfr.ValueDescriptor: java.lang.String getName()>() 
(assert true)
(define-const var3726 Bool (= var2697 var2656!1)) ; Statement: $z5 = virtualinvoke $r13.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z5 == 0 goto (branch) 
(assert (not (= (ite var3726 1 0) 0))) ; Negate: Cond: $z5 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1318_requireNonNull/-961817614=([java.lang.Object], java.lang.Object), cast-from-String-to-var1509=([java.lang.String], java.lang.Object), descriptors/-1914112014=([jdk.jfr.consumer.RecordedObject], java.util.List), var2730_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var1509-to-var2667=([java.lang.Object], jdk.jfr.ValueDescriptor), getName/-812373214=([jdk.jfr.ValueDescriptor], java.lang.String)}
; {var2923=jdk.jfr.consumer.RecordedObject, var82=r1, var2656=r0, var3220=null_type, var1318=java.util.Objects, var1509=java.lang.Object, var2730=java.util.List, var1144=$r2, var2397=r14, var997=$z0, var735=$r12, var2667=jdk.jfr.ValueDescriptor, var36=r15, var2697=$r13, var3726=$z5}
; {jdk.jfr.consumer.RecordedObject=var2923, r1=var82, r0=var2656, null_type=var3220, java.util.Objects=var1318, java.lang.Object=var1509, java.util.List=var2730, $r2=var1144, r14=var2397, $z0=var997, $r12=var735, jdk.jfr.ValueDescriptor=var2667, r15=var36, $r13=var2697, $z5=var3726}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: jdk.jfr.consumer.RecordedObject;	r0 := @parameter0: java.lang.String;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r0);	$r2 = r1.<jdk.jfr.consumer.RecordedObject: java.util.List descriptors>;	r14 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r14.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto i1 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(".");	$r12 = interfaceinvoke r14.<java.util.Iterator: java.lang.Object next()>();	r15 = (jdk.jfr.ValueDescriptor) $r12;	$r13 = virtualinvoke r15.<jdk.jfr.ValueDescriptor: java.lang.String getName()>();	$z5 = virtualinvoke $r13.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z5 == 0 goto (branch);	return 1
;block_num 4