(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var907 0)
(declare-sort var3542 0)
(declare-sort var3046 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3542-init () var3542)
(declare-fun <init>/582965326 (var3542 var3046) void)
(declare-fun cast-from-String-to-var3046 (String) var3046)
(declare-const null-Int Int)
(declare-const var907-$assertionsDisabled Bool)
(declare-const var921 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var921 null-Int)))
(define-const var3001 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3001)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3001!1 String)
(assert (= var3001!1 ""))
(define-const var2009 Int (bv2nat (bvand ((_ int2bv 64) var921) ((_ int2bv 64) 1)))) ; Statement: $i1 = i0 & 1 
 ; Statement: if $i1 == 0 goto $i7 = i0 & 16 
(assert (not (= var2009 0))) ; Negate: Cond: $i1 == 0  
(define-const var3361 Int (bv2nat (bvand ((_ int2bv 64) var921) ((_ int2bv 64) 4)))) ; Statement: $i4 = i0 & 4 
 ; Statement: if $i4 == 0 goto $z0 = <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean $assertionsDisabled> 
(assert (= var3361 0)) ; Cond: $i4 == 0 
(define-const var1797 Bool var907-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("scope ") 
(assert (not (not (= (ite var1797 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3761 Int (bv2nat (bvand ((_ int2bv 64) var921) ((_ int2bv 64) 4)))) ; Statement: $i5 = i0 & 4 
 ; Statement: if $i5 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("scope ") 
(assert (not (= var3761 0))) ; Negate: Cond: $i5 == 0  
(define-const var2844 var3542 var3542-init) ; Statement: $r6 = new java.lang.AssertionError 
(assert true)
;(assert (<init>/582965326 var2844 (cast-from-String-to-var3046 "can\u0027t be fastscope without scope"))) ; Statement: specialinvoke $r6.<java.lang.AssertionError: void <init>(java.lang.Object)>("can\'t be fastscope without scope") 

(declare-const var2844!1 var3542)
(declare-const var3697 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3542-init=([], java.lang.AssertionError), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var3046=([java.lang.String], java.lang.Object)}
; {var921=i0, var3001=$r0, var2009=$i1, var3361=$i4, var907=jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor, var1797=$z0, var3761=$i5, var3542=java.lang.AssertionError, var2844=$r6, var3046=java.lang.Object, var3697="can\'t be fastscope without scope"}
; {i0=var921, $r0=var3001, $i1=var2009, $i4=var3361, jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor=var907, $z0=var1797, $i5=var3761, java.lang.AssertionError=var3542, $r6=var2844, java.lang.Object=var3046, "can\'t be fastscope without scope"=var3697}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts i0 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$i1 = i0 & 1;	if $i1 == 0 goto $i7 = i0 & 16;	$i4 = i0 & 4;	if $i4 == 0 goto $z0 = <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean $assertionsDisabled>;	$z0 = <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean $assertionsDisabled>;	if $z0 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("scope ");	$i5 = i0 & 4;	if $i5 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("scope ");	$r6 = new java.lang.AssertionError;	specialinvoke $r6.<java.lang.AssertionError: void <init>(java.lang.Object)>("can\'t be fastscope without scope");	throw $r6
;block_num 5