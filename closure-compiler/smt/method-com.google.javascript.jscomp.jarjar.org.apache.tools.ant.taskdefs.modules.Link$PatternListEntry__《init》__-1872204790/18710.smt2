(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2308 0)
(declare-sort var1879 0)
(declare-sort var1522 0)
(declare-sort var2822 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-1499812533 (var2308) var1879)
(declare-fun <init>/-279557996 (var2822) void)
(declare-fun cast-from-var2308-to-var2822 (var2308) var2822)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun setPattern/-367150307 (var2308 String) void)
(declare-const null-var2308 var2308)
(declare-const null-var1879 var1879)
(declare-const null-String String)
(declare-const var1741 var2308) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry 
(assert (not (= var1741 null-var2308)))
(declare-const var957 var1879) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link 
(assert (not (= var957 null-var1879)))
(declare-const var2239 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2239 null-String)))
(declare-const var1741!1 var2308)
(assert (not (= var1741!1 null-var2308)))
(assert (= (this$0/-1499812533 var1741!1) var957)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link this$0> = r1 
(assert true)
;(assert (<init>/-279557996 (cast-from-var2308-to-var2822 var1741!1))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1741!2 var2308)
(assert true)
(define-const var3253 Bool (startsWith/-1785782452 var2239 "@")) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean startsWith(java.lang.String)>("@") 
 ; Statement: if $z0 == 0 goto virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry: void setPattern(java.lang.String)>(r2) 
(assert (= (ite var3253 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (setPattern/-367150307 var1741!2 var2239)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry: void setPattern(java.lang.String)>(r2) 

(declare-const var1741!3 var2308)
(declare-const var2239!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-1499812533=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link), <init>/-279557996=([java.lang.Object], void), cast-from-var2308-to-var2822=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry], java.lang.Object), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), setPattern/-367150307=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry, java.lang.String], void)}
; {var2308=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry, var1741=r0, var1879=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link, var957=r1, var2239=r2, var1522=null_type, var2822=java.lang.Object, var3253=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry=var2308, r0=var1741, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link=var1879, r1=var957, r2=var2239, null_type=var1522, java.lang.Object=var2822, $z0=var3253}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link;	r2 := @parameter1: java.lang.String;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link this$0> = r1;	specialinvoke r0.<java.lang.Object: void <init>()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean startsWith(java.lang.String)>("@");	if $z0 == 0 goto virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry: void setPattern(java.lang.String)>(r2);	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry: void setPattern(java.lang.String)>(r2);	return
;block_num 3