(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3512 0)
(declare-sort var430 0)
(declare-sort var1484 0)
(declare-sort var61 0)
(declare-sort var1687 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-1499812533 (var3512) var430)
(declare-fun <init>/-279557996 (var61) void)
(declare-fun cast-from-var3512-to-var61 (var3512) var61)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var1687-init () var1687)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun <init>/-1681595970 (var1687 String) void)
(declare-fun setListFile/-8180688 (var3512 var1687) void)
(declare-const null-var3512 var3512)
(declare-const null-var430 var430)
(declare-const null-String String)
(declare-const var520 var3512) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry 
(assert (not (= var520 null-var3512)))
(declare-const var198 var430) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link 
(assert (not (= var198 null-var430)))
(declare-const var2577 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2577 null-String)))
(declare-const var520!1 var3512)
(assert (not (= var520!1 null-var3512)))
(assert (= (this$0/-1499812533 var520!1) var198)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link this$0> = r1 
(assert true)
;(assert (<init>/-279557996 (cast-from-var3512-to-var61 var520!1))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var520!2 var3512)
(assert true)
(define-const var2163 Bool (startsWith/-1785782452 var2577 "@")) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean startsWith(java.lang.String)>("@") 
 ; Statement: if $z0 == 0 goto virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry: void setPattern(java.lang.String)>(r2) 
(assert (not (= (ite var2163 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2737 var1687 var1687-init) ; Statement: $r3 = new java.io.File 
(assert (and true (and (>= 1 0) (>= (str.len var2577) 1))))
(define-const var1668 String (substring/850833817 var2577 1)) ; Statement: $r4 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int)>(1) 
(assert true)
;(assert (<init>/-1681595970 var2737 var1668)) ; Statement: specialinvoke $r3.<java.io.File: void <init>(java.lang.String)>($r4) 

(declare-const var2737!1 var1687)
(declare-const var1668!1 String)
(assert true)
;(assert (setListFile/-8180688 var520!2 var2737!1)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry: void setListFile(java.io.File)>($r3) 

(declare-const var520!3 var3512)
(declare-const var2737!2 var1687)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-1499812533=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link), <init>/-279557996=([java.lang.Object], void), cast-from-var3512-to-var61=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry], java.lang.Object), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var1687-init=([], java.io.File), substring/850833817=([java.lang.String, int], java.lang.String), <init>/-1681595970=([java.io.File, java.lang.String], void), setListFile/-8180688=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry, java.io.File], void)}
; {var3512=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry, var520=r0, var430=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link, var198=r1, var2577=r2, var1484=null_type, var61=java.lang.Object, var2163=$z0, var1687=java.io.File, var2737=$r3, var1668=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry=var3512, r0=var520, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link=var430, r1=var198, r2=var2577, null_type=var1484, java.lang.Object=var61, $z0=var2163, java.io.File=var1687, $r3=var2737, $r4=var1668}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link;	r2 := @parameter1: java.lang.String;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link this$0> = r1;	specialinvoke r0.<java.lang.Object: void <init>()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean startsWith(java.lang.String)>("@");	if $z0 == 0 goto virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry: void setPattern(java.lang.String)>(r2);	$r3 = new java.io.File;	$r4 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int)>(1);	specialinvoke $r3.<java.io.File: void <init>(java.lang.String)>($r4);	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry: void setListFile(java.io.File)>($r3);	goto [?= return];	return
;block_num 3