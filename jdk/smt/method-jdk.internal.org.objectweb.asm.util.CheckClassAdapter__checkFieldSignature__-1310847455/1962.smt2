(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1774 0)
(declare-sort var956 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var956_checkFieldTypeSignature/-12186639 (String Int) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var1081 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1081 null-String)))
(define-const var1513 Int (var956_checkFieldTypeSignature/-12186639 var1081 0)) ; Statement: i0 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkFieldTypeSignature(java.lang.String,int)>(r0, 0) 
(assert true)
(define-const var1944 Int (length/-134980193 var1081)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 == $i1 goto return 
(assert (= var1513 var1944)) ; Cond: i0 == $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var956_checkFieldTypeSignature/-12186639=([java.lang.String, int], int), length/-134980193=([java.lang.String], int)}
; {var1081=r0, var1774=null_type, var956=jdk.internal.org.objectweb.asm.util.CheckClassAdapter, var1513=i0, var1944=$i1}
; {r0=var1081, null_type=var1774, jdk.internal.org.objectweb.asm.util.CheckClassAdapter=var956, i0=var1513, $i1=var1944}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkFieldTypeSignature(java.lang.String,int)>(r0, 0);	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 == $i1 goto return;	return
;block_num 2