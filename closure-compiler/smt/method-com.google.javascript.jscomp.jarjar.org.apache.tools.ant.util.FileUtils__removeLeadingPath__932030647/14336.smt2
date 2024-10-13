(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3483 0)
(declare-sort var2713 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAbsolutePath/-802773300 (var2713) String)
(declare-fun normalize/-959805877 (var3483 String) var2713)
(declare-const null-var3483 var3483)
(declare-const null-var2713 var2713)
(declare-const var3011 var3483) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils 
(assert (not (= var3011 null-var3483)))
(declare-const var2953 var2713) ; Statement: r1 := @parameter0: java.io.File 
(assert (not (= var2953 null-var2713)))
(declare-const var3248 var2713) ; Statement: r4 := @parameter1: java.io.File 
(assert (not (= var3248 null-var2713)))
(assert true)
(define-const var973 String (getAbsolutePath/-802773300 var2953)) ; Statement: $r2 = virtualinvoke r1.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var3867 var2713 (normalize/-959805877 var3011 var973)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: java.io.File normalize(java.lang.String)>($r2) 
(assert true)
(define-const var3774 String (getAbsolutePath/-802773300 var3867)) ; Statement: r13 = virtualinvoke $r3.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var3390 String (getAbsolutePath/-802773300 var3248)) ; Statement: $r5 = virtualinvoke r4.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var164 var2713 (normalize/-959805877 var3011 var3390)) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: java.io.File normalize(java.lang.String)>($r5) 
(assert true)
(define-const var1784 String (getAbsolutePath/-802773300 var164)) ; Statement: r7 = virtualinvoke $r6.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var1747 Bool (= var3774 var1784)) ; Statement: $z0 = virtualinvoke r13.<java.lang.String: boolean equals(java.lang.Object)>(r7) 
 ; Statement: if $z0 == 0 goto $r8 = <java.io.File: java.lang.String separator> 
(assert (not (= (ite var1747 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {getAbsolutePath/-802773300=([java.io.File], java.lang.String), normalize/-959805877=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, java.lang.String], java.io.File)}
; {var3483=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, var3011=r0, var2713=java.io.File, var2953=r1, var3248=r4, var973=$r2, var3867=$r3, var3774=r13, var3390=$r5, var164=$r6, var1784=r7, var1747=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils=var3483, r0=var3011, java.io.File=var2713, r1=var2953, r4=var3248, $r2=var973, $r3=var3867, r13=var3774, $r5=var3390, $r6=var164, r7=var1784, $z0=var1747}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils;	r1 := @parameter0: java.io.File;	r4 := @parameter1: java.io.File;	$r2 = virtualinvoke r1.<java.io.File: java.lang.String getAbsolutePath()>();	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: java.io.File normalize(java.lang.String)>($r2);	r13 = virtualinvoke $r3.<java.io.File: java.lang.String getAbsolutePath()>();	$r5 = virtualinvoke r4.<java.io.File: java.lang.String getAbsolutePath()>();	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: java.io.File normalize(java.lang.String)>($r5);	r7 = virtualinvoke $r6.<java.io.File: java.lang.String getAbsolutePath()>();	$z0 = virtualinvoke r13.<java.lang.String: boolean equals(java.lang.Object)>(r7);	if $z0 == 0 goto $r8 = <java.io.File: java.lang.String separator>;	return ""
;block_num 2