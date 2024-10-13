(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2498 0)
(declare-sort var3939 0)
(declare-sort var2736 0)
(declare-sort var742 0)
(declare-sort var478 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3939_iterator/-912451715 (var3939) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var2736)
(declare-fun cast-from-var2736-to-var742 (var2736) var742)
(declare-fun getName/932933363 (var742) var478)
(declare-fun toString/-737938157 (var478) String)
(declare-fun var2498_getElementName/621609868 (var2498) String)
(declare-const null-var2498 var2498)
(declare-const null-var3939 var3939)
(declare-const var813 var2498) ; Statement: r5 := @parameter0: org.eclipse.jdt.core.IType 
(assert (not (= var813 null-var2498)))
(declare-const var3985 var3939) ; Statement: r0 := @parameter1: java.util.List 
(assert (not (= var3985 null-var3939)))
(define-const var2032 Iterator (var3939_iterator/-912451715 var3985)) ; Statement: r1 = interfaceinvoke r0.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z2 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var2823 Bool (Iterator_hasNext/-1669924200 var2032)) ; Statement: $z2 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 != 0 goto r2 = interfaceinvoke r1.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var2823 1 0) 0))) ; Cond: $z2 != 0 
(define-const var797 var2736 (Iterator_next/-1124697587 var2032)) ; Statement: r2 = interfaceinvoke r1.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2032!1 Iterator)
(define-const var3302 Bool false) ; Statement: $z0 = r2 instanceof org.eclipse.jdt.core.dom.AbstractTypeDeclaration 
 ; Statement: if $z0 == 0 goto $z2 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>() 
(assert (not (= (ite var3302 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3256 var742 (cast-from-var2736-to-var742 var797)) ; Statement: r3 = (org.eclipse.jdt.core.dom.AbstractTypeDeclaration) r2 
(assert true)
(define-const var1291 var478 (getName/932933363 var3256)) ; Statement: $r4 = virtualinvoke r3.<org.eclipse.jdt.core.dom.AbstractTypeDeclaration: org.eclipse.jdt.core.dom.SimpleName getName()>() 
(assert true)
(define-const var3093 String (toString/-737938157 var1291)) ; Statement: $r7 = virtualinvoke $r4.<org.eclipse.jdt.core.dom.SimpleName: java.lang.String toString()>() 
(define-const var2638 String (var2498_getElementName/621609868 var813)) ; Statement: $r6 = interfaceinvoke r5.<org.eclipse.jdt.core.IType: java.lang.String getElementName()>() 
(assert true)
(define-const var3923 Bool (= var3093 var2638)) ; Statement: $z1 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z1 == 0 goto $z2 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>() 
(assert (not (= (ite var3923 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3939_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var2736-to-var742=([java.lang.Object], org.eclipse.jdt.core.dom.AbstractTypeDeclaration), getName/932933363=([org.eclipse.jdt.core.dom.AbstractTypeDeclaration], org.eclipse.jdt.core.dom.SimpleName), toString/-737938157=([org.eclipse.jdt.core.dom.SimpleName], java.lang.String), var2498_getElementName/621609868=([org.eclipse.jdt.core.IType], java.lang.String)}
; {var2498=org.eclipse.jdt.core.IType, var813=r5, var3939=java.util.List, var3985=r0, var2032=r1, var2823=$z2, var2736=java.lang.Object, var797=r2, var3302=$z0, var742=org.eclipse.jdt.core.dom.AbstractTypeDeclaration, var3256=r3, var478=org.eclipse.jdt.core.dom.SimpleName, var1291=$r4, var3093=$r7, var2638=$r6, var3923=$z1}
; {org.eclipse.jdt.core.IType=var2498, r5=var813, java.util.List=var3939, r0=var3985, r1=var2032, $z2=var2823, java.lang.Object=var2736, r2=var797, $z0=var3302, org.eclipse.jdt.core.dom.AbstractTypeDeclaration=var742, r3=var3256, org.eclipse.jdt.core.dom.SimpleName=var478, $r4=var1291, $r7=var3093, $r6=var2638, $z1=var3923}
;seq <org.eclipse.jdt.core.dom.SimpleName: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @parameter0: org.eclipse.jdt.core.IType;	r0 := @parameter1: java.util.List;	r1 = interfaceinvoke r0.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z2 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>()];	$z2 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>();	if $z2 != 0 goto r2 = interfaceinvoke r1.<java.util.Iterator: java.lang.Object next()>();	r2 = interfaceinvoke r1.<java.util.Iterator: java.lang.Object next()>();	$z0 = r2 instanceof org.eclipse.jdt.core.dom.AbstractTypeDeclaration;	if $z0 == 0 goto $z2 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>();	r3 = (org.eclipse.jdt.core.dom.AbstractTypeDeclaration) r2;	$r4 = virtualinvoke r3.<org.eclipse.jdt.core.dom.AbstractTypeDeclaration: org.eclipse.jdt.core.dom.SimpleName getName()>();	$r7 = virtualinvoke $r4.<org.eclipse.jdt.core.dom.SimpleName: java.lang.String toString()>();	$r6 = interfaceinvoke r5.<org.eclipse.jdt.core.IType: java.lang.String getElementName()>();	$z1 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z1 == 0 goto $z2 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>();	return r3
;block_num 5