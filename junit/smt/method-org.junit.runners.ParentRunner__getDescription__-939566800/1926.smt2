(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2780 0)
(declare-sort var2364 0)
(declare-sort var295 0)
(declare-sort var2948 0)
(declare-sort var2883 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTestClass/-141139736 (var2780) var2364)
(declare-fun getJavaClass/1058844875 (var2364) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getName/1866040166 (var2780) String)
(declare-fun getRunnerAnnotations/-1150648280 (var2780) (Array Int var295))
(declare-fun var2948_createSuiteDescription/-819953118 (String (Array Int var295)) var2948)
(declare-fun getFilteredChildren/-1866407294 (var2780) var2883)
(declare-fun var2883_iterator/-912451715 (var2883) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var2780 var2780)
(declare-const null-ClassObject ClassObject)
(declare-const var3523 var2780) ; Statement: r0 := @this: org.junit.runners.ParentRunner 
(assert (not (= var3523 null-var2780)))
(assert true)
(define-const var3099 var2364 (getTestClass/-141139736 var3523)) ; Statement: $r1 = virtualinvoke r0.<org.junit.runners.ParentRunner: org.junit.runners.model.TestClass getTestClass()>() 
(assert true)
(define-const var2932 ClassObject (getJavaClass/1058844875 var3099)) ; Statement: r2 = virtualinvoke $r1.<org.junit.runners.model.TestClass: java.lang.Class getJavaClass()>() 
 ; Statement: if r2 == null goto $r4 = virtualinvoke r0.<org.junit.runners.ParentRunner: java.lang.String getName()>() 
(assert (not (= var2932 null-ClassObject))) ; Negate: Cond: r2 == null  
(assert true)
(define-const var1368 String (getName/-1958580599 var2932)) ; Statement: $r9 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1321 String (getName/1866040166 var3523)) ; Statement: $r8 = virtualinvoke r0.<org.junit.runners.ParentRunner: java.lang.String getName()>() 
(assert true)
(define-const var986 Bool (= var1368 var1321)) ; Statement: $z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>($r8) 
 ; Statement: if $z0 != 0 goto $r10 = virtualinvoke r0.<org.junit.runners.ParentRunner: java.lang.'annotation'.Annotation[] getRunnerAnnotations()>() 
(assert (not (not (= (ite var986 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var2209 String (getName/1866040166 var3523)) ; Statement: $r4 = virtualinvoke r0.<org.junit.runners.ParentRunner: java.lang.String getName()>() 
(assert true)
(define-const var2211 (Array Int var295) (getRunnerAnnotations/-1150648280 var3523)) ; Statement: $r3 = virtualinvoke r0.<org.junit.runners.ParentRunner: java.lang.'annotation'.Annotation[] getRunnerAnnotations()>() 
(define-const var2583 var2948 (var2948_createSuiteDescription/-819953118 var2209 var2211)) ; Statement: r12 = staticinvoke <org.junit.runner.Description: org.junit.runner.Description createSuiteDescription(java.lang.String,java.lang.'annotation'.Annotation[])>($r4, $r3) 
 ; Statement: goto [?= $r5 = specialinvoke r0.<org.junit.runners.ParentRunner: java.util.List getFilteredChildren()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var699 var2883 (getFilteredChildren/-1866407294 var3523)) ; Statement: $r5 = specialinvoke r0.<org.junit.runners.ParentRunner: java.util.List getFilteredChildren()>() 
(define-const var1221 Iterator (var2883_iterator/-912451715 var699)) ; Statement: $r11 = interfaceinvoke $r5.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var415 Bool (Iterator_hasNext/-1669924200 var1221)) ; Statement: $z1 = interfaceinvoke $r11.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto return r12 
(assert (= (ite var415 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getTestClass/-141139736=([org.junit.runners.ParentRunner], org.junit.runners.model.TestClass), getJavaClass/1058844875=([org.junit.runners.model.TestClass], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), getName/1866040166=([org.junit.runners.ParentRunner], java.lang.String), getRunnerAnnotations/-1150648280=([org.junit.runners.ParentRunner], java.lang.annotation.Annotation[]), var2948_createSuiteDescription/-819953118=([java.lang.String, java.lang.annotation.Annotation[]], org.junit.runner.Description), getFilteredChildren/-1866407294=([org.junit.runners.ParentRunner], java.util.List), var2883_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var2780=org.junit.runners.ParentRunner, var3523=r0, var2364=org.junit.runners.model.TestClass, var3099=$r1, var2932=r2, var1368=$r9, var1321=$r8, var986=$z0, var2209=$r4, var295=java.lang.annotation.Annotation, var2211=$r3, var2948=org.junit.runner.Description, var2583=r12, var2883=java.util.List, var699=$r5, var1221=$r11, var415=$z1}
; {org.junit.runners.ParentRunner=var2780, r0=var3523, org.junit.runners.model.TestClass=var2364, $r1=var3099, r2=var2932, $r9=var1368, $r8=var1321, $z0=var986, $r4=var2209, java.lang.annotation.Annotation=var295, $r3=var2211, org.junit.runner.Description=var2948, r12=var2583, java.util.List=var2883, $r5=var699, $r11=var1221, $z1=var415}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.junit.runners.ParentRunner;	$r1 = virtualinvoke r0.<org.junit.runners.ParentRunner: org.junit.runners.model.TestClass getTestClass()>();	r2 = virtualinvoke $r1.<org.junit.runners.model.TestClass: java.lang.Class getJavaClass()>();	if r2 == null goto $r4 = virtualinvoke r0.<org.junit.runners.ParentRunner: java.lang.String getName()>();	$r9 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke r0.<org.junit.runners.ParentRunner: java.lang.String getName()>();	$z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>($r8);	if $z0 != 0 goto $r10 = virtualinvoke r0.<org.junit.runners.ParentRunner: java.lang.'annotation'.Annotation[] getRunnerAnnotations()>();	$r4 = virtualinvoke r0.<org.junit.runners.ParentRunner: java.lang.String getName()>();	$r3 = virtualinvoke r0.<org.junit.runners.ParentRunner: java.lang.'annotation'.Annotation[] getRunnerAnnotations()>();	r12 = staticinvoke <org.junit.runner.Description: org.junit.runner.Description createSuiteDescription(java.lang.String,java.lang.'annotation'.Annotation[])>($r4, $r3);	goto [?= $r5 = specialinvoke r0.<org.junit.runners.ParentRunner: java.util.List getFilteredChildren()>()];	$r5 = specialinvoke r0.<org.junit.runners.ParentRunner: java.util.List getFilteredChildren()>();	$r11 = interfaceinvoke $r5.<java.util.List: java.util.Iterator iterator()>();	$z1 = interfaceinvoke $r11.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto return r12;	return r12
;block_num 6