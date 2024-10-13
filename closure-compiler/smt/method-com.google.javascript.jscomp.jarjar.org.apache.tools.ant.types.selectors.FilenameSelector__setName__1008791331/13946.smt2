(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1361 0)
(declare-sort var3685 0)
(declare-sort var3129 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun pattern/1541239828 (var1361) String)
(declare-const null-var1361 var1361)
(declare-const null-String String)
(declare-const var3129-separatorChar Int)
(declare-const var3129-separator String)
(declare-const var3590 var1361) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.FilenameSelector 
(assert (not (= var3590 null-var1361)))
(declare-const var3799 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var3799 null-String)))
(define-const var2150 Int var3129-separatorChar) ; Statement: $c0 = <java.io.File: char separatorChar> 
(assert true)
(define-const var2363 String (replace/1524665721 var3799 47 var2150)) ; Statement: $r0 = virtualinvoke r6.<java.lang.String: java.lang.String replace(char,char)>(47, $c0) 
(define-const var3000 Int var3129-separatorChar) ; Statement: $c1 = <java.io.File: char separatorChar> 
(assert true)
(define-const var222 String (replace/1524665721 var2363 92 var3000)) ; Statement: r7 = virtualinvoke $r0.<java.lang.String: java.lang.String replace(char,char)>(92, $c1) 
(define-const var1791 String var3129-separator) ; Statement: $r1 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var1008 Bool (endsWith/985337093 var222 var1791)) ; Statement: $z0 = virtualinvoke r7.<java.lang.String: boolean endsWith(java.lang.String)>($r1) 
 ; Statement: if $z0 == 0 goto r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.FilenameSelector: java.lang.String pattern> = r7 
(assert (= (ite var1008 1 0) 0)) ; Cond: $z0 == 0 
(declare-const var3590!1 var1361)
(assert (not (= var3590!1 null-var1361)))
(assert (= (pattern/1541239828 var3590!1) var222)) ; Statement: r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.FilenameSelector: java.lang.String pattern> = r7 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/1524665721=([java.lang.String, char, char], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), pattern/1541239828=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.FilenameSelector], java.lang.String)}
; {var1361=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.FilenameSelector, var3590=r2, var3799=r6, var3685=null_type, var3129=java.io.File, var2150=$c0, var2363=$r0, var3000=$c1, var222=r7, var1791=$r1, var1008=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.FilenameSelector=var1361, r2=var3590, r6=var3799, null_type=var3685, java.io.File=var3129, $c0=var2150, $r0=var2363, $c1=var3000, r7=var222, $r1=var1791, $z0=var1008}
;seq <java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 2,"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.FilenameSelector;	r6 := @parameter0: java.lang.String;	$c0 = <java.io.File: char separatorChar>;	$r0 = virtualinvoke r6.<java.lang.String: java.lang.String replace(char,char)>(47, $c0);	$c1 = <java.io.File: char separatorChar>;	r7 = virtualinvoke $r0.<java.lang.String: java.lang.String replace(char,char)>(92, $c1);	$r1 = <java.io.File: java.lang.String separator>;	$z0 = virtualinvoke r7.<java.lang.String: boolean endsWith(java.lang.String)>($r1);	if $z0 == 0 goto r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.FilenameSelector: java.lang.String pattern> = r7;	r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.FilenameSelector: java.lang.String pattern> = r7;	return
;block_num 2