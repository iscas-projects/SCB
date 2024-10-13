(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2636 0)
(declare-sort var42 0)
(declare-sort var3414 0)
(declare-sort var1609 0)
(declare-sort var1250 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTestClass/-141139736 (var2636) var42)
(declare-fun getJavaClass/1058844875 (var42) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getName/1866040166 (var2636) String)
(declare-fun getRunnerAnnotations/-1150648280 (var2636) (Array Int var3414))
(declare-fun var1609_createSuiteDescription/-1546567571 (ClassObject (Array Int var3414)) var1609)
(declare-fun getFilteredChildren/-1866407294 (var2636) var1250)
(declare-fun var1250_iterator/-912451715 (var1250) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var2636 var2636)
(declare-const null-ClassObject ClassObject)
(declare-const var3502 var2636) ; Statement: r0 := @this: org.junit.runners.ParentRunner 
(assert (not (= var3502 null-var2636)))
(assert true)
(define-const var3196 var42 (getTestClass/-141139736 var3502)) ; Statement: $r1 = virtualinvoke r0.<org.junit.runners.ParentRunner: org.junit.runners.model.TestClass getTestClass()>() 
(assert true)
(define-const var3881 ClassObject (getJavaClass/1058844875 var3196)) ; Statement: r2 = virtualinvoke $r1.<org.junit.runners.model.TestClass: java.lang.Class getJavaClass()>() 
 ; Statement: if r2 == null goto $r4 = virtualinvoke r0.<org.junit.runners.ParentRunner: java.lang.String getName()>() 
(assert (not (= var3881 null-ClassObject))) ; Negate: Cond: r2 == null  
(assert true)
(define-const var1586 String (getName/-1958580599 var3881)) ; Statement: $r9 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var159 String (getName/1866040166 var3502)) ; Statement: $r8 = virtualinvoke r0.<org.junit.runners.ParentRunner: java.lang.String getName()>() 
(assert true)
(define-const var899 Bool (= var1586 var159)) ; Statement: $z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>($r8) 
 ; Statement: if $z0 != 0 goto $r10 = virtualinvoke r0.<org.junit.runners.ParentRunner: java.lang.'annotation'.Annotation[] getRunnerAnnotations()>() 
(assert (not (= (ite var899 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var2790 (Array Int var3414) (getRunnerAnnotations/-1150648280 var3502)) ; Statement: $r10 = virtualinvoke r0.<org.junit.runners.ParentRunner: java.lang.'annotation'.Annotation[] getRunnerAnnotations()>() 
(define-const var529 var1609 (var1609_createSuiteDescription/-1546567571 var3881 var2790)) ; Statement: r12 = staticinvoke <org.junit.runner.Description: org.junit.runner.Description createSuiteDescription(java.lang.Class,java.lang.'annotation'.Annotation[])>(r2, $r10) 
(assert true) ; Non Conditional
(assert true)
(define-const var1693 var1250 (getFilteredChildren/-1866407294 var3502)) ; Statement: $r5 = specialinvoke r0.<org.junit.runners.ParentRunner: java.util.List getFilteredChildren()>() 
(define-const var3639 Iterator (var1250_iterator/-912451715 var1693)) ; Statement: $r11 = interfaceinvoke $r5.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1721 Bool (Iterator_hasNext/-1669924200 var3639)) ; Statement: $z1 = interfaceinvoke $r11.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto return r12 
(assert (= (ite var1721 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getTestClass/-141139736=([org.junit.runners.ParentRunner], org.junit.runners.model.TestClass), getJavaClass/1058844875=([org.junit.runners.model.TestClass], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), getName/1866040166=([org.junit.runners.ParentRunner], java.lang.String), getRunnerAnnotations/-1150648280=([org.junit.runners.ParentRunner], java.lang.annotation.Annotation[]), var1609_createSuiteDescription/-1546567571=([java.lang.Class, java.lang.annotation.Annotation[]], org.junit.runner.Description), getFilteredChildren/-1866407294=([org.junit.runners.ParentRunner], java.util.List), var1250_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var2636=org.junit.runners.ParentRunner, var3502=r0, var42=org.junit.runners.model.TestClass, var3196=$r1, var3881=r2, var1586=$r9, var159=$r8, var899=$z0, var3414=java.lang.annotation.Annotation, var2790=$r10, var1609=org.junit.runner.Description, var529=r12, var1250=java.util.List, var1693=$r5, var3639=$r11, var1721=$z1}
; {org.junit.runners.ParentRunner=var2636, r0=var3502, org.junit.runners.model.TestClass=var42, $r1=var3196, r2=var3881, $r9=var1586, $r8=var159, $z0=var899, java.lang.annotation.Annotation=var3414, $r10=var2790, org.junit.runner.Description=var1609, r12=var529, java.util.List=var1250, $r5=var1693, $r11=var3639, $z1=var1721}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.junit.runners.ParentRunner;	$r1 = virtualinvoke r0.<org.junit.runners.ParentRunner: org.junit.runners.model.TestClass getTestClass()>();	r2 = virtualinvoke $r1.<org.junit.runners.model.TestClass: java.lang.Class getJavaClass()>();	if r2 == null goto $r4 = virtualinvoke r0.<org.junit.runners.ParentRunner: java.lang.String getName()>();	$r9 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke r0.<org.junit.runners.ParentRunner: java.lang.String getName()>();	$z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>($r8);	if $z0 != 0 goto $r10 = virtualinvoke r0.<org.junit.runners.ParentRunner: java.lang.'annotation'.Annotation[] getRunnerAnnotations()>();	$r10 = virtualinvoke r0.<org.junit.runners.ParentRunner: java.lang.'annotation'.Annotation[] getRunnerAnnotations()>();	r12 = staticinvoke <org.junit.runner.Description: org.junit.runner.Description createSuiteDescription(java.lang.Class,java.lang.'annotation'.Annotation[])>(r2, $r10);	$r5 = specialinvoke r0.<org.junit.runners.ParentRunner: java.util.List getFilteredChildren()>();	$r11 = interfaceinvoke $r5.<java.util.List: java.util.Iterator iterator()>();	$z1 = interfaceinvoke $r11.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto return r12;	return r12
;block_num 6