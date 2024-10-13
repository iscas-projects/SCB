(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2439 0)
(declare-sort var703 0)
(declare-sort var1858 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDirectoryScanner/1699680408 (var1858) var703)
(declare-fun cast-from-var2439-to-var1858 (var2439) var1858)
(declare-fun getIncludedDirectories/-2143714395 (var703) (Array Int String))
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-const null-var2439 var2439)
(declare-const var1175 var2439) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DirSet 
(assert (not (= var1175 null-var2439)))
(assert true)
(define-const var2028 var703 (getDirectoryScanner/1699680408 (cast-from-var2439-to-var1858 var1175))) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DirSet: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner getDirectoryScanner()>() 
(assert true)
(define-const var585 (Array Int String) (getIncludedDirectories/-2143714395 var2028)) ; Statement: $r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: java.lang.String[] getIncludedDirectories()>() 
(define-const var1965 String (String_join/-1520935655 (cast-from-String-to-String ";") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var585))) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(";", $r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getDirectoryScanner/1699680408=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.AbstractFileSet], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner), cast-from-var2439-to-var1858=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DirSet], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.AbstractFileSet), getIncludedDirectories/-2143714395=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner], java.lang.String[]), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[])}
; {var2439=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DirSet, var1175=r0, var703=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner, var1858=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.AbstractFileSet, var2028=$r1, var585=$r2, var1965=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DirSet=var2439, r0=var1175, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner=var703, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.AbstractFileSet=var1858, $r1=var2028, $r2=var585, $r3=var1965}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DirSet;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DirSet: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner getDirectoryScanner()>();	$r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: java.lang.String[] getIncludedDirectories()>();	$r3 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(";", $r2);	return $r3
;block_num 1