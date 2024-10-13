(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2093 0)
(declare-sort var1765 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1765_checkDesc/2008053283 (String Int Bool) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3084 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3084 null-String)))
(declare-const var1114 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1114 null-Bool)))
(define-const var3991 Int (var1765_checkDesc/2008053283 var3084 0 var1114)) ; Statement: i0 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: int checkDesc(java.lang.String,int,boolean)>(r0, 0, z0) 
(assert true)
(define-const var2497 Int (length/-134980193 var3084)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 == $i1 goto return 
(assert (= var3991 var2497)) ; Cond: i0 == $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1765_checkDesc/2008053283=([java.lang.String, int, boolean], int), length/-134980193=([java.lang.String], int)}
; {var3084=r0, var2093=null_type, var1114=z0, var1765=jdk.internal.org.objectweb.asm.util.CheckMethodAdapter, var3991=i0, var2497=$i1}
; {r0=var3084, null_type=var2093, z0=var1114, jdk.internal.org.objectweb.asm.util.CheckMethodAdapter=var1765, i0=var3991, $i1=var2497}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	i0 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: int checkDesc(java.lang.String,int,boolean)>(r0, 0, z0);	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 == $i1 goto return;	return
;block_num 2