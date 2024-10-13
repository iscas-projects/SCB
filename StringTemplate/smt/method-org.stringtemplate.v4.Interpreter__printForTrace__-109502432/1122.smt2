(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2102 0)
(declare-sort var2510 0)
(declare-sort var3650 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun convertAnythingIteratableToIterator/929694353 (var2102 var2510 var3650) var3650)
(declare-fun cast-from-var3650-to-Iterator (var3650) Iterator)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var3650)
(declare-fun printForTrace/-109502432 (var2102 String var2510 var3650) void)
(declare-const null-var2102 var2102)
(declare-const null-String String)
(declare-const null-var2510 var2510)
(declare-const null-var3650 var3650)
(declare-const var3825 var2102) ; Statement: r0 := @this: org.stringtemplate.v4.Interpreter 
(assert (not (= var3825 null-var2102)))
(declare-const var3105 String) ; Statement: r2 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3105 null-String)))
(declare-const var1516 var2510) ; Statement: r1 := @parameter1: org.stringtemplate.v4.InstanceScope 
(assert (not (= var1516 null-var2510)))
(declare-const var3354 var3650) ; Statement: r19 := @parameter2: java.lang.Object 
(assert (not (= var3354 null-var3650)))
(define-const var2631 Bool false) ; Statement: $z0 = r19 instanceof org.stringtemplate.v4.ST 
 ; Statement: if $z0 == 0 goto r20 = virtualinvoke r0.<org.stringtemplate.v4.Interpreter: java.lang.Object convertAnythingIteratableToIterator(org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r1, r19) 
(assert (= (ite var2631 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3074 var3650 (convertAnythingIteratableToIterator/929694353 var3825 var1516 var3354)) ; Statement: r20 = virtualinvoke r0.<org.stringtemplate.v4.Interpreter: java.lang.Object convertAnythingIteratableToIterator(org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r1, r19) 
(define-const var3459 Bool false) ; Statement: $z1 = r20 instanceof java.util.Iterator 
 ; Statement: if $z1 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (not (= (ite var3459 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1087 Iterator (cast-from-var3650-to-Iterator var3074)) ; Statement: r7 = (java.util.Iterator) r20 
(assert true)
;(assert (append/672562846 var3105 " [")) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [") 
(declare-const var3105!1 String)
(assert (= var3105!1 (str.++ var3105 " [")))
(assert true) ; Non Conditional
(define-const var3217 Bool (Iterator_hasNext/-1669924200 var1087)) ; Statement: $z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]") 
(assert (not (= (ite var3217 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var769 var3650 (Iterator_next/-1124697587 var1087)) ; Statement: r8 = interfaceinvoke r7.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1087!1 Iterator)
(assert true)
;(assert (printForTrace/-109502432 var3825 var3105!1 var1516 var769)) ; Statement: virtualinvoke r0.<org.stringtemplate.v4.Interpreter: void printForTrace(java.lang.StringBuilder,org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r2, r1, r8) 

(declare-const var3825!1 var2102)
(declare-const var3105!2 String)
(declare-const var1516!1 var2510)
(declare-const var769!1 var3650)
 ; Statement: goto [?= $z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var3217!1 Bool (Iterator_hasNext/-1669924200 var1087!1)) ; Statement: $z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]") 
(assert (not (= (ite var3217!1 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var769!2 var3650 (Iterator_next/-1124697587 var1087!1)) ; Statement: r8 = interfaceinvoke r7.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1087!2 Iterator)
(assert true)
;(assert (printForTrace/-109502432 var3825!1 var3105!2 var1516!1 var769!2)) ; Statement: virtualinvoke r0.<org.stringtemplate.v4.Interpreter: void printForTrace(java.lang.StringBuilder,org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r2, r1, r8) 

(declare-const var3825!2 var2102)
(declare-const var3105!3 String)
(declare-const var1516!2 var2510)
(declare-const var769!3 var3650)
 ; Statement: goto [?= $z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var3217!2 Bool (Iterator_hasNext/-1669924200 var1087!2)) ; Statement: $z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]") 
(assert (not (= (ite var3217!2 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var769!4 var3650 (Iterator_next/-1124697587 var1087!2)) ; Statement: r8 = interfaceinvoke r7.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1087!3 Iterator)
(assert true)
;(assert (printForTrace/-109502432 var3825!2 var3105!3 var1516!2 var769!4)) ; Statement: virtualinvoke r0.<org.stringtemplate.v4.Interpreter: void printForTrace(java.lang.StringBuilder,org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r2, r1, r8) 

(declare-const var3825!3 var2102)
(declare-const var3105!4 String)
(declare-const var1516!3 var2510)
(declare-const var769!5 var3650)
 ; Statement: goto [?= $z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var3217!3 Bool (Iterator_hasNext/-1669924200 var1087!3)) ; Statement: $z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]") 
(assert (= (ite var3217!3 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
;(assert (append/672562846 var3105!4 " ]")) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]") 
(declare-const var3105!5 String)
(assert (= var3105!5 (str.++ var3105!4 " ]")))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {convertAnythingIteratableToIterator/929694353=([org.stringtemplate.v4.Interpreter, org.stringtemplate.v4.InstanceScope, java.lang.Object], java.lang.Object), cast-from-var3650-to-Iterator=([java.lang.Object], java.util.Iterator), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), printForTrace/-109502432=([org.stringtemplate.v4.Interpreter, java.lang.StringBuilder, org.stringtemplate.v4.InstanceScope, java.lang.Object], void)}
; {var2102=org.stringtemplate.v4.Interpreter, var3825=r0, var3105=r2, var2510=org.stringtemplate.v4.InstanceScope, var1516=r1, var3650=java.lang.Object, var3354=r19, var2631=$z0, var3074=r20, var3459=$z1, var1087=r7, var3217=$z2, var769=r8}
; {org.stringtemplate.v4.Interpreter=var2102, r0=var3825, r2=var3105, org.stringtemplate.v4.InstanceScope=var2510, r1=var1516, java.lang.Object=var3650, r19=var3354, $z0=var2631, r20=var3074, $z1=var3459, r7=var1087, $z2=var3217, r8=var769}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r0 := @this: org.stringtemplate.v4.Interpreter;	r2 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: org.stringtemplate.v4.InstanceScope;	r19 := @parameter2: java.lang.Object;	$z0 = r19 instanceof org.stringtemplate.v4.ST;	if $z0 == 0 goto r20 = virtualinvoke r0.<org.stringtemplate.v4.Interpreter: java.lang.Object convertAnythingIteratableToIterator(org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r1, r19);	r20 = virtualinvoke r0.<org.stringtemplate.v4.Interpreter: java.lang.Object convertAnythingIteratableToIterator(org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r1, r19);	$z1 = r20 instanceof java.util.Iterator;	if $z1 == 0 goto $r3 = new java.lang.StringBuilder;	r7 = (java.util.Iterator) r20;	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [");	$z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]");	r8 = interfaceinvoke r7.<java.util.Iterator: java.lang.Object next()>();	virtualinvoke r0.<org.stringtemplate.v4.Interpreter: void printForTrace(java.lang.StringBuilder,org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r2, r1, r8);	goto [?= $z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>()];	$z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]");	r8 = interfaceinvoke r7.<java.util.Iterator: java.lang.Object next()>();	virtualinvoke r0.<org.stringtemplate.v4.Interpreter: void printForTrace(java.lang.StringBuilder,org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r2, r1, r8);	goto [?= $z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>()];	$z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]");	r8 = interfaceinvoke r7.<java.util.Iterator: java.lang.Object next()>();	virtualinvoke r0.<org.stringtemplate.v4.Interpreter: void printForTrace(java.lang.StringBuilder,org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r2, r1, r8);	goto [?= $z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>()];	$z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]");	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]");	goto [?= return];	return
;block_num 12