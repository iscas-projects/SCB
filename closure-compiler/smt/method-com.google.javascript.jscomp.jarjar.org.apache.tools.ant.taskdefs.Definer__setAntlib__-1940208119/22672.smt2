(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var400 0)
(declare-sort var1132 0)
(declare-sort var2373 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun definerSet/723307835 (var400) Bool)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var2373-init () var2373)
(declare-fun <init>/1864341934 (var2373 String) void)
(declare-const null-var400 var400)
(declare-const null-String String)
(declare-const var469 var400) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer 
(assert (not (= var469 null-var400)))
(declare-const var1948 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1948 null-String)))
(define-const var3749 Bool (definerSet/723307835 var469)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: boolean definerSet> 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("antlib:") 
(assert (= (ite var3749 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2160 Bool (startsWith/-1785782452 var1948 "antlib:")) ; Statement: $z1 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("antlib:") 
 ; Statement: if $z1 != 0 goto virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: void setURI(java.lang.String)>(r1) 
(assert (not (not (= (ite var2160 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var3363 var2373 var2373-init) ; Statement: $r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/1864341934 var3363 "Invalid antlib attribute - it must start with antlib:")) ; Statement: specialinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>("Invalid antlib attribute - it must start with antlib:") 

(declare-const var3363!1 var2373)
(declare-const var2010 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {definerSet/723307835=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer], boolean), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var2373-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var400=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer, var469=r0, var1948=r1, var1132=null_type, var3749=$z0, var2160=$z1, var2373=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3363=$r9, var2010="Invalid antlib attribute - it must start with antlib:"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer=var400, r0=var469, r1=var1948, null_type=var1132, $z0=var3749, $z1=var2160, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2373, $r9=var3363, "Invalid antlib attribute - it must start with antlib:"=var2010}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer;	r1 := @parameter0: java.lang.String;	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: boolean definerSet>;	if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("antlib:");	$z1 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("antlib:");	if $z1 != 0 goto virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: void setURI(java.lang.String)>(r1);	$r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>("Invalid antlib attribute - it must start with antlib:");	throw $r9
;block_num 3