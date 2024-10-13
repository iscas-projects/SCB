(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2403 0)
(declare-sort var388 0)
(declare-sort var576 0)
(declare-sort var2937 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var388-init () var388)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun var2937-init () var2937)
(declare-fun <init>/1864341934 (var2937 String) void)
(declare-const null-var2403 var2403)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-Int Int)
(declare-const var388-separatorChar Int)
(declare-const null-var576 var576)
(declare-const var3177 var2403) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main 
(assert (not (= var3177 null-var2403)))
(declare-const var2556 (Array Int String)) ; Statement: r2 := @parameter0: java.lang.String[] 
(assert (not (= var2556 null-__Array__Int__String__)))
(declare-const var3904 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3904 null-Int)))
(define-const var761 var388 var388-init) ; Statement: $r1 = new java.io.File 
(define-const var3326 Int (+ var3904 1)) ; Statement: i2 = i1 + 1 
(assert true) ; Non Conditional
(define-const var3643 String (select var2556 var3326)) ; Statement: $r3 = r2[i2] 
(assert true) ; Non Conditional
(define-const var2113 Int var388-separatorChar) ; Statement: $c0 = <java.io.File: char separatorChar> 
(assert true) ; Non Conditional
(assert true)
(define-const var1718 String (replace/1524665721 var3643 47 var2113)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String replace(char,char)>(47, $c0) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3996 var576) ; Statement: $r5 := @caughtexception 
(assert (not (= var3996 null-var576)))
(define-const var4 var2937 var2937-init) ; Statement: $r6 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/1864341934 var4 "You must specify a buildfile when using the -buildfile argument")) ; Statement: specialinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>("You must specify a buildfile when using the -buildfile argument") 

(declare-const var4!1 var2937)
(declare-const var1554 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var388-init=([], java.io.File), replace/1524665721=([java.lang.String, char, char], java.lang.String), var2937-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var2403=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main, var3177=r0, var2556=r2, var3904=i1, var388=java.io.File, var761=$r1, var3326=i2, var3643=$r3, var2113=$c0, var1718=$r4, var576=java.lang.ArrayIndexOutOfBoundsException, var3996=$r5, var2937=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var4=$r6, var1554="You must specify a buildfile when using the -buildfile argument"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main=var2403, r0=var3177, r2=var2556, i1=var3904, java.io.File=var388, $r1=var761, i2=var3326, $r3=var3643, $c0=var2113, $r4=var1718, java.lang.ArrayIndexOutOfBoundsException=var576, $r5=var3996, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2937, $r6=var4, "You must specify a buildfile when using the -buildfile argument"=var1554}
;seq <java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main;	r2 := @parameter0: java.lang.String[];	i1 := @parameter1: int;	$r1 = new java.io.File;	i2 = i1 + 1;	$r3 = r2[i2];	$c0 = <java.io.File: char separatorChar>;	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String replace(char,char)>(47, $c0);	$r5 := @caughtexception;	$r6 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>("You must specify a buildfile when using the -buildfile argument");	throw $r6
;block_num 5