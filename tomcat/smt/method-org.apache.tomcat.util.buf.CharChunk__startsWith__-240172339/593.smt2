(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var311 0)
(declare-sort var2689 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buff/-423279612 (var311) (Array Int Int))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var311 var311)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2124 var311) ; Statement: r0 := @this: org.apache.tomcat.util.buf.CharChunk 
(assert (not (= var2124 null-var311)))
(declare-const var2205 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2205 null-String)))
(define-const var3524 (Array Int Int) (buff/-423279612 var2124)) ; Statement: r1 = r0.<org.apache.tomcat.util.buf.CharChunk: char[] buff> 
(assert true)
(define-const var451 Int (length/-134980193 var2205)) ; Statement: i0 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if r1 == null goto return 0 
(assert (= var3524 null-__Array__Int__Int__)) ; Cond: r1 == null 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {buff/-423279612=([org.apache.tomcat.util.buf.CharChunk], char[]), length/-134980193=([java.lang.String], int)}
; {var311=org.apache.tomcat.util.buf.CharChunk, var2124=r0, var2205=r2, var2689=null_type, var3524=r1, var451=i0}
; {org.apache.tomcat.util.buf.CharChunk=var311, r0=var2124, r2=var2205, null_type=var2689, r1=var3524, i0=var451}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.tomcat.util.buf.CharChunk;	r2 := @parameter0: java.lang.String;	r1 = r0.<org.apache.tomcat.util.buf.CharChunk: char[] buff>;	i0 = virtualinvoke r2.<java.lang.String: int length()>();	if r1 == null goto return 0;	return 0
;block_num 2