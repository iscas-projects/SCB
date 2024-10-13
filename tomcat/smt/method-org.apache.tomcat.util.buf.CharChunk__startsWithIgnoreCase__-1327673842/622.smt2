(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3830 0)
(declare-sort var1612 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buff/-423279612 (var3830) (Array Int Int))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3830 var3830)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var88 var3830) ; Statement: r0 := @this: org.apache.tomcat.util.buf.CharChunk 
(assert (not (= var88 null-var3830)))
(declare-const var1725 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1725 null-String)))
(declare-const var3433 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3433 null-Int)))
(define-const var1381 (Array Int Int) (buff/-423279612 var88)) ; Statement: r1 = r0.<org.apache.tomcat.util.buf.CharChunk: char[] buff> 
(assert true)
(define-const var3063 Int (length/-134980193 var1725)) ; Statement: i0 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if r1 == null goto return 0 
(assert (= var1381 null-__Array__Int__Int__)) ; Cond: r1 == null 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {buff/-423279612=([org.apache.tomcat.util.buf.CharChunk], char[]), length/-134980193=([java.lang.String], int)}
; {var3830=org.apache.tomcat.util.buf.CharChunk, var88=r0, var1725=r2, var1612=null_type, var3433=i1, var1381=r1, var3063=i0}
; {org.apache.tomcat.util.buf.CharChunk=var3830, r0=var88, r2=var1725, null_type=var1612, i1=var3433, r1=var1381, i0=var3063}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.tomcat.util.buf.CharChunk;	r2 := @parameter0: java.lang.String;	i1 := @parameter1: int;	r1 = r0.<org.apache.tomcat.util.buf.CharChunk: char[] buff>;	i0 = virtualinvoke r2.<java.lang.String: int length()>();	if r1 == null goto return 0;	return 0
;block_num 2