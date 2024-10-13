(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3469 0)
(declare-sort var2615 0)
(declare-sort var36 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isReference/-1089173962 (var2615) Bool)
(declare-fun cast-from-var3469-to-var2615 (var3469) var2615)
(declare-fun dieOnCircularReference/-991059770 (var2615) void)
(declare-fun getDirectoryScanner/1699680408 (var3469) var36)
(declare-fun getIncludedFiles/1141601209 (var36) (Array Int String))
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-const null-var3469 var3469)
(declare-const var636 var3469) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.AbstractFileSet 
(assert (not (= var636 null-var3469)))
(assert true)
(define-const var103 Bool (isReference/-1089173962 (cast-from-var3469-to-var2615 var636))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.AbstractFileSet: boolean isReference()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.AbstractFileSet: void dieOnCircularReference()>() 
(assert (= (ite var103 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (dieOnCircularReference/-991059770 (cast-from-var3469-to-var2615 var636))) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.AbstractFileSet: void dieOnCircularReference()>() 

(declare-const var636!1 var3469)
(assert true)
(define-const var3709 var36 (getDirectoryScanner/1699680408 var636!1)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.AbstractFileSet: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner getDirectoryScanner()>() 
(assert true)
(define-const var3295 (Array Int String) (getIncludedFiles/1141601209 var3709)) ; Statement: $r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: java.lang.String[] getIncludedFiles()>() 
(define-const var3645 String (String_join/-1520935655 (cast-from-String-to-String ";") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var3295))) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(";", $r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {isReference/-1089173962=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType], boolean), cast-from-var3469-to-var2615=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.AbstractFileSet], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType), dieOnCircularReference/-991059770=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType], void), getDirectoryScanner/1699680408=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.AbstractFileSet], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner), getIncludedFiles/1141601209=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner], java.lang.String[]), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[])}
; {var3469=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.AbstractFileSet, var636=r0, var2615=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType, var103=$z0, var36=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner, var3709=$r1, var3295=$r2, var3645=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.AbstractFileSet=var3469, r0=var636, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType=var2615, $z0=var103, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner=var36, $r1=var3709, $r2=var3295, $r3=var3645}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.AbstractFileSet;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.AbstractFileSet: boolean isReference()>();	if $z0 == 0 goto virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.AbstractFileSet: void dieOnCircularReference()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.AbstractFileSet: void dieOnCircularReference()>();	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.AbstractFileSet: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner getDirectoryScanner()>();	$r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: java.lang.String[] getIncludedFiles()>();	$r3 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(";", $r2);	return $r3
;block_num 2