(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3792 0)
(declare-sort var3905 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun locals/-629139711 (var3792) Int)
(declare-fun values/-629139711 (var3792) (Array Int var3905))
(declare-const null-var3792 var3792)
(declare-const null-Int Int)
(declare-const null-var3905 var3905)
(declare-const null-__Array__Int__var3905__ (Array Int var3905))
(declare-const var2120 var3792) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.tree.analysis.Frame 
(assert (not (= var2120 null-var3792)))
(declare-const var3539 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3539 null-Int)))
(declare-const var2633 var3905) ; Statement: r1 := @parameter1: jdk.internal.org.objectweb.asm.tree.analysis.Value 
(assert (not (= var2633 null-var3905)))
(define-const var518 Int (locals/-629139711 var2120)) ; Statement: $i1 = r0.<jdk.internal.org.objectweb.asm.tree.analysis.Frame: int locals> 
 ; Statement: if i0 < $i1 goto $r2 = r0.<jdk.internal.org.objectweb.asm.tree.analysis.Frame: jdk.internal.org.objectweb.asm.tree.analysis.Value[] values> 
(assert (< var3539 var518)) ; Cond: i0 < $i1 
(define-const var1392 (Array Int var3905) (values/-629139711 var2120)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.tree.analysis.Frame: jdk.internal.org.objectweb.asm.tree.analysis.Value[] values> 
(declare-const var1392!1 (Array Int var3905))
(assert (not (= var1392!1 null-__Array__Int__var3905__)))
(assert (= (select var1392!1 var3539) var2633)) ; Statement: $r2[i0] = r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {locals/-629139711=([jdk.internal.org.objectweb.asm.tree.analysis.Frame], int), values/-629139711=([jdk.internal.org.objectweb.asm.tree.analysis.Frame], jdk.internal.org.objectweb.asm.tree.analysis.Value[])}
; {var3792=jdk.internal.org.objectweb.asm.tree.analysis.Frame, var2120=r0, var3539=i0, var3905=jdk.internal.org.objectweb.asm.tree.analysis.Value, var2633=r1, var518=$i1, var1392=$r2}
; {jdk.internal.org.objectweb.asm.tree.analysis.Frame=var3792, r0=var2120, i0=var3539, jdk.internal.org.objectweb.asm.tree.analysis.Value=var3905, r1=var2633, $i1=var518, $r2=var1392}
;seq 
;cnt {}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.tree.analysis.Frame;	i0 := @parameter0: int;	r1 := @parameter1: jdk.internal.org.objectweb.asm.tree.analysis.Value;	$i1 = r0.<jdk.internal.org.objectweb.asm.tree.analysis.Frame: int locals>;	if i0 < $i1 goto $r2 = r0.<jdk.internal.org.objectweb.asm.tree.analysis.Frame: jdk.internal.org.objectweb.asm.tree.analysis.Value[] values>;	$r2 = r0.<jdk.internal.org.objectweb.asm.tree.analysis.Frame: jdk.internal.org.objectweb.asm.tree.analysis.Value[] values>;	$r2[i0] = r1;	return
;block_num 2