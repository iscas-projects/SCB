(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var535 0)
(declare-sort var3350 0)
(declare-sort var1406 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun delegate/-1745411868 (var535) var3350)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1406) String)
(declare-fun cast-from-var3350-to-var1406 (var3350) var1406)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var535 var535)
(declare-const null-var3350 var3350)
(declare-const var49 var535) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$NonCancellationPropagatingFuture 
(assert (not (= var49 null-var535)))
(define-const var769 var3350 (delegate/-1745411868 var49)) ; Statement: r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$NonCancellationPropagatingFuture: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture delegate> 
 ; Statement: if r1 == null goto return null 
(assert (not (= var769 null-var3350))) ; Negate: Cond: r1 == null  
(define-const var541 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var541)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var541!1 String)
(assert (= var541!1 ""))
(assert true)
(define-const var970 String (append/672562846 var541!1 "delegate=[")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("delegate=[") 
(declare-const var541!2 String)
(assert (= var541!2 (str.++ var541!1 "delegate=[")))
(assert true)
(define-const var3405 String (append/-1031950772 var970 (cast-from-var3350-to-var1406 var769))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var970!1 String)
(assert (str.prefixof var970 var970!1))
(assert true)
(define-const var1868 String (append/672562846 var3405 "]")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3405!1 String)
(assert (= var3405!1 (str.++ var3405 "]")))
(assert true)
(define-const var1776 String (toString/-2075883882 var1868)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {delegate/-1745411868=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$NonCancellationPropagatingFuture], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3350-to-var1406=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var535=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$NonCancellationPropagatingFuture, var49=r0, var3350=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture, var769=r1, var541=$r2, var970=$r3, var1406=java.lang.Object, var3405=$r4, var1868=$r5, var1776=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$NonCancellationPropagatingFuture=var535, r0=var49, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture=var3350, r1=var769, $r2=var541, $r3=var970, java.lang.Object=var1406, $r4=var3405, $r5=var1868, $r6=var1776}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$NonCancellationPropagatingFuture;	r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$NonCancellationPropagatingFuture: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture delegate>;	if r1 == null goto return null;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("delegate=[");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2