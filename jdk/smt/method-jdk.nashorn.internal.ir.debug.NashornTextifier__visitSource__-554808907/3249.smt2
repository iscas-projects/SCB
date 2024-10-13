(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1777 0)
(declare-sort var2488 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun length/-171891354 (String) Int)
(declare-const null-var1777 var1777)
(declare-const null-String String)
(declare-const var1485 var1777) ; Statement: r3 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var1485 null-var1777)))
(declare-const var799 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var799 null-String)))
(declare-const var2445 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2445 null-String)))
(define-const var3056 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3056)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3056!1 String)
(assert (= var3056!1 ""))
 ; Statement: if r1 == null goto (branch) 
(assert (= var799 null-String)) ; Cond: r1 == null 
 ; Statement: if r2 == null goto $i0 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>() 
(assert (= var2445 null-String)) ; Cond: r2 == null 
(assert true)
(define-const var1309 Int (length/-171891354 var3056!1)) ; Statement: $i0 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 <= 0 goto return 
(assert (<= var1309 0)) ; Cond: $i0 <= 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-171891354=([java.lang.StringBuilder], int)}
; {var1777=jdk.nashorn.internal.ir.debug.NashornTextifier, var1485=r3, var799=r1, var2488=null_type, var2445=r2, var3056=$r0, var1309=$i0}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var1777, r3=var1485, r1=var799, null_type=var2488, r2=var2445, $r0=var3056, $i0=var1309}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: int length()>": 1}
;stmts r3 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if r1 == null goto (branch);	if r2 == null goto $i0 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>();	$i0 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>();	if $i0 <= 0 goto return;	return
;block_num 4