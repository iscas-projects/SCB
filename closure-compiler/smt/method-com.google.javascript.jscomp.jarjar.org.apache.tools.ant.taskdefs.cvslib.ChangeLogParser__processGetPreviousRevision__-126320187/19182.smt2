(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3425 0)
(declare-sort var743 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun previousRevision/1087169286 (var3425) String)
(declare-fun saveEntry/1191947372 (var3425) void)
(declare-fun revision/1087169286 (var3425) String)
(declare-fun status/1087169286 (var3425) Int)
(declare-const null-var3425 var3425)
(declare-const null-String String)
(declare-const var295 var3425) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser 
(assert (not (= var295 null-var3425)))
(declare-const var79 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var79 null-String)))
(assert true)
(define-const var3032 Bool (startsWith/-1785782452 var79 "revision ")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("revision ") 
 ; Statement: if $z0 != 0 goto $r2 = "revision " 
(assert (not (= (ite var3032 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2194 String "revision ") ; Statement: $r2 = "revision " 
(assert true)
(define-const var1376 Int (length/-134980193 var2194)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
(assert (and true (and (>= var1376 0) (>= (str.len var79) var1376))))
(define-const var1124 String (substring/850833817 var79 var1376)) ; Statement: $r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i0) 
(declare-const var295!1 var3425)
(assert (not (= var295!1 null-var3425)))
(assert (= (previousRevision/1087169286 var295!1) var1124)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: java.lang.String previousRevision> = $r3 
(assert true)
;(assert (saveEntry/1191947372 var295!1)) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: void saveEntry()>() 

(declare-const var295!2 var3425)
(define-const var2139 String (previousRevision/1087169286 var295!2)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: java.lang.String previousRevision> 
(declare-const var295!3 var3425)
(assert (not (= var295!3 null-var3425)))
(assert (= (revision/1087169286 var295!3) var2139)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: java.lang.String revision> = $r4 
(declare-const var295!4 var3425)
(assert (not (= var295!4 null-var3425)))
(assert (= (status/1087169286 var295!4) 2)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: int status> = 2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String), previousRevision/1087169286=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser], java.lang.String), saveEntry/1191947372=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser], void), revision/1087169286=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser], java.lang.String), status/1087169286=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser], int)}
; {var3425=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser, var295=r1, var79=r0, var743=null_type, var3032=$z0, var2194=$r2, var1376=$i0, var1124=$r3, var2139=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser=var3425, r1=var295, r0=var79, null_type=var743, $z0=var3032, $r2=var2194, $i0=var1376, $r3=var1124, $r4=var2139}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("revision ");	if $z0 != 0 goto $r2 = "revision ";	$r2 = "revision ";	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	$r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i0);	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: java.lang.String previousRevision> = $r3;	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: void saveEntry()>();	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: java.lang.String previousRevision>;	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: java.lang.String revision> = $r4;	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: int status> = 2;	return
;block_num 2