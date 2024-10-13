(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var148 0)
(declare-sort var1242 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buff/257701266 (var148) (Array Int Int))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var148 var148)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2771 var148) ; Statement: r0 := @this: org.apache.tomcat.util.buf.ByteChunk 
(assert (not (= var2771 null-var148)))
(declare-const var2433 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2433 null-String)))
(declare-const var577 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var577 null-Int)))
(define-const var475 (Array Int Int) (buff/257701266 var2771)) ; Statement: r1 = r0.<org.apache.tomcat.util.buf.ByteChunk: byte[] buff> 
(assert true)
(define-const var127 Int (length/-134980193 var2433)) ; Statement: i0 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if r1 == null goto return 0 
(assert (= var475 null-__Array__Int__Int__)) ; Cond: r1 == null 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {buff/257701266=([org.apache.tomcat.util.buf.ByteChunk], byte[]), length/-134980193=([java.lang.String], int)}
; {var148=org.apache.tomcat.util.buf.ByteChunk, var2771=r0, var2433=r2, var1242=null_type, var577=i1, var475=r1, var127=i0}
; {org.apache.tomcat.util.buf.ByteChunk=var148, r0=var2771, r2=var2433, null_type=var1242, i1=var577, r1=var475, i0=var127}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.tomcat.util.buf.ByteChunk;	r2 := @parameter0: java.lang.String;	i1 := @parameter1: int;	r1 = r0.<org.apache.tomcat.util.buf.ByteChunk: byte[] buff>;	i0 = virtualinvoke r2.<java.lang.String: int length()>();	if r1 == null goto return 0;	return 0
;block_num 2