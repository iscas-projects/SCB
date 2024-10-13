(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1776 0)
(declare-sort var751 0)
(declare-sort var1344 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getValue/-1445752687 (var1344) String)
(declare-fun cast-from-var751-to-var1344 (var751) var1344)
(declare-fun eolString/-134376592 (var1776) String)
(declare-const null-var1776 var1776)
(declare-const null-var751 var751)
(declare-const var1147 var1776) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat 
(assert (not (= var1147 null-var1776)))
(declare-const var698 var751) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$CrLf 
(assert (not (= var698 null-var751)))
(assert true)
(define-const var1370 String (getValue/-1445752687 (cast-from-var751-to-var1344 var698))) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$CrLf: java.lang.String getValue()>() 
(define-const var2701 String "cr") ; Statement: $r2 = "cr" 
(assert true)
(define-const var2891 Bool (= var2701 var1370)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: java.lang.String eolString> = "\r" 
(assert (not (= (ite var2891 1 0) 0))) ; Cond: $z0 != 0 
(declare-const var1147!1 var1776)
(assert (not (= var1147!1 null-var1776)))
(assert (= (eolString/-134376592 var1147!1) "\r")) ; Statement: r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: java.lang.String eolString> = "\r" 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var751-to-var1344=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$CrLf], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), eolString/-134376592=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat], java.lang.String)}
; {var1776=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat, var1147=r3, var751=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$CrLf, var698=r0, var1344=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var1370=r1, var2701=$r2, var2891=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat=var1776, r3=var1147, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$CrLf=var751, r0=var698, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var1344, r1=var1370, $r2=var2701, $z0=var2891}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$CrLf;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$CrLf: java.lang.String getValue()>();	$r2 = "cr";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 != 0 goto r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: java.lang.String eolString> = "\r";	r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: java.lang.String eolString> = "\r";	goto [?= return];	return
;block_num 3