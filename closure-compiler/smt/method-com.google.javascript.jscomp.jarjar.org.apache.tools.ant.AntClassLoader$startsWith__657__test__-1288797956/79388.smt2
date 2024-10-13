(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2936 0)
(declare-sort var2481 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var2481-to-String (var2481) String)
(declare-fun cap0/-1542389312 (var2936) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var2936 var2936)
(declare-const null-var2481 var2481)
(declare-const var1950 var2936) ; Statement: $r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader$startsWith__657 
(assert (not (= var1950 null-var2936)))
(declare-const var2845 var2481) ; Statement: $r1 := @parameter0: java.lang.Object 
(assert (not (= var2845 null-var2481)))
(define-const var1280 String (cast-from-var2481-to-String var2845)) ; Statement: $r2 = (java.lang.String) $r1 
(define-const var371 String (cap0/-1542389312 var1950)) ; Statement: $r3 = $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader$startsWith__657: java.lang.String cap0> 
(assert true)
(define-const var3806 Bool (startsWith/-1785782452 var371 var1280)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean startsWith(java.lang.String)>($r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var2481-to-String=([java.lang.Object], java.lang.String), cap0/-1542389312=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader$startsWith__657], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var2936=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader$startsWith__657, var1950=$r0, var2481=java.lang.Object, var2845=$r1, var1280=$r2, var371=$r3, var3806=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader$startsWith__657=var2936, $r0=var1950, java.lang.Object=var2481, $r1=var2845, $r2=var1280, $r3=var371, $z0=var3806}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts $r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader$startsWith__657;	$r1 := @parameter0: java.lang.Object;	$r2 = (java.lang.String) $r1;	$r3 = $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader$startsWith__657: java.lang.String cap0>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean startsWith(java.lang.String)>($r2);	return $z0
;block_num 1