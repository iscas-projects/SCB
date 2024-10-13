(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var512 0)
(declare-sort var981 0)
(declare-sort var2951 0)
(declare-sort var3404 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2951!class ClassObject)
(declare-fun equals/-1650223740 (var3404 var3404) Bool)
(declare-fun cast-from-ClassObject-to-var3404 (ClassObject) var3404)
(declare-const null-var512 var512)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var1820 var512) ; Statement: r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper 
(assert (not (= var1820 null-var512)))
(declare-const var778 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var778 null-String)))
(declare-const var804 ClassObject) ; Statement: r3 := @parameter1: java.lang.Class 
(assert (not (= var804 null-ClassObject)))
(define-const var2543 String "setLocation") ; Statement: $r1 = "setLocation" 
(assert true)
(define-const var1695 Bool (= var2543 var778)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "setTaskType" 
(assert (not (= (ite var1695 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var775 ClassObject var2951!class) ; Statement: $r5 = class "Lcom/google/javascript/jscomp/jarjar/org/apache/tools/ant/Location;" 
(assert true)
(define-const var2454 Bool (equals/-1650223740 (cast-from-ClassObject-to-var3404 var775) (cast-from-ClassObject-to-var3404 var804))) ; Statement: $z3 = virtualinvoke $r5.<java.lang.Object: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z3 != 0 goto $z4 = 1 
(assert (not (= (ite var2454 1 0) 0))) ; Cond: $z3 != 0 
(define-const var3612 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= return $z4] 
(assert true) ; Non Conditional
 ; Statement: return $z4 
(check-sat)
(get-model)
(get-unsat-core)
; {equals/-1650223740=([java.lang.Object, java.lang.Object], boolean), cast-from-ClassObject-to-var3404=([java.lang.Class], java.lang.Object)}
; {var512=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper, var1820=r6, var778=r0, var981=null_type, var804=r3, var2543=$r1, var1695=$z0, var2951=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var775=$r5, var3404=java.lang.Object, var2454=$z3, var3612=$z4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper=var512, r6=var1820, r0=var778, null_type=var981, r3=var804, $r1=var2543, $z0=var1695, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var2951, $r5=var775, java.lang.Object=var3404, $z3=var2454, $z4=var3612}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper;	r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.Class;	$r1 = "setLocation";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = "setTaskType";	$r5 = class "Lcom/google/javascript/jscomp/jarjar/org/apache/tools/ant/Location;";	$z3 = virtualinvoke $r5.<java.lang.Object: boolean equals(java.lang.Object)>(r3);	if $z3 != 0 goto $z4 = 1;	$z4 = 1;	goto [?= return $z4];	return $z4
;block_num 4