(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2685 0)
(declare-sort var565 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1688704720 (var565) void)
(declare-fun cast-from-var2685-to-var565 (var2685) var565)
(declare-fun needNewBuffer/2095503787 (var565 Int) void)
(declare-const null-var2685 var2685)
(declare-const null-Int Int)
(declare-const var3492 var2685) ; Statement: r0 := @this: org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream 
(assert (not (= var3492 null-var2685)))
(declare-const var1834 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1834 null-Int)))
(assert true)
;(assert (<init>/1688704720 (cast-from-var2685-to-var565 var3492))) ; Statement: specialinvoke r0.<org.apache.commons.io.output.AbstractByteArrayOutputStream: void <init>()>() 

(declare-const var3492!1 var2685)
 ; Statement: if i0 >= 0 goto virtualinvoke r0.<org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream: void needNewBuffer(int)>(i0) 
(assert (>= var1834 0)) ; Cond: i0 >= 0 
(assert true)
;(assert (needNewBuffer/2095503787 (cast-from-var2685-to-var565 var3492!1) var1834)) ; Statement: virtualinvoke r0.<org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream: void needNewBuffer(int)>(i0) 

(declare-const var3492!2 var2685)
(declare-const var1834!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1688704720=([org.apache.commons.io.output.AbstractByteArrayOutputStream], void), cast-from-var2685-to-var565=([org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream], org.apache.commons.io.output.AbstractByteArrayOutputStream), needNewBuffer/2095503787=([org.apache.commons.io.output.AbstractByteArrayOutputStream, int], void)}
; {var2685=org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream, var3492=r0, var1834=i0, var565=org.apache.commons.io.output.AbstractByteArrayOutputStream}
; {org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream=var2685, r0=var3492, i0=var1834, org.apache.commons.io.output.AbstractByteArrayOutputStream=var565}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;	i0 := @parameter0: int;	specialinvoke r0.<org.apache.commons.io.output.AbstractByteArrayOutputStream: void <init>()>();	if i0 >= 0 goto virtualinvoke r0.<org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream: void needNewBuffer(int)>(i0);	virtualinvoke r0.<org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream: void needNewBuffer(int)>(i0);	return
;block_num 2