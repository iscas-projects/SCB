(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1891 0)
(declare-sort var2316 0)
(declare-sort var3261 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun queuedLine/-1439871475 (var1891) String)
(declare-fun processLine/535383611 (var3261 String Int) void)
(declare-fun cast-from-var1891-to-var3261 (var1891) var3261)
(declare-const null-var1891 var1891)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1494 var1891) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$JavadocOutputStream 
(assert (not (= var1494 null-var1891)))
(declare-const var3089 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3089 null-String)))
(declare-const var2779 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2779 null-Int)))
(assert true)
(define-const var3933 Bool (contains/1009244746 var3089 (cast-from-String-to-String "warning"))) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("warning") 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var3933 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if i0 != 2 goto $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$JavadocOutputStream: java.lang.String queuedLine> 
(assert (not (= var2779 2))) ; Cond: i0 != 2 
(define-const var3452 String (queuedLine/-1439871475 var1494)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$JavadocOutputStream: java.lang.String queuedLine> 
 ; Statement: if $r2 == null goto specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream: void processLine(java.lang.String,int)>(r0, i0) 
(assert (= var3452 null-String)) ; Cond: $r2 == null 
(assert true)
;(assert (processLine/535383611 (cast-from-var1891-to-var3261 var1494) var3089 var2779)) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream: void processLine(java.lang.String,int)>(r0, i0) 

(declare-const var1494!1 var1891)
(declare-const var3089!1 String)
(declare-const var2779!1 Int)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), queuedLine/-1439871475=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$JavadocOutputStream], java.lang.String), processLine/535383611=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream, java.lang.String, int], void), cast-from-var1891-to-var3261=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$JavadocOutputStream], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream)}
; {var1891=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$JavadocOutputStream, var1494=r1, var3089=r0, var2316=null_type, var2779=i0, var3933=$z0, var3452=$r2, var3261=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$JavadocOutputStream=var1891, r1=var1494, r0=var3089, null_type=var2316, i0=var2779, $z0=var3933, $r2=var3452, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream=var3261}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$JavadocOutputStream;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("warning");	if $z0 == 0 goto (branch);	if i0 != 2 goto $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$JavadocOutputStream: java.lang.String queuedLine>;	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$JavadocOutputStream: java.lang.String queuedLine>;	if $r2 == null goto specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream: void processLine(java.lang.String,int)>(r0, i0);	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream: void processLine(java.lang.String,int)>(r0, i0);	return
;block_num 5