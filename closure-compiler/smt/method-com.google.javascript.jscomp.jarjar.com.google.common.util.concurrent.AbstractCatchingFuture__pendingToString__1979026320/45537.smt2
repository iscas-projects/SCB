(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3705 0)
(declare-sort var1174 0)
(declare-sort var2210 0)
(declare-sort var1760 0)
(declare-sort var1693 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun inputFuture/-1445917277 (var3705) var1174)
(declare-fun exceptionType/-1445917277 (var3705) ClassObject)
(declare-fun fallback/-1445917277 (var3705) var2210)
(declare-fun pendingToString/1324830807 (var1760) String)
(declare-fun cast-from-var3705-to-var1760 (var3705) var1760)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3705 var3705)
(declare-const null-var1174 var1174)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const var556 var3705) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture 
(assert (not (= var556 null-var3705)))
(define-const var1094 var1174 (inputFuture/-1445917277 var556)) ; Statement: r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture inputFuture> 
(define-const var588 ClassObject (exceptionType/-1445917277 var556)) ; Statement: r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture: java.lang.Class exceptionType> 
(define-const var740 var2210 (fallback/-1445917277 var556)) ; Statement: r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture: java.lang.Object fallback> 
(assert true)
(define-const var1530 String (pendingToString/1324830807 (cast-from-var3705-to-var1760 var556))) ; Statement: r4 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FluentFuture$TrustedFuture: java.lang.String pendingToString()>() 
(define-const var807 String "") ; Statement: r21 = "" 
 ; Statement: if r1 == null goto (branch) 
(assert (= var1094 null-var1174)) ; Cond: r1 == null 
 ; Statement: if r2 == null goto (branch) 
(assert (= var588 null-ClassObject)) ; Cond: r2 == null 
 ; Statement: if r4 == null goto return null 
(assert (not (= var1530 null-String))) ; Negate: Cond: r4 == null  
(define-const var206 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var206)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var206!1 String)
(assert (= var206!1 ""))
(assert true)
(define-const var2264 String (append/672562846 var206!1 var807)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r21) 
(declare-const var206!2 String)
(assert (= var206!2 (str.++ var206!1 var807)))
(assert true)
(define-const var2244 String (append/672562846 var2264 var1530)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2264!1 String)
(assert (= var2264!1 (str.++ var2264 var1530)))
(assert true)
(define-const var857 String (toString/-2075883882 var2244)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {inputFuture/-1445917277=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture), exceptionType/-1445917277=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture], java.lang.Class), fallback/-1445917277=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture], java.lang.Object), pendingToString/1324830807=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture], java.lang.String), cast-from-var3705-to-var1760=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3705=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture, var556=r0, var1174=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture, var1094=r1, var588=r2, var2210=java.lang.Object, var740=r3, var1760=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture, var1530=r4, var807=r21, var1693=null_type, var206=$r5, var2264=$r6, var2244=$r7, var857=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture=var3705, r0=var556, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture=var1174, r1=var1094, r2=var588, java.lang.Object=var2210, r3=var740, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture=var1760, r4=var1530, r21=var807, null_type=var1693, $r5=var206, $r6=var2264, $r7=var2244, $r8=var857}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture;	r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture inputFuture>;	r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture: java.lang.Class exceptionType>;	r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture: java.lang.Object fallback>;	r4 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FluentFuture$TrustedFuture: java.lang.String pendingToString()>();	r21 = "";	if r1 == null goto (branch);	if r2 == null goto (branch);	if r4 == null goto return null;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r21);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 4