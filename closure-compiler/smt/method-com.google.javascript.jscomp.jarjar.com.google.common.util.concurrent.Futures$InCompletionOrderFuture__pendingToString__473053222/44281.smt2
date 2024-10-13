(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1958 0)
(declare-sort var1846 0)
(declare-sort var1405 0)
(declare-sort var748 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun state/-459367355 (var1958) var1846)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1846_access$400/-1606384026 (var1846) (Array Int var1405))
(declare-fun getLength-Arr-var1405-1 ((Array Int var1405)) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun var1846_access$500/222439245 (var1846) var748)
(declare-fun get/-785596375 (var748) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1958 var1958)
(declare-const null-var1846 var1846)
(declare-const var1578 var1958) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderFuture 
(assert (not (= var1578 null-var1958)))
(define-const var3336 var1846 (state/-459367355 var1578)) ; Statement: r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderFuture: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderState state> 
 ; Statement: if r1 == null goto return null 
(assert (not (= var3336 null-var1846))) ; Negate: Cond: r1 == null  
(define-const var3116 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3116)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3116!1 String)
(assert (= var3116!1 ""))
(assert true)
(define-const var2621 String (append/672562846 var3116!1 "inputCount=[")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("inputCount=[") 
(declare-const var3116!2 String)
(assert (= var3116!2 (str.++ var3116!1 "inputCount=[")))
(define-const var923 (Array Int var1405) (var1846_access$400/-1606384026 var3336)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderState: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture[] access$400(com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderState)>(r1) 
(define-const var2470 Int (getLength-Arr-var1405-1 var923)) ; Statement: $i0 = lengthof $r3 
(assert true)
(define-const var1643 String (append/-1001720160 var2621 var2470)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2621!1 String)
(assert (str.prefixof var2621 var2621!1))
(assert true)
(define-const var1424 String (append/672562846 var1643 "], remaining=[")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("], remaining=[") 
(declare-const var1643!1 String)
(assert (= var1643!1 (str.++ var1643 "], remaining=[")))
(define-const var1799 var748 (var1846_access$500/222439245 var3336)) ; Statement: $r6 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderState: java.util.concurrent.atomic.AtomicInteger access$500(com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderState)>(r1) 
(assert true)
(define-const var3168 Int (get/-785596375 var1799)) ; Statement: $i1 = virtualinvoke $r6.<java.util.concurrent.atomic.AtomicInteger: int get()>() 
(assert true)
(define-const var2039 String (append/-1001720160 var1424 var3168)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var1424!1 String)
(assert (str.prefixof var1424 var1424!1))
(assert true)
(define-const var3457 String (append/672562846 var2039 "]")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2039!1 String)
(assert (= var2039!1 (str.++ var2039 "]")))
(assert true)
(define-const var2031 String (toString/-2075883882 var3457)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {state/-459367355=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderFuture], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderState), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1846_access$400/-1606384026=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderState], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture[]), getLength-Arr-var1405-1=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture[]], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), var1846_access$500/222439245=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderState], java.util.concurrent.atomic.AtomicInteger), get/-785596375=([java.util.concurrent.atomic.AtomicInteger], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1958=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderFuture, var1578=r0, var1846=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderState, var3336=r1, var3116=$r2, var2621=$r4, var1405=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture, var923=$r3, var2470=$i0, var1643=$r5, var1424=$r7, var748=java.util.concurrent.atomic.AtomicInteger, var1799=$r6, var3168=$i1, var2039=$r8, var3457=$r9, var2031=$r10}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderFuture=var1958, r0=var1578, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderState=var1846, r1=var3336, $r2=var3116, $r4=var2621, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture=var1405, $r3=var923, $i0=var2470, $r5=var1643, $r7=var1424, java.util.concurrent.atomic.AtomicInteger=var748, $r6=var1799, $i1=var3168, $r8=var2039, $r9=var3457, $r10=var2031}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderFuture;	r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderFuture: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderState state>;	if r1 == null goto return null;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("inputCount=[");	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderState: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture[] access$400(com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderState)>(r1);	$i0 = lengthof $r3;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("], remaining=[");	$r6 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderState: java.util.concurrent.atomic.AtomicInteger access$500(com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderState)>(r1);	$i1 = virtualinvoke $r6.<java.util.concurrent.atomic.AtomicInteger: int get()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 2