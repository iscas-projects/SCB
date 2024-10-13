(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2805 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun line/-459107486 (var2805) String)
(declare-fun length/-1112840705 (String) Int)
(declare-const null-var2805 var2805)
(declare-const null-Int Int)
(declare-const var3638 var2805) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream 
(assert (not (= var3638 null-var2805)))
(declare-const var2323 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2323 null-Int)))
(define-const var2967 Int (cast-from-Int-to-Int var2323)) ; Statement: c1 = (char) i0 
(define-const var959 Int (cast-from-Int-to-Int var2967)) ; Statement: $i3 = (int) c1 
 ; Statement: if $i3 == 13 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream: java.lang.StringBuffer line> 
(assert (= var959 13)) ; Cond: $i3 == 13 
(define-const var2467 String (line/-459107486 var3638)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream: java.lang.StringBuffer line> 
(assert true)
(define-const var45 Int (length/-1112840705 var2467)) ; Statement: $i2 = virtualinvoke $r1.<java.lang.StringBuffer: int length()>() 
 ; Statement: if $i2 <= 0 goto return 
(assert (<= var45 0)) ; Cond: $i2 <= 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], char), line/-459107486=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream], java.lang.StringBuffer), length/-1112840705=([java.lang.StringBuffer], int)}
; {var2805=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream, var3638=r0, var2323=i0, var2967=c1, var959=$i3, var2467=$r1, var45=$i2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream=var2805, r0=var3638, i0=var2323, c1=var2967, $i3=var959, $r1=var2467, $i2=var45}
;seq <java.lang.StringBuffer: int length()>
;cnt {"<java.lang.StringBuffer: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream;	i0 := @parameter0: int;	c1 = (char) i0;	$i3 = (int) c1;	if $i3 == 13 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream: java.lang.StringBuffer line>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream: java.lang.StringBuffer line>;	$i2 = virtualinvoke $r1.<java.lang.StringBuffer: int length()>();	if $i2 <= 0 goto return;	return
;block_num 3