(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2000 0)
(declare-sort var890 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAbsolutePath/-802773300 (var890) String)
(declare-fun normalize/-959805877 (var2000 String) var890)
(declare-const null-var2000 var2000)
(declare-const null-var890 var890)
(declare-const var312 var2000) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils 
(assert (not (= var312 null-var2000)))
(declare-const var846 var890) ; Statement: r1 := @parameter0: java.io.File 
(assert (not (= var846 null-var890)))
(declare-const var982 var890) ; Statement: r4 := @parameter1: java.io.File 
(assert (not (= var982 null-var890)))
(assert true)
(define-const var1397 String (getAbsolutePath/-802773300 var846)) ; Statement: $r2 = virtualinvoke r1.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var2254 var890 (normalize/-959805877 var312 var1397)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: java.io.File normalize(java.lang.String)>($r2) 
(assert true)
(define-const var3440 String (getAbsolutePath/-802773300 var2254)) ; Statement: r25 = virtualinvoke $r3.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var3374 String (getAbsolutePath/-802773300 var982)) ; Statement: $r5 = virtualinvoke r4.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var1181 var890 (normalize/-959805877 var312 var3374)) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: java.io.File normalize(java.lang.String)>($r5) 
(assert true)
(define-const var1728 String (getAbsolutePath/-802773300 var1181)) ; Statement: r7 = virtualinvoke $r6.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var1652 Bool (= var3440 var1728)) ; Statement: $z0 = virtualinvoke r25.<java.lang.String: boolean equals(java.lang.Object)>(r7) 
 ; Statement: if $z0 == 0 goto $r8 = <java.io.File: java.lang.String separator> 
(assert (not (= (ite var1652 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {getAbsolutePath/-802773300=([java.io.File], java.lang.String), normalize/-959805877=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, java.lang.String], java.io.File)}
; {var2000=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, var312=r0, var890=java.io.File, var846=r1, var982=r4, var1397=$r2, var2254=$r3, var3440=r25, var3374=$r5, var1181=$r6, var1728=r7, var1652=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils=var2000, r0=var312, java.io.File=var890, r1=var846, r4=var982, $r2=var1397, $r3=var2254, r25=var3440, $r5=var3374, $r6=var1181, r7=var1728, $z0=var1652}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils;	r1 := @parameter0: java.io.File;	r4 := @parameter1: java.io.File;	$r2 = virtualinvoke r1.<java.io.File: java.lang.String getAbsolutePath()>();	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: java.io.File normalize(java.lang.String)>($r2);	r25 = virtualinvoke $r3.<java.io.File: java.lang.String getAbsolutePath()>();	$r5 = virtualinvoke r4.<java.io.File: java.lang.String getAbsolutePath()>();	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: java.io.File normalize(java.lang.String)>($r5);	r7 = virtualinvoke $r6.<java.io.File: java.lang.String getAbsolutePath()>();	$z0 = virtualinvoke r25.<java.lang.String: boolean equals(java.lang.Object)>(r7);	if $z0 == 0 goto $r8 = <java.io.File: java.lang.String separator>;	return 1
;block_num 2