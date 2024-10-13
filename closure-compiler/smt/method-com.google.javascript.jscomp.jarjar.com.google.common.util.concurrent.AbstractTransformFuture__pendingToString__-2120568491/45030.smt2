(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2070 0)
(declare-sort var143 0)
(declare-sort var405 0)
(declare-sort var2687 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun inputFuture/2069586358 (var2070) var143)
(declare-fun function/2069586358 (var2070) var405)
(declare-fun pendingToString/1324830807 (var2687) String)
(declare-fun cast-from-var2070-to-var2687 (var2070) var2687)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var405) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2070 var2070)
(declare-const null-var143 var143)
(declare-const null-var405 var405)
(declare-const var1675 var2070) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractTransformFuture 
(assert (not (= var1675 null-var2070)))
(define-const var3136 var143 (inputFuture/2069586358 var1675)) ; Statement: r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractTransformFuture: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture inputFuture> 
(define-const var479 var405 (function/2069586358 var1675)) ; Statement: r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractTransformFuture: java.lang.Object function> 
(assert true)
(define-const var2790 String (pendingToString/1324830807 (cast-from-var2070-to-var2687 var1675))) ; Statement: r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FluentFuture$TrustedFuture: java.lang.String pendingToString()>() 
(define-const var680 String "") ; Statement: r18 = "" 
 ; Statement: if r1 == null goto (branch) 
(assert (= var3136 null-var143)) ; Cond: r1 == null 
 ; Statement: if r2 == null goto (branch) 
(assert (not (= var479 null-var405))) ; Negate: Cond: r2 == null  
(define-const var2475 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2475)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2475!1 String)
(assert (= var2475!1 ""))
(assert true)
(define-const var3395 String (append/672562846 var2475!1 var680)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r18) 
(declare-const var2475!2 String)
(assert (= var2475!2 (str.++ var2475!1 var680)))
(assert true)
(define-const var121 String (append/672562846 var3395 "function=[")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("function=[") 
(declare-const var3395!1 String)
(assert (= var3395!1 (str.++ var3395 "function=[")))
(assert true)
(define-const var507 String (append/-1031950772 var121 var479)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var121!1 String)
(assert (str.prefixof var121 var121!1))
(assert true)
(define-const var3080 String (append/672562846 var507 "]")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var507!1 String)
(assert (= var507!1 (str.++ var507 "]")))
(assert true)
(define-const var1946 String (toString/-2075883882 var3080)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {inputFuture/2069586358=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractTransformFuture], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture), function/2069586358=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractTransformFuture], java.lang.Object), pendingToString/1324830807=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture], java.lang.String), cast-from-var2070-to-var2687=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractTransformFuture], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2070=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractTransformFuture, var1675=r0, var143=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture, var3136=r1, var405=java.lang.Object, var479=r2, var2687=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture, var2790=r3, var680=r18, var2475=$r8, var3395=$r9, var121=$r10, var507=$r11, var3080=$r12, var1946=$r13}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractTransformFuture=var2070, r0=var1675, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture=var143, r1=var3136, java.lang.Object=var405, r2=var479, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture=var2687, r3=var2790, r18=var680, $r8=var2475, $r9=var3395, $r10=var121, $r11=var507, $r12=var3080, $r13=var1946}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractTransformFuture;	r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractTransformFuture: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture inputFuture>;	r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractTransformFuture: java.lang.Object function>;	r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FluentFuture$TrustedFuture: java.lang.String pendingToString()>();	r18 = "";	if r1 == null goto (branch);	if r2 == null goto (branch);	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r18);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("function=[");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 3