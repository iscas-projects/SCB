(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1216 0)
(declare-sort var953 0)
(declare-sort var3964 0)
(declare-sort var1243 0)
(declare-sort var665 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3964!class ClassObject)
(declare-fun loadClass/1078547942 (var1216 String) ClassObject)
(declare-fun asSubclass/128872389 (ClassObject ClassObject) ClassObject)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun getDeclaredConstructor/-1271866026 (ClassObject (Array Int ClassObject)) var1243)
(declare-fun arr-var665-init () (Array Int var665))
(declare-fun newInstance/-156294837 (var1243 (Array Int var665)) var665)
(declare-fun cast-from-var665-to-var3964 (var665) var3964)
(declare-fun liaison/1286477936 (var1216) var3964)
(declare-const null-var1216 var1216)
(declare-const null-String String)
(declare-const var3577 var1216) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess 
(assert (not (= var3577 null-var1216)))
(declare-const var3410 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3410 null-String)))
(define-const var3506 String "trax") ; Statement: $r1 = "trax" 
(assert true)
(define-const var1028 Bool (= var3506 var3410)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r3 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: java.lang.Class loadClass(java.lang.String)>(r0) 
(assert (= (ite var1028 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1771 ClassObject (loadClass/1078547942 var3577 var3410)) ; Statement: $r3 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: java.lang.Class loadClass(java.lang.String)>(r0) 
(assert true)
(define-const var2438 ClassObject (asSubclass/128872389 var1771 var3964!class)) ; Statement: r4 = virtualinvoke $r3.<java.lang.Class: java.lang.Class asSubclass(java.lang.Class)>(class "Lcom/google/javascript/jscomp/jarjar/org/apache/tools/ant/taskdefs/XSLTLiaison;") 
(define-const var363 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r5 = newarray (java.lang.Class)[0] 
(assert true)
(define-const var2387 var1243 (getDeclaredConstructor/-1271866026 var2438 var363)) ; Statement: $r7 = virtualinvoke r4.<java.lang.Class: java.lang.reflect.Constructor getDeclaredConstructor(java.lang.Class[])>($r5) 
(define-const var2257 (Array Int var665) arr-var665-init) ; Statement: $r6 = newarray (java.lang.Object)[0] 
(assert true)
(define-const var2249 var665 (newInstance/-156294837 var2387 var2257)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.reflect.Constructor: java.lang.Object newInstance(java.lang.Object[])>($r6) 
(define-const var3469 var3964 (cast-from-var665-to-var3964 var2249)) ; Statement: $r9 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTLiaison) $r8 
(declare-const var3577!1 var1216)
(assert (not (= var3577!1 null-var1216)))
(assert (= (liaison/1286477936 var3577!1) var3469)) ; Statement: r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTLiaison liaison> = $r9 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {loadClass/1078547942=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess, java.lang.String], java.lang.Class), asSubclass/128872389=([java.lang.Class, java.lang.Class], java.lang.Class), arr-ClassObject-init=([], java.lang.Class[]), getDeclaredConstructor/-1271866026=([java.lang.Class, java.lang.Class[]], java.lang.reflect.Constructor), arr-var665-init=([], java.lang.Object[]), newInstance/-156294837=([java.lang.reflect.Constructor, java.lang.Object[]], java.lang.Object), cast-from-var665-to-var3964=([java.lang.Object], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTLiaison), liaison/1286477936=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTLiaison)}
; {var1216=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess, var3577=r2, var3410=r0, var953=null_type, var3506=$r1, var1028=$z0, var1771=$r3, var3964=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTLiaison, var2438=r4, var363=$r5, var1243=java.lang.reflect.Constructor, var2387=$r7, var665=java.lang.Object, var2257=$r6, var2249=$r8, var3469=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess=var1216, r2=var3577, r0=var3410, null_type=var953, $r1=var3506, $z0=var1028, $r3=var1771, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTLiaison=var3964, r4=var2438, $r5=var363, java.lang.reflect.Constructor=var1243, $r7=var2387, java.lang.Object=var665, $r6=var2257, $r8=var2249, $r9=var3469}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess;	r0 := @parameter0: java.lang.String;	$r1 = "trax";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r3 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: java.lang.Class loadClass(java.lang.String)>(r0);	$r3 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: java.lang.Class loadClass(java.lang.String)>(r0);	r4 = virtualinvoke $r3.<java.lang.Class: java.lang.Class asSubclass(java.lang.Class)>(class "Lcom/google/javascript/jscomp/jarjar/org/apache/tools/ant/taskdefs/XSLTLiaison;");	$r5 = newarray (java.lang.Class)[0];	$r7 = virtualinvoke r4.<java.lang.Class: java.lang.reflect.Constructor getDeclaredConstructor(java.lang.Class[])>($r5);	$r6 = newarray (java.lang.Object)[0];	$r8 = virtualinvoke $r7.<java.lang.reflect.Constructor: java.lang.Object newInstance(java.lang.Object[])>($r6);	$r9 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTLiaison) $r8;	r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTLiaison liaison> = $r9;	return
;block_num 3