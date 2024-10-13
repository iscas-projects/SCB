(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var181 0)
(declare-sort var1205 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var1205-to-String (var1205) String)
(declare-fun cap0/-1542389310 (var181) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var181 var181)
(declare-const null-var1205 var1205)
(declare-const var1125 var181) ; Statement: $r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader$startsWith__659 
(assert (not (= var1125 null-var181)))
(declare-const var1726 var1205) ; Statement: $r1 := @parameter0: java.lang.Object 
(assert (not (= var1726 null-var1205)))
(define-const var3601 String (cast-from-var1205-to-String var1726)) ; Statement: $r2 = (java.lang.String) $r1 
(define-const var1275 String (cap0/-1542389310 var1125)) ; Statement: $r3 = $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader$startsWith__659: java.lang.String cap0> 
(assert true)
(define-const var2088 Bool (startsWith/-1785782452 var1275 var3601)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean startsWith(java.lang.String)>($r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1205-to-String=([java.lang.Object], java.lang.String), cap0/-1542389310=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader$startsWith__659], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var181=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader$startsWith__659, var1125=$r0, var1205=java.lang.Object, var1726=$r1, var3601=$r2, var1275=$r3, var2088=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader$startsWith__659=var181, $r0=var1125, java.lang.Object=var1205, $r1=var1726, $r2=var3601, $r3=var1275, $z0=var2088}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts $r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader$startsWith__659;	$r1 := @parameter0: java.lang.Object;	$r2 = (java.lang.String) $r1;	$r3 = $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader$startsWith__659: java.lang.String cap0>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean startsWith(java.lang.String)>($r2);	return $z0
;block_num 1