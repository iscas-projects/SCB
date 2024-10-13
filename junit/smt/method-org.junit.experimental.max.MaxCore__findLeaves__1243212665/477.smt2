(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var676 0)
(declare-sort var3756 0)
(declare-sort var1532 0)
(declare-sort var2183 0)
(declare-sort var3735 0)
(declare-sort var1380 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getChildren/-464815365 (var3756) var2183)
(declare-fun isEmpty/1321303667 (var2183) Bool)
(declare-fun toString/1471230080 (var3756) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3735) String)
(declare-fun cast-from-var3756-to-var3735 (var3756) var3735)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-var1380-init () (Array Int var1380))
(declare-fun var3756_createSuiteDescription/-819953118 (String (Array Int var1380)) var3756)
(declare-fun var1532_add/328494887 (var1532 var3735) Bool)
(declare-const null-var676 var676)
(declare-const null-var3756 var3756)
(declare-const null-var1532 var1532)
(declare-const var2560 var676) ; Statement: r6 := @this: org.junit.experimental.max.MaxCore 
(assert (not (= var2560 null-var676)))
(declare-const var3520 var3756) ; Statement: r10 := @parameter0: org.junit.runner.Description 
(assert (not (= var3520 null-var3756)))
(declare-const var3673 var3756) ; Statement: r0 := @parameter1: org.junit.runner.Description 
(assert (not (= var3673 null-var3756)))
(declare-const var2846 var1532) ; Statement: r7 := @parameter2: java.util.List 
(assert (not (= var2846 null-var1532)))
(assert true)
(define-const var3611 var2183 (getChildren/-464815365 var3673)) ; Statement: $r1 = virtualinvoke r0.<org.junit.runner.Description: java.util.ArrayList getChildren()>() 
(assert true)
(define-const var1265 Bool (isEmpty/1321303667 var3611)) ; Statement: $z0 = virtualinvoke $r1.<java.util.ArrayList: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = virtualinvoke r0.<org.junit.runner.Description: java.util.ArrayList getChildren()>() 
(assert (not (= (ite var1265 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var433 String (toString/1471230080 var3673)) ; Statement: $r8 = virtualinvoke r0.<org.junit.runner.Description: java.lang.String toString()>() 
(assert true)
(define-const var1152 Bool (= var433 "warning(junit.framework.TestSuite$1)")) ; Statement: $z2 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>("warning(junit.framework.TestSuite$1)") 
 ; Statement: if $z2 == 0 goto interfaceinvoke r7.<java.util.List: boolean add(java.lang.Object)>(r0) 
(assert (not (= (ite var1152 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2200 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2200)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2200!1 String)
(assert (= var2200!1 ""))
(assert true)
(define-const var3416 String (append/672562846 var2200!1 "malformed JUnit 3 test class: ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("malformed JUnit 3 test class: ") 
(declare-const var2200!2 String)
(assert (= var2200!2 (str.++ var2200!1 "malformed JUnit 3 test class: ")))
(assert true)
(define-const var2154 String (append/-1031950772 var3416 (cast-from-var3756-to-var3735 var3520))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r10) 
(declare-const var3416!1 String)
(assert (str.prefixof var3416 var3416!1))
(assert true)
(define-const var1507 String (toString/-2075883882 var2154)) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3443 (Array Int var1380) arr-var1380-init) ; Statement: $r13 = newarray (java.lang.annotation.Annotation)[0] 
(define-const var2487 var3756 (var3756_createSuiteDescription/-819953118 var1507 var3443)) ; Statement: $r15 = staticinvoke <org.junit.runner.Description: org.junit.runner.Description createSuiteDescription(java.lang.String,java.lang.'annotation'.Annotation[])>($r14, $r13) 
;(assert (var1532_add/328494887 var2846 (cast-from-var3756-to-var3735 var2487))) ; Statement: interfaceinvoke r7.<java.util.List: boolean add(java.lang.Object)>($r15) 

(declare-const var2846!1 var1532)
(declare-const var2487!1 var3756)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getChildren/-464815365=([org.junit.runner.Description], java.util.ArrayList), isEmpty/1321303667=([java.util.ArrayList], boolean), toString/1471230080=([org.junit.runner.Description], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3756-to-var3735=([org.junit.runner.Description], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-var1380-init=([], java.lang.annotation.Annotation[]), var3756_createSuiteDescription/-819953118=([java.lang.String, java.lang.annotation.Annotation[]], org.junit.runner.Description), var1532_add/328494887=([java.util.List, java.lang.Object], boolean)}
; {var676=org.junit.experimental.max.MaxCore, var2560=r6, var3756=org.junit.runner.Description, var3520=r10, var3673=r0, var1532=java.util.List, var2846=r7, var2183=java.util.ArrayList, var3611=$r1, var1265=$z0, var433=$r8, var1152=$z2, var2200=$r9, var3416=$r11, var3735=java.lang.Object, var2154=$r12, var1507=$r14, var1380=java.lang.annotation.Annotation, var3443=$r13, var2487=$r15}
; {org.junit.experimental.max.MaxCore=var676, r6=var2560, org.junit.runner.Description=var3756, r10=var3520, r0=var3673, java.util.List=var1532, r7=var2846, java.util.ArrayList=var2183, $r1=var3611, $z0=var1265, $r8=var433, $z2=var1152, $r9=var2200, $r11=var3416, java.lang.Object=var3735, $r12=var2154, $r14=var1507, java.lang.annotation.Annotation=var1380, $r13=var3443, $r15=var2487}
;seq <org.junit.runner.Description: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.junit.experimental.max.MaxCore;	r10 := @parameter0: org.junit.runner.Description;	r0 := @parameter1: org.junit.runner.Description;	r7 := @parameter2: java.util.List;	$r1 = virtualinvoke r0.<org.junit.runner.Description: java.util.ArrayList getChildren()>();	$z0 = virtualinvoke $r1.<java.util.ArrayList: boolean isEmpty()>();	if $z0 == 0 goto $r2 = virtualinvoke r0.<org.junit.runner.Description: java.util.ArrayList getChildren()>();	$r8 = virtualinvoke r0.<org.junit.runner.Description: java.lang.String toString()>();	$z2 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>("warning(junit.framework.TestSuite$1)");	if $z2 == 0 goto interfaceinvoke r7.<java.util.List: boolean add(java.lang.Object)>(r0);	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("malformed JUnit 3 test class: ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r10);	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = newarray (java.lang.annotation.Annotation)[0];	$r15 = staticinvoke <org.junit.runner.Description: org.junit.runner.Description createSuiteDescription(java.lang.String,java.lang.'annotation'.Annotation[])>($r14, $r13);	interfaceinvoke r7.<java.util.List: boolean add(java.lang.Object)>($r15);	goto [?= return];	return
;block_num 4