(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2218 0)
(declare-sort var1456 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun encoding/-68748554 (var2218) String)
(declare-const null-var2218 var2218)
(declare-const null-String String)
(declare-const var3787 var2218) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand 
(assert (not (= var3787 null-var2218)))
(declare-const var3317 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3317 null-String)))
(define-const var1887 String "native-encoding") ; Statement: $r0 = "native-encoding" 
(assert true)
(define-const var994 Bool (= var1887 var3317)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.lang.String encoding> = r2 
(assert (= (ite var994 1 0) 0)) ; Cond: $z0 == 0 
(declare-const var3787!1 var2218)
(assert (not (= var3787!1 null-var2218)))
(assert (= (encoding/-68748554 var3787!1) var3317)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.lang.String encoding> = r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {encoding/-68748554=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand], java.lang.String)}
; {var2218=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand, var3787=r1, var3317=r2, var1456=null_type, var1887=$r0, var994=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand=var2218, r1=var3787, r2=var3317, null_type=var1456, $r0=var1887, $z0=var994}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand;	r2 := @parameter0: java.lang.String;	$r0 = "native-encoding";	$z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.lang.String encoding> = r2;	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.lang.String encoding> = r2;	return
;block_num 2