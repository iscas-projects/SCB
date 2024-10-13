(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3073 0)
(declare-sort var2316 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buff/-423279612 (var3073) (Array Int Int))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3073 var3073)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var516 var3073) ; Statement: r0 := @this: org.apache.tomcat.util.buf.CharChunk 
(assert (not (= var516 null-var3073)))
(declare-const var653 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var653 null-String)))
(define-const var1858 (Array Int Int) (buff/-423279612 var516)) ; Statement: r1 = r0.<org.apache.tomcat.util.buf.CharChunk: char[] buff> 
(assert true)
(define-const var2171 Int (length/-134980193 var653)) ; Statement: i0 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if r1 == null goto return 0 
(assert (= var1858 null-__Array__Int__Int__)) ; Cond: r1 == null 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {buff/-423279612=([org.apache.tomcat.util.buf.CharChunk], char[]), length/-134980193=([java.lang.String], int)}
; {var3073=org.apache.tomcat.util.buf.CharChunk, var516=r0, var653=r2, var2316=null_type, var1858=r1, var2171=i0}
; {org.apache.tomcat.util.buf.CharChunk=var3073, r0=var516, r2=var653, null_type=var2316, r1=var1858, i0=var2171}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.tomcat.util.buf.CharChunk;	r2 := @parameter0: java.lang.String;	r1 = r0.<org.apache.tomcat.util.buf.CharChunk: char[] buff>;	i0 = virtualinvoke r2.<java.lang.String: int length()>();	if r1 == null goto return 0;	return 0
;block_num 2