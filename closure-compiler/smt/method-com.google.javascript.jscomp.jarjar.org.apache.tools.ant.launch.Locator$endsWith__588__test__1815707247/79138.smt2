(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var815 0)
(declare-sort var740 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var740-to-String (var740) String)
(declare-fun cap0/89701613 (var815) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-var815 var815)
(declare-const null-var740 var740)
(declare-const var3505 var815) ; Statement: $r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Locator$endsWith__588 
(assert (not (= var3505 null-var815)))
(declare-const var2035 var740) ; Statement: $r1 := @parameter0: java.lang.Object 
(assert (not (= var2035 null-var740)))
(define-const var2030 String (cast-from-var740-to-String var2035)) ; Statement: $r2 = (java.lang.String) $r1 
(define-const var3749 String (cap0/89701613 var3505)) ; Statement: $r3 = $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Locator$endsWith__588: java.lang.String cap0> 
(assert true)
(define-const var167 Bool (endsWith/985337093 var3749 var2030)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean endsWith(java.lang.String)>($r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var740-to-String=([java.lang.Object], java.lang.String), cap0/89701613=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Locator$endsWith__588], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var815=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Locator$endsWith__588, var3505=$r0, var740=java.lang.Object, var2035=$r1, var2030=$r2, var3749=$r3, var167=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Locator$endsWith__588=var815, $r0=var3505, java.lang.Object=var740, $r1=var2035, $r2=var2030, $r3=var3749, $z0=var167}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts $r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Locator$endsWith__588;	$r1 := @parameter0: java.lang.Object;	$r2 = (java.lang.String) $r1;	$r3 = $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Locator$endsWith__588: java.lang.String cap0>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean endsWith(java.lang.String)>($r2);	return $z0
;block_num 1