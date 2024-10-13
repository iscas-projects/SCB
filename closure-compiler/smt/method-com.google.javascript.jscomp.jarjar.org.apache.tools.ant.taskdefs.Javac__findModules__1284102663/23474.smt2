(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var784 0)
(declare-sort var550 0)
(declare-sort var3420 0)
(declare-sort var1073 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1073_findModules/836266772 (var784 String String var3420) void)
(declare-const null-var784 var784)
(declare-const null-String String)
(declare-const null-var3420 var3420)
(declare-const var784-separatorChar Int)
(declare-const var366 var784) ; Statement: r3 := @parameter0: java.io.File 
(assert (not (= var366 null-var784)))
(declare-const var2611 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var2611 null-String)))
(declare-const var222 var3420) ; Statement: r4 := @parameter2: java.util.Map 
(assert (not (= var222 null-var3420)))
(define-const var1077 Int var784-separatorChar) ; Statement: $c0 = <java.io.File: char separatorChar> 
(assert true)
(define-const var2341 String (replace/1524665721 var2611 47 var1077)) ; Statement: $r0 = virtualinvoke r9.<java.lang.String: java.lang.String replace(char,char)>(47, $c0) 
(define-const var2179 Int var784-separatorChar) ; Statement: $c1 = <java.io.File: char separatorChar> 
(assert true)
(define-const var458 String (replace/1524665721 var2341 92 var2179)) ; Statement: r10 = virtualinvoke $r0.<java.lang.String: java.lang.String replace(char,char)>(92, $c1) 
(assert true)
(define-const var3483 Int (indexOf/-1209756239 var458 "*")) ; Statement: i2 = virtualinvoke r10.<java.lang.String: int indexOf(java.lang.String)>("*") 
(define-const var3161 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i15 = (int) -1 
 ; Statement: if i2 != $i15 goto (branch) 
(assert (not (not (= var3483 var3161)))) ; Negate: Cond: i2 != $i15  
;(assert (var1073_findModules/836266772 var366 var458 null-String var222)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: void findModules(java.io.File,java.lang.String,java.lang.String,java.util.Map)>(r3, r10, null, r4) 

(declare-const var366!1 var784)
(declare-const var458!1 String)
(declare-const var1719 var550)
(declare-const var222!1 var3420)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/1524665721=([java.lang.String, char, char], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), var1073_findModules/836266772=([java.io.File, java.lang.String, java.lang.String, java.util.Map], void)}
; {var784=java.io.File, var366=r3, var2611=r9, var550=null_type, var3420=java.util.Map, var222=r4, var1077=$c0, var2341=$r0, var2179=$c1, var458=r10, var3483=i2, var3161=$i15, var1073=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac, var1719=null}
; {java.io.File=var784, r3=var366, r9=var2611, null_type=var550, java.util.Map=var3420, r4=var222, $c0=var1077, $r0=var2341, $c1=var2179, r10=var458, i2=var3483, $i15=var3161, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac=var1073, null=var1719}
;seq <java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 2,"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r3 := @parameter0: java.io.File;	r9 := @parameter1: java.lang.String;	r4 := @parameter2: java.util.Map;	$c0 = <java.io.File: char separatorChar>;	$r0 = virtualinvoke r9.<java.lang.String: java.lang.String replace(char,char)>(47, $c0);	$c1 = <java.io.File: char separatorChar>;	r10 = virtualinvoke $r0.<java.lang.String: java.lang.String replace(char,char)>(92, $c1);	i2 = virtualinvoke r10.<java.lang.String: int indexOf(java.lang.String)>("*");	$i15 = (int) -1;	if i2 != $i15 goto (branch);	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: void findModules(java.io.File,java.lang.String,java.lang.String,java.util.Map)>(r3, r10, null, r4);	return
;block_num 2