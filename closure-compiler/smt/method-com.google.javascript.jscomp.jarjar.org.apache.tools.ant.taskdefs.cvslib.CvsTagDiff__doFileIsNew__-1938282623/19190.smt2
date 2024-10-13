(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3518 0)
(declare-sort var3341 0)
(declare-sort var784 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3518 var3518)
(declare-const null-var3341 var3341)
(declare-const null-String String)
(declare-const var1379 var3518) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagDiff 
(assert (not (= var1379 null-var3518)))
(declare-const var977 var3341) ; Statement: r3 := @parameter0: java.util.List 
(assert (not (= var977 null-var3341)))
(declare-const var2403 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2403 null-String)))
(assert true)
(define-const var3271 Int (indexOf/-1209756239 var2403 " is new;")) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(" is new;") 
(define-const var2555 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if i0 != $i5 goto r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (not (= var3271 var2555)))) ; Negate: Cond: i0 != $i5  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var3518=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagDiff, var1379=r4, var3341=java.util.List, var977=r3, var2403=r0, var784=null_type, var3271=i0, var2555=$i5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagDiff=var3518, r4=var1379, java.util.List=var3341, r3=var977, r0=var2403, null_type=var784, i0=var3271, $i5=var2555}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagDiff;	r3 := @parameter0: java.util.List;	r0 := @parameter1: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(" is new;");	$i5 = (int) -1;	if i0 != $i5 goto r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	return 0
;block_num 2