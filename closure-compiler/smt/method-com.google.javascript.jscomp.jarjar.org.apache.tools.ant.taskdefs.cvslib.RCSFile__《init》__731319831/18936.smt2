(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var857 0)
(declare-sort var2922 0)
(declare-sort var3521 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3521) void)
(declare-fun cast-from-var857-to-var3521 (var857) var3521)
(declare-fun name/1093961809 (var857) String)
(declare-fun revision/1093961809 (var857) String)
(declare-const null-var857 var857)
(declare-const null-String String)
(declare-const var3383 var857) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.RCSFile 
(assert (not (= var3383 null-var857)))
(declare-const var3502 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3502 null-String)))
(declare-const var2075 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2075 null-String)))
(declare-const var908 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var908 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var857-to-var3521 var3383))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3383!1 var857)
(declare-const var3383!2 var857)
(assert (not (= var3383!2 null-var857)))
(assert (= (name/1093961809 var3383!2) var3502)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.RCSFile: java.lang.String name> = r1 
(declare-const var3383!3 var857)
(assert (not (= var3383!3 null-var857)))
(assert (= (revision/1093961809 var3383!3) var2075)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.RCSFile: java.lang.String revision> = r2 
(assert true)
(define-const var1509 Bool (= var2075 var908)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var1509 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var857-to-var3521=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.RCSFile], java.lang.Object), name/1093961809=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.RCSFile], java.lang.String), revision/1093961809=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.RCSFile], java.lang.String)}
; {var857=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.RCSFile, var3383=r0, var3502=r1, var2922=null_type, var2075=r2, var908=r3, var3521=java.lang.Object, var1509=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.RCSFile=var857, r0=var3383, r1=var3502, null_type=var2922, r2=var2075, r3=var908, java.lang.Object=var3521, $z0=var1509}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.RCSFile;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.RCSFile: java.lang.String name> = r1;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.RCSFile: java.lang.String revision> = r2;	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 != 0 goto return;	return
;block_num 2