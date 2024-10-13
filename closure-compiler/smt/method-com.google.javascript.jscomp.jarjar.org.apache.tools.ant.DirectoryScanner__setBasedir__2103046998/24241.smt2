(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3313 0)
(declare-sort var3843 0)
(declare-sort var564 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var564-init () var564)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun <init>/-1681595970 (var564 String) void)
(declare-fun setBasedir/-1912279095 (var3313 var564) void)
(declare-const null-var3313 var3313)
(declare-const null-String String)
(declare-const var564-separatorChar Int)
(declare-const var402 var3313) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner 
(assert (not (= var402 null-var3313)))
(declare-const var2131 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2131 null-String)))
 ; Statement: if r1 != null goto $r4 = new java.io.File 
(assert (not (= var2131 null-String))) ; Cond: r1 != null 
(define-const var441 var564 var564-init) ; Statement: $r4 = new java.io.File 
(define-const var3153 Int var564-separatorChar) ; Statement: $c0 = <java.io.File: char separatorChar> 
(assert true)
(define-const var1426 String (replace/1524665721 var2131 47 var3153)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(47, $c0) 
(define-const var2391 Int var564-separatorChar) ; Statement: $c1 = <java.io.File: char separatorChar> 
(assert true)
(define-const var3504 String (replace/1524665721 var1426 92 var2391)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(char,char)>(92, $c1) 
(assert true)
;(assert (<init>/-1681595970 var441 var3504)) ; Statement: specialinvoke $r4.<java.io.File: void <init>(java.lang.String)>($r3) 

(declare-const var441!1 var564)
(declare-const var3504!1 String)
(assert true) ; Non Conditional
(assert true)
;(assert (setBasedir/-1912279095 var402 var441!1)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: void setBasedir(java.io.File)>($r4) 

(declare-const var402!1 var3313)
(declare-const var441!2 var564)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var564-init=([], java.io.File), replace/1524665721=([java.lang.String, char, char], java.lang.String), <init>/-1681595970=([java.io.File, java.lang.String], void), setBasedir/-1912279095=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner, java.io.File], void)}
; {var3313=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner, var402=r0, var2131=r1, var3843=null_type, var564=java.io.File, var441=$r4, var3153=$c0, var1426=$r2, var2391=$c1, var3504=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner=var3313, r0=var402, r1=var2131, null_type=var3843, java.io.File=var564, $r4=var441, $c0=var3153, $r2=var1426, $c1=var2391, $r3=var3504}
;seq <java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner;	r1 := @parameter0: java.lang.String;	if r1 != null goto $r4 = new java.io.File;	$r4 = new java.io.File;	$c0 = <java.io.File: char separatorChar>;	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(47, $c0);	$c1 = <java.io.File: char separatorChar>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(char,char)>(92, $c1);	specialinvoke $r4.<java.io.File: void <init>(java.lang.String)>($r3);	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: void setBasedir(java.io.File)>($r4);	return
;block_num 3