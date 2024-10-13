(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2525 0)
(declare-sort var2059 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAbsolutePath/-802773300 (var2059) String)
(declare-fun normalize/-959805877 (var2525 String) var2059)
(declare-const null-var2525 var2525)
(declare-const null-var2059 var2059)
(declare-const var2459 var2525) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils 
(assert (not (= var2459 null-var2525)))
(declare-const var3996 var2059) ; Statement: r1 := @parameter0: java.io.File 
(assert (not (= var3996 null-var2059)))
(declare-const var949 var2059) ; Statement: r4 := @parameter1: java.io.File 
(assert (not (= var949 null-var2059)))
(assert true)
(define-const var3759 String (getAbsolutePath/-802773300 var3996)) ; Statement: $r2 = virtualinvoke r1.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var2050 var2059 (normalize/-959805877 var2459 var3759)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: java.io.File normalize(java.lang.String)>($r2) 
(assert true)
(define-const var470 String (getAbsolutePath/-802773300 var2050)) ; Statement: $r8 = virtualinvoke $r3.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var1939 String (getAbsolutePath/-802773300 var949)) ; Statement: $r5 = virtualinvoke r4.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var1591 var2059 (normalize/-959805877 var2459 var1939)) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: java.io.File normalize(java.lang.String)>($r5) 
(assert true)
(define-const var188 String (getAbsolutePath/-802773300 var1591)) ; Statement: $r7 = virtualinvoke $r6.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var785 Bool (= var470 var188)) ; Statement: $z0 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>($r7) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getAbsolutePath/-802773300=([java.io.File], java.lang.String), normalize/-959805877=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, java.lang.String], java.io.File)}
; {var2525=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, var2459=r0, var2059=java.io.File, var3996=r1, var949=r4, var3759=$r2, var2050=$r3, var470=$r8, var1939=$r5, var1591=$r6, var188=$r7, var785=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils=var2525, r0=var2459, java.io.File=var2059, r1=var3996, r4=var949, $r2=var3759, $r3=var2050, $r8=var470, $r5=var1939, $r6=var1591, $r7=var188, $z0=var785}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils;	r1 := @parameter0: java.io.File;	r4 := @parameter1: java.io.File;	$r2 = virtualinvoke r1.<java.io.File: java.lang.String getAbsolutePath()>();	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: java.io.File normalize(java.lang.String)>($r2);	$r8 = virtualinvoke $r3.<java.io.File: java.lang.String getAbsolutePath()>();	$r5 = virtualinvoke r4.<java.io.File: java.lang.String getAbsolutePath()>();	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: java.io.File normalize(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.io.File: java.lang.String getAbsolutePath()>();	$z0 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>($r7);	return $z0
;block_num 1