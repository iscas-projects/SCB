(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var888 0)
(declare-sort var290 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var290-init () var290)
(declare-fun <init>/1864341934 (var290 String) void)
(declare-const null-String String)
(declare-const var645 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var645 null-String)))
(assert true)
(define-const var1455 Bool (contains/1009244746 var645 (cast-from-String-to-String "\u0022"))) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("\"") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("\'") 
(assert (not (= (ite var1455 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2485 Bool (contains/1009244746 var645 (cast-from-String-to-String "\u0027"))) ; Statement: $z5 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("\'") 
 ; Statement: if $z5 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (not (= (ite var2485 1 0) 0))) ; Negate: Cond: $z5 == 0  
(define-const var566 var290 var290-init) ; Statement: $r6 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/1864341934 var566 "Can\u0027t handle single and double quotes in same argument")) ; Statement: specialinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>("Can\'t handle single and double quotes in same argument") 

(declare-const var566!1 var290)
(declare-const var3097 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var290-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var645=r0, var888=null_type, var1455=$z0, var2485=$z5, var290=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var566=$r6, var3097="Can\'t handle single and double quotes in same argument"}
; {r0=var645, null_type=var888, $z0=var1455, $z5=var2485, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var290, $r6=var566, "Can\'t handle single and double quotes in same argument"=var3097}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>;	<java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 2}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("\"");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("\'");	$z5 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("\'");	if $z5 == 0 goto $r1 = new java.lang.StringBuilder;	$r6 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>("Can\'t handle single and double quotes in same argument");	throw $r6
;block_num 3