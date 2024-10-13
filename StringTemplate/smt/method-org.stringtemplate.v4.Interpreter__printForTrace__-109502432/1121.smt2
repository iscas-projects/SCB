(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var790 0)
(declare-sort var592 0)
(declare-sort var2480 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun convertAnythingIteratableToIterator/929694353 (var790 var592 var2480) var2480)
(declare-fun cast-from-var2480-to-Iterator (var2480) Iterator)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var2480)
(declare-fun printForTrace/-109502432 (var790 String var592 var2480) void)
(declare-const null-var790 var790)
(declare-const null-String String)
(declare-const null-var592 var592)
(declare-const null-var2480 var2480)
(declare-const var3377 var790) ; Statement: r0 := @this: org.stringtemplate.v4.Interpreter 
(assert (not (= var3377 null-var790)))
(declare-const var60 String) ; Statement: r2 := @parameter0: java.lang.StringBuilder 
(assert (not (= var60 null-String)))
(declare-const var2258 var592) ; Statement: r1 := @parameter1: org.stringtemplate.v4.InstanceScope 
(assert (not (= var2258 null-var592)))
(declare-const var2017 var2480) ; Statement: r19 := @parameter2: java.lang.Object 
(assert (not (= var2017 null-var2480)))
(define-const var1290 Bool false) ; Statement: $z0 = r19 instanceof org.stringtemplate.v4.ST 
 ; Statement: if $z0 == 0 goto r20 = virtualinvoke r0.<org.stringtemplate.v4.Interpreter: java.lang.Object convertAnythingIteratableToIterator(org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r1, r19) 
(assert (= (ite var1290 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3265 var2480 (convertAnythingIteratableToIterator/929694353 var3377 var2258 var2017)) ; Statement: r20 = virtualinvoke r0.<org.stringtemplate.v4.Interpreter: java.lang.Object convertAnythingIteratableToIterator(org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r1, r19) 
(define-const var3451 Bool false) ; Statement: $z1 = r20 instanceof java.util.Iterator 
 ; Statement: if $z1 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (not (= (ite var3451 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1276 Iterator (cast-from-var2480-to-Iterator var3265)) ; Statement: r7 = (java.util.Iterator) r20 
(assert true)
;(assert (append/672562846 var60 " [")) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [") 
(declare-const var60!1 String)
(assert (= var60!1 (str.++ var60 " [")))
(assert true) ; Non Conditional
(define-const var961 Bool (Iterator_hasNext/-1669924200 var1276)) ; Statement: $z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]") 
(assert (not (= (ite var961 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2307 var2480 (Iterator_next/-1124697587 var1276)) ; Statement: r8 = interfaceinvoke r7.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1276!1 Iterator)
(assert true)
;(assert (printForTrace/-109502432 var3377 var60!1 var2258 var2307)) ; Statement: virtualinvoke r0.<org.stringtemplate.v4.Interpreter: void printForTrace(java.lang.StringBuilder,org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r2, r1, r8) 

(declare-const var3377!1 var790)
(declare-const var60!2 String)
(declare-const var2258!1 var592)
(declare-const var2307!1 var2480)
 ; Statement: goto [?= $z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var961!1 Bool (Iterator_hasNext/-1669924200 var1276!1)) ; Statement: $z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]") 
(assert (not (= (ite var961!1 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2307!2 var2480 (Iterator_next/-1124697587 var1276!1)) ; Statement: r8 = interfaceinvoke r7.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1276!2 Iterator)
(assert true)
;(assert (printForTrace/-109502432 var3377!1 var60!2 var2258!1 var2307!2)) ; Statement: virtualinvoke r0.<org.stringtemplate.v4.Interpreter: void printForTrace(java.lang.StringBuilder,org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r2, r1, r8) 

(declare-const var3377!2 var790)
(declare-const var60!3 String)
(declare-const var2258!2 var592)
(declare-const var2307!3 var2480)
 ; Statement: goto [?= $z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var961!2 Bool (Iterator_hasNext/-1669924200 var1276!2)) ; Statement: $z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]") 
(assert (= (ite var961!2 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
;(assert (append/672562846 var60!3 " ]")) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]") 
(declare-const var60!4 String)
(assert (= var60!4 (str.++ var60!3 " ]")))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {convertAnythingIteratableToIterator/929694353=([org.stringtemplate.v4.Interpreter, org.stringtemplate.v4.InstanceScope, java.lang.Object], java.lang.Object), cast-from-var2480-to-Iterator=([java.lang.Object], java.util.Iterator), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), printForTrace/-109502432=([org.stringtemplate.v4.Interpreter, java.lang.StringBuilder, org.stringtemplate.v4.InstanceScope, java.lang.Object], void)}
; {var790=org.stringtemplate.v4.Interpreter, var3377=r0, var60=r2, var592=org.stringtemplate.v4.InstanceScope, var2258=r1, var2480=java.lang.Object, var2017=r19, var1290=$z0, var3265=r20, var3451=$z1, var1276=r7, var961=$z2, var2307=r8}
; {org.stringtemplate.v4.Interpreter=var790, r0=var3377, r2=var60, org.stringtemplate.v4.InstanceScope=var592, r1=var2258, java.lang.Object=var2480, r19=var2017, $z0=var1290, r20=var3265, $z1=var3451, r7=var1276, $z2=var961, r8=var2307}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r0 := @this: org.stringtemplate.v4.Interpreter;	r2 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: org.stringtemplate.v4.InstanceScope;	r19 := @parameter2: java.lang.Object;	$z0 = r19 instanceof org.stringtemplate.v4.ST;	if $z0 == 0 goto r20 = virtualinvoke r0.<org.stringtemplate.v4.Interpreter: java.lang.Object convertAnythingIteratableToIterator(org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r1, r19);	r20 = virtualinvoke r0.<org.stringtemplate.v4.Interpreter: java.lang.Object convertAnythingIteratableToIterator(org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r1, r19);	$z1 = r20 instanceof java.util.Iterator;	if $z1 == 0 goto $r3 = new java.lang.StringBuilder;	r7 = (java.util.Iterator) r20;	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [");	$z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]");	r8 = interfaceinvoke r7.<java.util.Iterator: java.lang.Object next()>();	virtualinvoke r0.<org.stringtemplate.v4.Interpreter: void printForTrace(java.lang.StringBuilder,org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r2, r1, r8);	goto [?= $z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>()];	$z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]");	r8 = interfaceinvoke r7.<java.util.Iterator: java.lang.Object next()>();	virtualinvoke r0.<org.stringtemplate.v4.Interpreter: void printForTrace(java.lang.StringBuilder,org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r2, r1, r8);	goto [?= $z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>()];	$z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]");	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]");	goto [?= return];	return
;block_num 10