(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var804 0)
(declare-sort var3519 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun valueAttributeUsed/-696888527 (var804) Bool)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var804 var804)
(declare-const null-String String)
(declare-const var1758 var804) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property 
(assert (not (= var1758 null-var804)))
(declare-const var725 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var725 null-String)))
(define-const var3588 Bool (valueAttributeUsed/-696888527 var1758)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: boolean valueAttributeUsed> 
 ; Statement: if $z0 != 0 goto $r1 = virtualinvoke r8.<java.lang.String: java.lang.String trim()>() 
(assert (not (= (ite var3588 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var2300 String (trim/-847153721 var725)) ; Statement: $r1 = virtualinvoke r8.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var1914 Bool (isEmpty/-1285796103 var2300)) ; Statement: $z1 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto return 
(assert (not (= (ite var1914 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {valueAttributeUsed/-696888527=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property], boolean), trim/-847153721=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var804=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property, var1758=r0, var725=r8, var3519=null_type, var3588=$z0, var2300=$r1, var1914=$z1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property=var804, r0=var1758, r8=var725, null_type=var3519, $z0=var3588, $r1=var2300, $z1=var1914}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property;	r8 := @parameter0: java.lang.String;	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: boolean valueAttributeUsed>;	if $z0 != 0 goto $r1 = virtualinvoke r8.<java.lang.String: java.lang.String trim()>();	$r1 = virtualinvoke r8.<java.lang.String: java.lang.String trim()>();	$z1 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z1 != 0 goto return;	return
;block_num 3