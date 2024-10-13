(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2953 0)
(declare-sort var2205 0)
(declare-sort var2058 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-1670109418 (var2953) var2205)
(declare-fun var2205_access$1400/210068563 (var2205) String)
(declare-const null-var2953 var2953)
(declare-const null-String String)
(declare-const var1214 var2953) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$ConcatResource 
(assert (not (= var1214 null-var2953)))
(define-const var1558 var2205 (this$0/-1670109418 var1214)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$ConcatResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat this$0> 
(define-const var2910 String (var2205_access$1400/210068563 var1558)) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: java.lang.String access$1400(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat)>($r1) 
 ; Statement: if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$ConcatResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat this$0> 
(assert (not (= var2910 null-String))) ; Cond: $r2 != null 
(define-const var3691 var2205 (this$0/-1670109418 var1214)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$ConcatResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat this$0> 
(define-const var222 String (var2205_access$1400/210068563 var3691)) ; Statement: $r10 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: java.lang.String access$1400(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat)>($r3) 
(assert true) ; Non Conditional
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-1670109418=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$ConcatResource], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat), var2205_access$1400/210068563=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat], java.lang.String)}
; {var2953=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$ConcatResource, var1214=r0, var2205=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat, var1558=$r1, var2910=$r2, var2058=null_type, var3691=$r3, var222=$r10}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$ConcatResource=var2953, r0=var1214, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat=var2205, $r1=var1558, $r2=var2910, null_type=var2058, $r3=var3691, $r10=var222}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$ConcatResource;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$ConcatResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat this$0>;	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: java.lang.String access$1400(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat)>($r1);	if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$ConcatResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat this$0>;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$ConcatResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat this$0>;	$r10 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: java.lang.String access$1400(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat)>($r3);	return $r10
;block_num 3