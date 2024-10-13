(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var26 0)
(declare-sort var23 0)
(declare-sort var1523 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var26 var26)
(declare-const null-var23 var23)
(declare-const null-String String)
(declare-const var3057 var26) ; Statement: r8 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagDiff 
(assert (not (= var3057 null-var26)))
(declare-const var648 var23) ; Statement: r7 := @parameter0: java.util.List 
(assert (not (= var648 null-var23)))
(declare-const var598 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var598 null-String)))
(assert true)
(define-const var1423 Int (indexOf/-1209756239 var598 " changed from revision ")) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(" changed from revision ") 
(define-const var1917 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 != $i7 goto r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (not (= var1423 var1917)))) ; Negate: Cond: i0 != $i7  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var26=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagDiff, var3057=r8, var23=java.util.List, var648=r7, var598=r0, var1523=null_type, var1423=i0, var1917=$i7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagDiff=var26, r8=var3057, java.util.List=var23, r7=var648, r0=var598, null_type=var1523, i0=var1423, $i7=var1917}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r8 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagDiff;	r7 := @parameter0: java.util.List;	r0 := @parameter1: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(" changed from revision ");	$i7 = (int) -1;	if i0 != $i7 goto r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	return 0
;block_num 2