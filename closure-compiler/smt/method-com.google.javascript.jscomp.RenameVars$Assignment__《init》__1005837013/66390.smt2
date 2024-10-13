(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1131 0)
(declare-sort var2741 0)
(declare-sort var1850 0)
(declare-sort var1819 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-1762182710 (var1131) var2741)
(declare-fun <init>/-279557996 (var1819) void)
(declare-fun cast-from-var1131-to-var1819 (var1131) var1819)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun isLocal/-1762182710 (var1131) Bool)
(declare-fun oldName/-1762182710 (var1131) String)
(declare-fun newName/-1762182710 (var1131) String)
(declare-fun count/-1762182710 (var1131) Int)
(declare-fun assignmentCount/1685743079 (var2741) Int)
(declare-fun orderOfOccurrence/-1762182710 (var1131) Int)
(declare-const null-var1131 var1131)
(declare-const null-var2741 var2741)
(declare-const null-String String)
(declare-const var3774 var1131) ; Statement: r0 := @this: com.google.javascript.jscomp.RenameVars$Assignment 
(assert (not (= var3774 null-var1131)))
(declare-const var3365 var2741) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.RenameVars 
(assert (not (= var3365 null-var2741)))
(declare-const var2616 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2616 null-String)))
(declare-const var3774!1 var1131)
(assert (not (= var3774!1 null-var1131)))
(assert (= (this$0/-1762182710 var3774!1) var3365)) ; Statement: r0.<com.google.javascript.jscomp.RenameVars$Assignment: com.google.javascript.jscomp.RenameVars this$0> = r1 
(assert true)
;(assert (<init>/-279557996 (cast-from-var1131-to-var1819 var3774!1))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3774!2 var1131)
(assert true)
(define-const var2493 Bool (startsWith/-1785782452 var2616 "L ")) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean startsWith(java.lang.String)>("L ") 
(declare-const var3774!3 var1131)
(assert (not (= var3774!3 null-var1131)))
(assert (= (isLocal/-1762182710 var3774!3) var2493)) ; Statement: r0.<com.google.javascript.jscomp.RenameVars$Assignment: boolean isLocal> = $z0 
(declare-const var3774!4 var1131)
(assert (not (= var3774!4 null-var1131)))
(assert (= (oldName/-1762182710 var3774!4) var2616)) ; Statement: r0.<com.google.javascript.jscomp.RenameVars$Assignment: java.lang.String oldName> = r2 
(declare-const var3774!5 var1131)
(assert (not (= var3774!5 null-var1131)))
(assert (= (newName/-1762182710 var3774!5) null-String)) ; Statement: r0.<com.google.javascript.jscomp.RenameVars$Assignment: java.lang.String newName> = null 
(declare-const var3774!6 var1131)
(assert (not (= var3774!6 null-var1131)))
(assert (= (count/-1762182710 var3774!6) 0)) ; Statement: r0.<com.google.javascript.jscomp.RenameVars$Assignment: int count> = 0 
(define-const var2488 Int (assignmentCount/1685743079 var3365)) ; Statement: $i0 = r1.<com.google.javascript.jscomp.RenameVars: int assignmentCount> 
(define-const var225 Int (+ var2488 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var3365!1 var2741)
(assert (not (= var3365!1 null-var2741)))
(assert (= (assignmentCount/1685743079 var3365!1) var225)) ; Statement: r1.<com.google.javascript.jscomp.RenameVars: int assignmentCount> = $i1 
(declare-const var3774!7 var1131)
(assert (not (= var3774!7 null-var1131)))
(assert (= (orderOfOccurrence/-1762182710 var3774!7) var2488)) ; Statement: r0.<com.google.javascript.jscomp.RenameVars$Assignment: int orderOfOccurrence> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-1762182710=([com.google.javascript.jscomp.RenameVars$Assignment], com.google.javascript.jscomp.RenameVars), <init>/-279557996=([java.lang.Object], void), cast-from-var1131-to-var1819=([com.google.javascript.jscomp.RenameVars$Assignment], java.lang.Object), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), isLocal/-1762182710=([com.google.javascript.jscomp.RenameVars$Assignment], boolean), oldName/-1762182710=([com.google.javascript.jscomp.RenameVars$Assignment], java.lang.String), newName/-1762182710=([com.google.javascript.jscomp.RenameVars$Assignment], java.lang.String), count/-1762182710=([com.google.javascript.jscomp.RenameVars$Assignment], int), assignmentCount/1685743079=([com.google.javascript.jscomp.RenameVars], int), orderOfOccurrence/-1762182710=([com.google.javascript.jscomp.RenameVars$Assignment], int)}
; {var1131=com.google.javascript.jscomp.RenameVars$Assignment, var3774=r0, var2741=com.google.javascript.jscomp.RenameVars, var3365=r1, var2616=r2, var1850=null_type, var1819=java.lang.Object, var2493=$z0, var2488=$i0, var225=$i1}
; {com.google.javascript.jscomp.RenameVars$Assignment=var1131, r0=var3774, com.google.javascript.jscomp.RenameVars=var2741, r1=var3365, r2=var2616, null_type=var1850, java.lang.Object=var1819, $z0=var2493, $i0=var2488, $i1=var225}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.RenameVars$Assignment;	r1 := @parameter0: com.google.javascript.jscomp.RenameVars;	r2 := @parameter1: java.lang.String;	r0.<com.google.javascript.jscomp.RenameVars$Assignment: com.google.javascript.jscomp.RenameVars this$0> = r1;	specialinvoke r0.<java.lang.Object: void <init>()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean startsWith(java.lang.String)>("L ");	r0.<com.google.javascript.jscomp.RenameVars$Assignment: boolean isLocal> = $z0;	r0.<com.google.javascript.jscomp.RenameVars$Assignment: java.lang.String oldName> = r2;	r0.<com.google.javascript.jscomp.RenameVars$Assignment: java.lang.String newName> = null;	r0.<com.google.javascript.jscomp.RenameVars$Assignment: int count> = 0;	$i0 = r1.<com.google.javascript.jscomp.RenameVars: int assignmentCount>;	$i1 = $i0 + 1;	r1.<com.google.javascript.jscomp.RenameVars: int assignmentCount> = $i1;	r0.<com.google.javascript.jscomp.RenameVars$Assignment: int orderOfOccurrence> = $i0;	return
;block_num 1