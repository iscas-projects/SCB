(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2780 0)
(declare-sort var3806 0)
(declare-sort var1695 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3806_iterator/-912451715 (var3806) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var1695)
(declare-const null-var2780 var2780)
(declare-const null-var3806 var3806)
(declare-const var2931 var2780) ; Statement: r5 := @parameter0: org.eclipse.jdt.core.IType 
(assert (not (= var2931 null-var2780)))
(declare-const var768 var3806) ; Statement: r0 := @parameter1: java.util.List 
(assert (not (= var768 null-var3806)))
(define-const var2513 Iterator (var3806_iterator/-912451715 var768)) ; Statement: r1 = interfaceinvoke r0.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z2 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var1527 Bool (Iterator_hasNext/-1669924200 var2513)) ; Statement: $z2 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 != 0 goto r2 = interfaceinvoke r1.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var1527 1 0) 0))) ; Cond: $z2 != 0 
(define-const var1087 var1695 (Iterator_next/-1124697587 var2513)) ; Statement: r2 = interfaceinvoke r1.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2513!1 Iterator)
(define-const var1340 Bool false) ; Statement: $z0 = r2 instanceof org.eclipse.jdt.core.dom.AbstractTypeDeclaration 
 ; Statement: if $z0 == 0 goto $z2 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var1340 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1527!1 Bool (Iterator_hasNext/-1669924200 var2513!1)) ; Statement: $z2 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 != 0 goto r2 = interfaceinvoke r1.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (not (= (ite var1527!1 1 0) 0)))) ; Negate: Cond: $z2 != 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var3806_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object)}
; {var2780=org.eclipse.jdt.core.IType, var2931=r5, var3806=java.util.List, var768=r0, var2513=r1, var1527=$z2, var1695=java.lang.Object, var1087=r2, var1340=$z0}
; {org.eclipse.jdt.core.IType=var2780, r5=var2931, java.util.List=var3806, r0=var768, r1=var2513, $z2=var1527, java.lang.Object=var1695, r2=var1087, $z0=var1340}
;seq 
;cnt {}
;stmts r5 := @parameter0: org.eclipse.jdt.core.IType;	r0 := @parameter1: java.util.List;	r1 = interfaceinvoke r0.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z2 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>()];	$z2 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>();	if $z2 != 0 goto r2 = interfaceinvoke r1.<java.util.Iterator: java.lang.Object next()>();	r2 = interfaceinvoke r1.<java.util.Iterator: java.lang.Object next()>();	$z0 = r2 instanceof org.eclipse.jdt.core.dom.AbstractTypeDeclaration;	if $z0 == 0 goto $z2 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>();	$z2 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>();	if $z2 != 0 goto r2 = interfaceinvoke r1.<java.util.Iterator: java.lang.Object next()>();	return null
;block_num 5