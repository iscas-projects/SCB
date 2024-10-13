(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3161 0)
(declare-sort var1528 0)
(declare-sort var2819 0)
(declare-sort var2898 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun inputFuture/-1445917277 (var3161) var1528)
(declare-fun exceptionType/-1445917277 (var3161) ClassObject)
(declare-fun fallback/-1445917277 (var3161) var2819)
(declare-fun pendingToString/1324830807 (var2898) String)
(declare-fun cast-from-var3161-to-var2898 (var3161) var2898)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2819) String)
(declare-fun cast-from-ClassObject-to-var2819 (ClassObject) var2819)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3161 var3161)
(declare-const null-var1528 var1528)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2819 var2819)
(declare-const var1354 var3161) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture 
(assert (not (= var1354 null-var3161)))
(define-const var1904 var1528 (inputFuture/-1445917277 var1354)) ; Statement: r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture inputFuture> 
(define-const var1386 ClassObject (exceptionType/-1445917277 var1354)) ; Statement: r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture: java.lang.Class exceptionType> 
(define-const var2717 var2819 (fallback/-1445917277 var1354)) ; Statement: r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture: java.lang.Object fallback> 
(assert true)
(define-const var1613 String (pendingToString/1324830807 (cast-from-var3161-to-var2898 var1354))) ; Statement: r4 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FluentFuture$TrustedFuture: java.lang.String pendingToString()>() 
(define-const var3528 String "") ; Statement: r21 = "" 
 ; Statement: if r1 == null goto (branch) 
(assert (= var1904 null-var1528)) ; Cond: r1 == null 
 ; Statement: if r2 == null goto (branch) 
(assert (not (= var1386 null-ClassObject))) ; Negate: Cond: r2 == null  
 ; Statement: if r3 == null goto (branch) 
(assert (not (= var2717 null-var2819))) ; Negate: Cond: r3 == null  
(define-const var1832 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1832)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1832!1 String)
(assert (= var1832!1 ""))
(assert true)
(define-const var1917 String (append/672562846 var1832!1 var3528)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r21) 
(declare-const var1832!2 String)
(assert (= var1832!2 (str.++ var1832!1 var3528)))
(assert true)
(define-const var3242 String (append/672562846 var1917 "exceptionType=[")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("exceptionType=[") 
(declare-const var1917!1 String)
(assert (= var1917!1 (str.++ var1917 "exceptionType=[")))
(assert true)
(define-const var246 String (append/-1031950772 var3242 (cast-from-ClassObject-to-var2819 var1386))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var3242!1 String)
(assert (str.prefixof var3242 var3242!1))
(assert true)
(define-const var1027 String (append/672562846 var246 "], fallback=[")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("], fallback=[") 
(declare-const var246!1 String)
(assert (= var246!1 (str.++ var246 "], fallback=[")))
(assert true)
(define-const var2015 String (append/-1031950772 var1027 var2717)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var1027!1 String)
(assert (str.prefixof var1027 var1027!1))
(assert true)
(define-const var2907 String (append/672562846 var2015 "]")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2015!1 String)
(assert (= var2015!1 (str.++ var2015 "]")))
(assert true)
(define-const var2510 String (toString/-2075883882 var2907)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {inputFuture/-1445917277=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture), exceptionType/-1445917277=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture], java.lang.Class), fallback/-1445917277=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture], java.lang.Object), pendingToString/1324830807=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture], java.lang.String), cast-from-var3161-to-var2898=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2819=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3161=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture, var1354=r0, var1528=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture, var1904=r1, var1386=r2, var2819=java.lang.Object, var2717=r3, var2898=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture, var1613=r4, var3528=r21, var1832=$r9, var1917=$r10, var3242=$r11, var246=$r12, var1027=$r13, var2015=$r14, var2907=$r15, var2510=$r16}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture=var3161, r0=var1354, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture=var1528, r1=var1904, r2=var1386, java.lang.Object=var2819, r3=var2717, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture=var2898, r4=var1613, r21=var3528, $r9=var1832, $r10=var1917, $r11=var3242, $r12=var246, $r13=var1027, $r14=var2015, $r15=var2907, $r16=var2510}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture;	r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture inputFuture>;	r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture: java.lang.Class exceptionType>;	r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture: java.lang.Object fallback>;	r4 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FluentFuture$TrustedFuture: java.lang.String pendingToString()>();	r21 = "";	if r1 == null goto (branch);	if r2 == null goto (branch);	if r3 == null goto (branch);	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r21);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("exceptionType=[");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("], fallback=[");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	return $r16
;block_num 4