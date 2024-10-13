(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var47 0)
(declare-sort var1163 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1163_read/-655843064 (var47 (Array Int Int) Int Int) Int)
(declare-const null-var47 var47)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var2694 var47) ; Statement: r0 := @parameter0: java.io.Reader 
(assert (not (= var2694 null-var47)))
(declare-const var898 (Array Int Int)) ; Statement: r1 := @parameter1: char[] 
(assert (not (= var898 null-__Array__Int__Int__)))
(declare-const var3979 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3979 null-Int)))
(declare-const var1414 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var1414 null-Int)))
(define-const var3793 Int (var1163_read/-655843064 var2694 var898 var3979 var1414)) ; Statement: i2 = staticinvoke <org.apache.commons.io.IOUtils: int read(java.io.Reader,char[],int,int)>(r0, r1, i0, i1) 
 ; Statement: if i2 == i1 goto return 
(assert (= var3793 var1414)) ; Cond: i2 == i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1163_read/-655843064=([java.io.Reader, char[], int, int], int)}
; {var47=java.io.Reader, var2694=r0, var898=r1, var3979=i0, var1414=i1, var1163=org.apache.commons.io.IOUtils, var3793=i2}
; {java.io.Reader=var47, r0=var2694, r1=var898, i0=var3979, i1=var1414, org.apache.commons.io.IOUtils=var1163, i2=var3793}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.io.Reader;	r1 := @parameter1: char[];	i0 := @parameter2: int;	i1 := @parameter3: int;	i2 = staticinvoke <org.apache.commons.io.IOUtils: int read(java.io.Reader,char[],int,int)>(r0, r1, i0, i1);	if i2 == i1 goto return;	return
;block_num 2