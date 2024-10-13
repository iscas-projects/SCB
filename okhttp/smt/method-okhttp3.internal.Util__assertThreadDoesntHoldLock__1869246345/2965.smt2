(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3137 0)
(declare-sort var392 0)
(declare-sort var648 0)
(declare-sort var2238 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var392_checkNotNullParameter/-2060636419 (var3137 String) void)
(declare-fun var2238_holdsLock/-145342167 (var3137) Bool)
(declare-const null-var3137 var3137)
(declare-const var648-assertionsEnabled Bool)
(declare-const var1023 var3137) ; Statement: $r0 := @parameter0: java.lang.Object 
(assert (not (= var1023 null-var3137)))
;(assert (var392_checkNotNullParameter/-2060636419 var1023 "<this>")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>") 

(declare-const var1023!1 var3137)
(declare-const var1320 String)
(define-const var3789 Bool var648-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var3789 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2641 Bool (var2238_holdsLock/-145342167 var1023!1)) ; Statement: $z1 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>($r0) 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var2641 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var392_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), var2238_holdsLock/-145342167=([java.lang.Object], boolean)}
; {var3137=java.lang.Object, var1023=$r0, var392=kotlin.jvm.internal.Intrinsics, var1320="<this>", var648=okhttp3.internal.Util, var3789=$z0, var2238=java.lang.Thread, var2641=$z1}
; {java.lang.Object=var3137, $r0=var1023, kotlin.jvm.internal.Intrinsics=var392, "<this>"=var1320, okhttp3.internal.Util=var648, $z0=var3789, java.lang.Thread=var2238, $z1=var2641}
;seq 
;cnt {}
;stmts $r0 := @parameter0: java.lang.Object;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>");	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto return;	$z1 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>($r0);	if $z1 == 0 goto return;	return
;block_num 3