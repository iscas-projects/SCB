(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var367 0)
(declare-sort var1692 0)
(declare-sort var2334 0)
(declare-sort var3204 0)
(declare-sort var1400 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getChildren/-464815365 (var1692) var3204)
(declare-fun isEmpty/1321303667 (var3204) Bool)
(declare-fun toString/1471230080 (var1692) String)
(declare-fun var2334_add/328494887 (var2334 var1400) Bool)
(declare-fun cast-from-var1692-to-var1400 (var1692) var1400)
(declare-const null-var367 var367)
(declare-const null-var1692 var1692)
(declare-const null-var2334 var2334)
(declare-const var1097 var367) ; Statement: r6 := @this: org.junit.experimental.max.MaxCore 
(assert (not (= var1097 null-var367)))
(declare-const var489 var1692) ; Statement: r10 := @parameter0: org.junit.runner.Description 
(assert (not (= var489 null-var1692)))
(declare-const var2332 var1692) ; Statement: r0 := @parameter1: org.junit.runner.Description 
(assert (not (= var2332 null-var1692)))
(declare-const var2102 var2334) ; Statement: r7 := @parameter2: java.util.List 
(assert (not (= var2102 null-var2334)))
(assert true)
(define-const var1921 var3204 (getChildren/-464815365 var2332)) ; Statement: $r1 = virtualinvoke r0.<org.junit.runner.Description: java.util.ArrayList getChildren()>() 
(assert true)
(define-const var3189 Bool (isEmpty/1321303667 var1921)) ; Statement: $z0 = virtualinvoke $r1.<java.util.ArrayList: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = virtualinvoke r0.<org.junit.runner.Description: java.util.ArrayList getChildren()>() 
(assert (not (= (ite var3189 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2471 String (toString/1471230080 var2332)) ; Statement: $r8 = virtualinvoke r0.<org.junit.runner.Description: java.lang.String toString()>() 
(assert true)
(define-const var706 Bool (= var2471 "warning(junit.framework.TestSuite$1)")) ; Statement: $z2 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>("warning(junit.framework.TestSuite$1)") 
 ; Statement: if $z2 == 0 goto interfaceinvoke r7.<java.util.List: boolean add(java.lang.Object)>(r0) 
(assert (= (ite var706 1 0) 0)) ; Cond: $z2 == 0 
;(assert (var2334_add/328494887 var2102 (cast-from-var1692-to-var1400 var2332))) ; Statement: interfaceinvoke r7.<java.util.List: boolean add(java.lang.Object)>(r0) 

(declare-const var2102!1 var2334)
(declare-const var2332!1 var1692)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getChildren/-464815365=([org.junit.runner.Description], java.util.ArrayList), isEmpty/1321303667=([java.util.ArrayList], boolean), toString/1471230080=([org.junit.runner.Description], java.lang.String), var2334_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var1692-to-var1400=([org.junit.runner.Description], java.lang.Object)}
; {var367=org.junit.experimental.max.MaxCore, var1097=r6, var1692=org.junit.runner.Description, var489=r10, var2332=r0, var2334=java.util.List, var2102=r7, var3204=java.util.ArrayList, var1921=$r1, var3189=$z0, var2471=$r8, var706=$z2, var1400=java.lang.Object}
; {org.junit.experimental.max.MaxCore=var367, r6=var1097, org.junit.runner.Description=var1692, r10=var489, r0=var2332, java.util.List=var2334, r7=var2102, java.util.ArrayList=var3204, $r1=var1921, $z0=var3189, $r8=var2471, $z2=var706, java.lang.Object=var1400}
;seq <org.junit.runner.Description: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r6 := @this: org.junit.experimental.max.MaxCore;	r10 := @parameter0: org.junit.runner.Description;	r0 := @parameter1: org.junit.runner.Description;	r7 := @parameter2: java.util.List;	$r1 = virtualinvoke r0.<org.junit.runner.Description: java.util.ArrayList getChildren()>();	$z0 = virtualinvoke $r1.<java.util.ArrayList: boolean isEmpty()>();	if $z0 == 0 goto $r2 = virtualinvoke r0.<org.junit.runner.Description: java.util.ArrayList getChildren()>();	$r8 = virtualinvoke r0.<org.junit.runner.Description: java.lang.String toString()>();	$z2 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>("warning(junit.framework.TestSuite$1)");	if $z2 == 0 goto interfaceinvoke r7.<java.util.List: boolean add(java.lang.Object)>(r0);	interfaceinvoke r7.<java.util.List: boolean add(java.lang.Object)>(r0);	goto [?= return];	return
;block_num 4