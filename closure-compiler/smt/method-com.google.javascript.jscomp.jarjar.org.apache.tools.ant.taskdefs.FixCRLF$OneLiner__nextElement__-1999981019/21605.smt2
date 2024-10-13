(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var350 0)
(declare-sort var811 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasMoreElements/2135422251 (var350) Bool)
(declare-fun var811-init () var811)
(declare-fun line/1258177498 (var350) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun eolStr/1258177498 (var350) String)
(declare-fun substring/1996688697 (String Int) String)
(declare-fun <init>/1850496897 (var811 var350 String String) void)
(declare-fun nextLine/250710694 (var350) void)
(declare-const null-var350 var350)
(declare-const var593 var350) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner 
(assert (not (= var593 null-var350)))
(assert true)
(define-const var235 Bool (hasMoreElements/2135422251 var593)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: boolean hasMoreElements()>() 
 ; Statement: if $z0 != 0 goto $r1 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine 
(assert (not (= (ite var235 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1057 var811 var811-init) ; Statement: $r1 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine 
(define-const var1142 String (line/1258177498 var593)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: java.lang.StringBuffer line> 
(assert true)
(define-const var3714 String (toString/-222306083 var1142)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.String toString()>() 
(define-const var683 String (eolStr/1258177498 var593)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: java.lang.StringBuffer eolStr> 
(assert true)
(define-const var1465 String (substring/1996688697 var683 0)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.String substring(int)>(0) 
(assert true)
;(assert (<init>/1850496897 var1057 var593 var3714 var1465)) ; Statement: specialinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner,java.lang.String,java.lang.String)>(r0, $r5, $r4) 

(declare-const var1057!1 var811)
(declare-const var593!1 var350)
(declare-const var3714!1 String)
(declare-const var1465!1 String)
(assert true)
;(assert (nextLine/250710694 var593!1)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: void nextLine()>() 

(declare-const var593!2 var350)
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {hasMoreElements/2135422251=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner], boolean), var811-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine), line/1258177498=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), eolStr/1258177498=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner], java.lang.StringBuffer), substring/1996688697=([java.lang.StringBuffer, int], java.lang.String), <init>/1850496897=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner, java.lang.String, java.lang.String], void), nextLine/250710694=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner], void)}
; {var350=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner, var593=r0, var235=$z0, var811=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine, var1057=$r1, var1142=$r2, var3714=$r5, var683=$r3, var1465=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner=var350, r0=var593, $z0=var235, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine=var811, $r1=var1057, $r2=var1142, $r5=var3714, $r3=var683, $r4=var1465}
;seq <java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.String substring(int)>
;cnt {"<java.lang.StringBuffer: java.lang.String toString()>": 1,"<java.lang.StringBuffer: java.lang.String substring(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: boolean hasMoreElements()>();	if $z0 != 0 goto $r1 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine;	$r1 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: java.lang.StringBuffer line>;	$r5 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.String toString()>();	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: java.lang.StringBuffer eolStr>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.String substring(int)>(0);	specialinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner,java.lang.String,java.lang.String)>(r0, $r5, $r4);	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: void nextLine()>();	return $r1
;block_num 2