(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2589 0)
(declare-sort var858 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buff/257701266 (var2589) (Array Int Int))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2589 var2589)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2205 var2589) ; Statement: r0 := @this: org.apache.tomcat.util.buf.ByteChunk 
(assert (not (= var2205 null-var2589)))
(declare-const var726 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var726 null-String)))
(declare-const var3727 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3727 null-Int)))
(define-const var2234 (Array Int Int) (buff/257701266 var2205)) ; Statement: r1 = r0.<org.apache.tomcat.util.buf.ByteChunk: byte[] buff> 
(assert true)
(define-const var3868 Int (length/-134980193 var726)) ; Statement: i0 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if r1 == null goto return 0 
(assert (= var2234 null-__Array__Int__Int__)) ; Cond: r1 == null 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {buff/257701266=([org.apache.tomcat.util.buf.ByteChunk], byte[]), length/-134980193=([java.lang.String], int)}
; {var2589=org.apache.tomcat.util.buf.ByteChunk, var2205=r0, var726=r2, var858=null_type, var3727=i1, var2234=r1, var3868=i0}
; {org.apache.tomcat.util.buf.ByteChunk=var2589, r0=var2205, r2=var726, null_type=var858, i1=var3727, r1=var2234, i0=var3868}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.tomcat.util.buf.ByteChunk;	r2 := @parameter0: java.lang.String;	i1 := @parameter1: int;	r1 = r0.<org.apache.tomcat.util.buf.ByteChunk: byte[] buff>;	i0 = virtualinvoke r2.<java.lang.String: int length()>();	if r1 == null goto return 0;	return 0
;block_num 2