(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var480 0)
(declare-sort var908 0)
(declare-sort var1364 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun convertAnythingIteratableToIterator/929694353 (var480 var908 var1364) var1364)
(declare-fun cast-from-var1364-to-Iterator (var1364) Iterator)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var1364)
(declare-fun printForTrace/-109502432 (var480 String var908 var1364) void)
(declare-const null-var480 var480)
(declare-const null-String String)
(declare-const null-var908 var908)
(declare-const null-var1364 var1364)
(declare-const var1763 var480) ; Statement: r0 := @this: org.stringtemplate.v4.Interpreter 
(assert (not (= var1763 null-var480)))
(declare-const var743 String) ; Statement: r2 := @parameter0: java.lang.StringBuilder 
(assert (not (= var743 null-String)))
(declare-const var3576 var908) ; Statement: r1 := @parameter1: org.stringtemplate.v4.InstanceScope 
(assert (not (= var3576 null-var908)))
(declare-const var2252 var1364) ; Statement: r19 := @parameter2: java.lang.Object 
(assert (not (= var2252 null-var1364)))
(define-const var47 Bool false) ; Statement: $z0 = r19 instanceof org.stringtemplate.v4.ST 
 ; Statement: if $z0 == 0 goto r20 = virtualinvoke r0.<org.stringtemplate.v4.Interpreter: java.lang.Object convertAnythingIteratableToIterator(org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r1, r19) 
(assert (= (ite var47 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var949 var1364 (convertAnythingIteratableToIterator/929694353 var1763 var3576 var2252)) ; Statement: r20 = virtualinvoke r0.<org.stringtemplate.v4.Interpreter: java.lang.Object convertAnythingIteratableToIterator(org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r1, r19) 
(define-const var3882 Bool false) ; Statement: $z1 = r20 instanceof java.util.Iterator 
 ; Statement: if $z1 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (not (= (ite var3882 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1879 Iterator (cast-from-var1364-to-Iterator var949)) ; Statement: r7 = (java.util.Iterator) r20 
(assert true)
;(assert (append/672562846 var743 " [")) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [") 
(declare-const var743!1 String)
(assert (= var743!1 (str.++ var743 " [")))
(assert true) ; Non Conditional
(define-const var1820 Bool (Iterator_hasNext/-1669924200 var1879)) ; Statement: $z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]") 
(assert (not (= (ite var1820 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2283 var1364 (Iterator_next/-1124697587 var1879)) ; Statement: r8 = interfaceinvoke r7.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1879!1 Iterator)
(assert true)
;(assert (printForTrace/-109502432 var1763 var743!1 var3576 var2283)) ; Statement: virtualinvoke r0.<org.stringtemplate.v4.Interpreter: void printForTrace(java.lang.StringBuilder,org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r2, r1, r8) 

(declare-const var1763!1 var480)
(declare-const var743!2 String)
(declare-const var3576!1 var908)
(declare-const var2283!1 var1364)
 ; Statement: goto [?= $z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var1820!1 Bool (Iterator_hasNext/-1669924200 var1879!1)) ; Statement: $z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]") 
(assert (= (ite var1820!1 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
;(assert (append/672562846 var743!2 " ]")) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]") 
(declare-const var743!3 String)
(assert (= var743!3 (str.++ var743!2 " ]")))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {convertAnythingIteratableToIterator/929694353=([org.stringtemplate.v4.Interpreter, org.stringtemplate.v4.InstanceScope, java.lang.Object], java.lang.Object), cast-from-var1364-to-Iterator=([java.lang.Object], java.util.Iterator), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), printForTrace/-109502432=([org.stringtemplate.v4.Interpreter, java.lang.StringBuilder, org.stringtemplate.v4.InstanceScope, java.lang.Object], void)}
; {var480=org.stringtemplate.v4.Interpreter, var1763=r0, var743=r2, var908=org.stringtemplate.v4.InstanceScope, var3576=r1, var1364=java.lang.Object, var2252=r19, var47=$z0, var949=r20, var3882=$z1, var1879=r7, var1820=$z2, var2283=r8}
; {org.stringtemplate.v4.Interpreter=var480, r0=var1763, r2=var743, org.stringtemplate.v4.InstanceScope=var908, r1=var3576, java.lang.Object=var1364, r19=var2252, $z0=var47, r20=var949, $z1=var3882, r7=var1879, $z2=var1820, r8=var2283}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r0 := @this: org.stringtemplate.v4.Interpreter;	r2 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: org.stringtemplate.v4.InstanceScope;	r19 := @parameter2: java.lang.Object;	$z0 = r19 instanceof org.stringtemplate.v4.ST;	if $z0 == 0 goto r20 = virtualinvoke r0.<org.stringtemplate.v4.Interpreter: java.lang.Object convertAnythingIteratableToIterator(org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r1, r19);	r20 = virtualinvoke r0.<org.stringtemplate.v4.Interpreter: java.lang.Object convertAnythingIteratableToIterator(org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r1, r19);	$z1 = r20 instanceof java.util.Iterator;	if $z1 == 0 goto $r3 = new java.lang.StringBuilder;	r7 = (java.util.Iterator) r20;	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [");	$z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]");	r8 = interfaceinvoke r7.<java.util.Iterator: java.lang.Object next()>();	virtualinvoke r0.<org.stringtemplate.v4.Interpreter: void printForTrace(java.lang.StringBuilder,org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r2, r1, r8);	goto [?= $z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>()];	$z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]");	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]");	goto [?= return];	return
;block_num 8