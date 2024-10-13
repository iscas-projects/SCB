(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1116 0)
(declare-sort var3894 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-const null-var1116 var1116)
(declare-const null-String String)
(declare-const var701 var1116) ; Statement: r9 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc 
(assert (not (= var701 null-var1116)))
(declare-const var2147 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2147 null-String)))
(declare-const var1790 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1790 null-String)))
(assert true)
(define-const var169 Int (indexOf/-1209756239 var2147 "function loadFrames() {")) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("function loadFrames() {") 
 ; Statement: if i0 < 0 goto return r0 
(assert (< var169 0)) ; Cond: i0 < 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int)}
; {var1116=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc, var701=r9, var2147=r0, var3894=null_type, var1790=r3, var169=i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc=var1116, r9=var701, r0=var2147, null_type=var3894, r3=var1790, i0=var169}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r9 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc;	r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("function loadFrames() {");	if i0 < 0 goto return r0;	return r0
;block_num 2