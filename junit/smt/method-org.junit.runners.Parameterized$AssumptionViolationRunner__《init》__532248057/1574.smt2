(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3478 0)
(declare-sort var3836 0)
(declare-sort var41 0)
(declare-sort var3780 0)
(declare-sort var3222 0)
(declare-sort var1122 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/401620429 (var3222) void)
(declare-fun cast-from-var3478-to-var3222 (var3478) var3222)
(declare-fun getJavaClass/1058844875 (var3836) ClassObject)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1122_createTestDescription/1652157834 (ClassObject String) var1122)
(declare-fun description/-1795787190 (var3478) var1122)
(declare-fun exception/-1795787190 (var3478) var3780)
(declare-const null-var3478 var3478)
(declare-const null-var3836 var3836)
(declare-const null-String String)
(declare-const null-var3780 var3780)
(declare-const var590 var3478) ; Statement: r0 := @this: org.junit.runners.Parameterized$AssumptionViolationRunner 
(assert (not (= var590 null-var3478)))
(declare-const var676 var3836) ; Statement: r1 := @parameter0: org.junit.runners.model.TestClass 
(assert (not (= var676 null-var3836)))
(declare-const var2550 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2550 null-String)))
(declare-const var2593 var3780) ; Statement: r9 := @parameter2: org.junit.internal.AssumptionViolatedException 
(assert (not (= var2593 null-var3780)))
(assert true)
;(assert (<init>/401620429 (cast-from-var3478-to-var3222 var590))) ; Statement: specialinvoke r0.<org.junit.runner.Runner: void <init>()>() 

(declare-const var590!1 var3478)
(assert true)
(define-const var1068 ClassObject (getJavaClass/1058844875 var676)) ; Statement: $r7 = virtualinvoke r1.<org.junit.runners.model.TestClass: java.lang.Class getJavaClass()>() 
(define-const var1460 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1460)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1460!1 String)
(assert (= var1460!1 ""))
(assert true)
(define-const var1052 String (append/672562846 var1460!1 var2550)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1460!2 String)
(assert (= var1460!2 (str.++ var1460!1 var2550)))
(assert true)
(define-const var3605 String (append/672562846 var1052 "() assumption violation")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("() assumption violation") 
(declare-const var1052!1 String)
(assert (= var1052!1 (str.++ var1052 "() assumption violation")))
(assert true)
(define-const var2808 String (toString/-2075883882 var3605)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1971 var1122 (var1122_createTestDescription/1652157834 var1068 var2808)) ; Statement: $r8 = staticinvoke <org.junit.runner.Description: org.junit.runner.Description createTestDescription(java.lang.Class,java.lang.String)>($r7, $r6) 
(declare-const var590!2 var3478)
(assert (not (= var590!2 null-var3478)))
(assert (= (description/-1795787190 var590!2) var1971)) ; Statement: r0.<org.junit.runners.Parameterized$AssumptionViolationRunner: org.junit.runner.Description description> = $r8 
(declare-const var590!3 var3478)
(assert (not (= var590!3 null-var3478)))
(assert (= (exception/-1795787190 var590!3) var2593)) ; Statement: r0.<org.junit.runners.Parameterized$AssumptionViolationRunner: org.junit.internal.AssumptionViolatedException exception> = r9 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/401620429=([org.junit.runner.Runner], void), cast-from-var3478-to-var3222=([org.junit.runners.Parameterized$AssumptionViolationRunner], org.junit.runner.Runner), getJavaClass/1058844875=([org.junit.runners.model.TestClass], java.lang.Class), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1122_createTestDescription/1652157834=([java.lang.Class, java.lang.String], org.junit.runner.Description), description/-1795787190=([org.junit.runners.Parameterized$AssumptionViolationRunner], org.junit.runner.Description), exception/-1795787190=([org.junit.runners.Parameterized$AssumptionViolationRunner], org.junit.internal.AssumptionViolatedException)}
; {var3478=org.junit.runners.Parameterized$AssumptionViolationRunner, var590=r0, var3836=org.junit.runners.model.TestClass, var676=r1, var2550=r3, var41=null_type, var3780=org.junit.internal.AssumptionViolatedException, var2593=r9, var3222=org.junit.runner.Runner, var1068=$r7, var1460=$r2, var1052=$r4, var3605=$r5, var2808=$r6, var1122=org.junit.runner.Description, var1971=$r8}
; {org.junit.runners.Parameterized$AssumptionViolationRunner=var3478, r0=var590, org.junit.runners.model.TestClass=var3836, r1=var676, r3=var2550, null_type=var41, org.junit.internal.AssumptionViolatedException=var3780, r9=var2593, org.junit.runner.Runner=var3222, $r7=var1068, $r2=var1460, $r4=var1052, $r5=var3605, $r6=var2808, org.junit.runner.Description=var1122, $r8=var1971}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.junit.runners.Parameterized$AssumptionViolationRunner;	r1 := @parameter0: org.junit.runners.model.TestClass;	r3 := @parameter1: java.lang.String;	r9 := @parameter2: org.junit.internal.AssumptionViolatedException;	specialinvoke r0.<org.junit.runner.Runner: void <init>()>();	$r7 = virtualinvoke r1.<org.junit.runners.model.TestClass: java.lang.Class getJavaClass()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("() assumption violation");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = staticinvoke <org.junit.runner.Description: org.junit.runner.Description createTestDescription(java.lang.Class,java.lang.String)>($r7, $r6);	r0.<org.junit.runners.Parameterized$AssumptionViolationRunner: org.junit.runner.Description description> = $r8;	r0.<org.junit.runners.Parameterized$AssumptionViolationRunner: org.junit.internal.AssumptionViolatedException exception> = r9;	return
;block_num 1