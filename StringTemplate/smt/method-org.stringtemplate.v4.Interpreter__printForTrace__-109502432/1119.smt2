(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1910 0)
(declare-sort var1205 0)
(declare-sort var1481 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun convertAnythingIteratableToIterator/929694353 (var1910 var1205 var1481) var1481)
(declare-fun cast-from-var1481-to-Iterator (var1481) Iterator)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var1910 var1910)
(declare-const null-String String)
(declare-const null-var1205 var1205)
(declare-const null-var1481 var1481)
(declare-const var646 var1910) ; Statement: r0 := @this: org.stringtemplate.v4.Interpreter 
(assert (not (= var646 null-var1910)))
(declare-const var3898 String) ; Statement: r2 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3898 null-String)))
(declare-const var2373 var1205) ; Statement: r1 := @parameter1: org.stringtemplate.v4.InstanceScope 
(assert (not (= var2373 null-var1205)))
(declare-const var523 var1481) ; Statement: r19 := @parameter2: java.lang.Object 
(assert (not (= var523 null-var1481)))
(define-const var1437 Bool false) ; Statement: $z0 = r19 instanceof org.stringtemplate.v4.ST 
 ; Statement: if $z0 == 0 goto r20 = virtualinvoke r0.<org.stringtemplate.v4.Interpreter: java.lang.Object convertAnythingIteratableToIterator(org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r1, r19) 
(assert (= (ite var1437 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var791 var1481 (convertAnythingIteratableToIterator/929694353 var646 var2373 var523)) ; Statement: r20 = virtualinvoke r0.<org.stringtemplate.v4.Interpreter: java.lang.Object convertAnythingIteratableToIterator(org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r1, r19) 
(define-const var2492 Bool false) ; Statement: $z1 = r20 instanceof java.util.Iterator 
 ; Statement: if $z1 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (not (= (ite var2492 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var439 Iterator (cast-from-var1481-to-Iterator var791)) ; Statement: r7 = (java.util.Iterator) r20 
(assert true)
;(assert (append/672562846 var3898 " [")) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [") 
(declare-const var3898!1 String)
(assert (= var3898!1 (str.++ var3898 " [")))
(assert true) ; Non Conditional
(define-const var921 Bool (Iterator_hasNext/-1669924200 var439)) ; Statement: $z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]") 
(assert (= (ite var921 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
;(assert (append/672562846 var3898!1 " ]")) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]") 
(declare-const var3898!2 String)
(assert (= var3898!2 (str.++ var3898!1 " ]")))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {convertAnythingIteratableToIterator/929694353=([org.stringtemplate.v4.Interpreter, org.stringtemplate.v4.InstanceScope, java.lang.Object], java.lang.Object), cast-from-var1481-to-Iterator=([java.lang.Object], java.util.Iterator), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var1910=org.stringtemplate.v4.Interpreter, var646=r0, var3898=r2, var1205=org.stringtemplate.v4.InstanceScope, var2373=r1, var1481=java.lang.Object, var523=r19, var1437=$z0, var791=r20, var2492=$z1, var439=r7, var921=$z2}
; {org.stringtemplate.v4.Interpreter=var1910, r0=var646, r2=var3898, org.stringtemplate.v4.InstanceScope=var1205, r1=var2373, java.lang.Object=var1481, r19=var523, $z0=var1437, r20=var791, $z1=var2492, r7=var439, $z2=var921}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r0 := @this: org.stringtemplate.v4.Interpreter;	r2 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: org.stringtemplate.v4.InstanceScope;	r19 := @parameter2: java.lang.Object;	$z0 = r19 instanceof org.stringtemplate.v4.ST;	if $z0 == 0 goto r20 = virtualinvoke r0.<org.stringtemplate.v4.Interpreter: java.lang.Object convertAnythingIteratableToIterator(org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r1, r19);	r20 = virtualinvoke r0.<org.stringtemplate.v4.Interpreter: java.lang.Object convertAnythingIteratableToIterator(org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r1, r19);	$z1 = r20 instanceof java.util.Iterator;	if $z1 == 0 goto $r3 = new java.lang.StringBuilder;	r7 = (java.util.Iterator) r20;	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [");	$z2 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]");	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]");	goto [?= return];	return
;block_num 6