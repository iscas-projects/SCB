(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2052 0)
(declare-sort var3465 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun uri/-418217843 (var2052) String)
(declare-const null-var2052 var2052)
(declare-const null-String String)
(declare-const var278 var2052) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AntlibDefinition 
(assert (not (= var278 null-var2052)))
(declare-const var124 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var124 null-String)))
(define-const var1480 String "antlib:org.apache.tools.ant") ; Statement: $r0 = "antlib:org.apache.tools.ant" 
(assert true)
(define-const var3213 Bool (= var1480 var124)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r4.<java.lang.String: boolean startsWith(java.lang.String)>("ant:") 
(assert (= (ite var3213 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1430 Bool (startsWith/-1785782452 var124 "ant:")) ; Statement: $z1 = virtualinvoke r4.<java.lang.String: boolean startsWith(java.lang.String)>("ant:") 
 ; Statement: if $z1 == 0 goto r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AntlibDefinition: java.lang.String uri> = r4 
(assert (= (ite var1430 1 0) 0)) ; Cond: $z1 == 0 
(declare-const var278!1 var2052)
(assert (not (= var278!1 null-var2052)))
(assert (= (uri/-418217843 var278!1) var124)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AntlibDefinition: java.lang.String uri> = r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), uri/-418217843=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AntlibDefinition], java.lang.String)}
; {var2052=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AntlibDefinition, var278=r1, var124=r4, var3465=null_type, var1480=$r0, var3213=$z0, var1430=$z1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AntlibDefinition=var2052, r1=var278, r4=var124, null_type=var3465, $r0=var1480, $z0=var3213, $z1=var1430}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AntlibDefinition;	r4 := @parameter0: java.lang.String;	$r0 = "antlib:org.apache.tools.ant";	$z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z0 == 0 goto $z1 = virtualinvoke r4.<java.lang.String: boolean startsWith(java.lang.String)>("ant:");	$z1 = virtualinvoke r4.<java.lang.String: boolean startsWith(java.lang.String)>("ant:");	if $z1 == 0 goto r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AntlibDefinition: java.lang.String uri> = r4;	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AntlibDefinition: java.lang.String uri> = r4;	return
;block_num 3