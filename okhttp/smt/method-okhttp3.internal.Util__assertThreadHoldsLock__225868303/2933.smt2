(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1264 0)
(declare-sort var846 0)
(declare-sort var216 0)
(declare-sort var1132 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var846_checkNotNullParameter/-2060636419 (var1264 String) void)
(declare-fun var1132_holdsLock/-145342167 (var1264) Bool)
(declare-const null-var1264 var1264)
(declare-const var216-assertionsEnabled Bool)
(declare-const var2547 var1264) ; Statement: $r0 := @parameter0: java.lang.Object 
(assert (not (= var2547 null-var1264)))
;(assert (var846_checkNotNullParameter/-2060636419 var2547 "<this>")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>") 

(declare-const var2547!1 var1264)
(declare-const var1758 String)
(define-const var3461 Bool var216-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var3461 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1188 Bool (var1132_holdsLock/-145342167 var2547!1)) ; Statement: $z1 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>($r0) 
 ; Statement: if $z1 != 0 goto return 
(assert (not (= (ite var1188 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var846_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), var1132_holdsLock/-145342167=([java.lang.Object], boolean)}
; {var1264=java.lang.Object, var2547=$r0, var846=kotlin.jvm.internal.Intrinsics, var1758="<this>", var216=okhttp3.internal.Util, var3461=$z0, var1132=java.lang.Thread, var1188=$z1}
; {java.lang.Object=var1264, $r0=var2547, kotlin.jvm.internal.Intrinsics=var846, "<this>"=var1758, okhttp3.internal.Util=var216, $z0=var3461, java.lang.Thread=var1132, $z1=var1188}
;seq 
;cnt {}
;stmts $r0 := @parameter0: java.lang.Object;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>");	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto return;	$z1 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>($r0);	if $z1 != 0 goto return;	return
;block_num 3