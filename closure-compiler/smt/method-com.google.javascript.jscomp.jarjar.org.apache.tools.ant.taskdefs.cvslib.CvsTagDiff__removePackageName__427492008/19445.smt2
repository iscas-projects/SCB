(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var350 0)
(declare-sort var974 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var974-FILE_STRING_LENGTH Int)
(declare-const var2482 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2482 null-String)))
(declare-const var2634 (Array Int String)) ; Statement: r1 := @parameter1: java.lang.String[] 
(assert (not (= var2634 null-__Array__Int__String__)))
(declare-const var1998 (Array Int Int)) ; Statement: r4 := @parameter2: int[] 
(assert (not (= var1998 null-__Array__Int__Int__)))
(assert true)
(define-const var3860 Int (length/-134980193 var2482)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3956 Int var974-FILE_STRING_LENGTH) ; Statement: $i0 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagDiff: int FILE_STRING_LENGTH> 
 ; Statement: if $i1 >= $i0 goto i5 = 0 
(assert (not (>= var3860 var3956))) ; Negate: Cond: $i1 >= $i0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2482=r0, var350=null_type, var2634=r1, var1998=r4, var3860=$i1, var974=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagDiff, var3956=$i0}
; {r0=var2482, null_type=var350, r1=var2634, r4=var1998, $i1=var3860, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagDiff=var974, $i0=var3956}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String[];	r4 := @parameter2: int[];	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagDiff: int FILE_STRING_LENGTH>;	if $i1 >= $i0 goto i5 = 0;	return null
;block_num 2