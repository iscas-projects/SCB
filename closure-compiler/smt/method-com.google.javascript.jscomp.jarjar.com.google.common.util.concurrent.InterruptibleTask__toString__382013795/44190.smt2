(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2959 0)
(declare-sort var469 0)
(declare-sort var1792 0)
(declare-sort var1522 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun get/981896790 (var1792) var469)
(declare-fun cast-from-var2959-to-var1792 (var2959) var1792)
(declare-fun cast-from-var469-to-var1522 (var469) var1522)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toPendingString/1201208894 (var2959) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2959 var2959)
(declare-const var2959-DONE var1522)
(declare-const var3486 var2959) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.InterruptibleTask 
(assert (not (= var3486 null-var2959)))
(assert true)
(define-const var3043 var469 (get/981896790 (cast-from-var2959-to-var1792 var3486))) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.InterruptibleTask: java.lang.Object get()>() 
(define-const var3039 var1522 (cast-from-var469-to-var1522 var3043)) ; Statement: r2 = (java.lang.Runnable) $r1 
(define-const var3323 var1522 var2959-DONE) ; Statement: $r3 = <com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.InterruptibleTask: java.lang.Runnable DONE> 
 ; Statement: if r2 != $r3 goto $z0 = r2 instanceof com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.InterruptibleTask$Blocker 
(assert (not (not (= var3039 var3323)))) ; Negate: Cond: r2 != $r3  
(define-const var2573 String "running=[DONE]") ; Statement: r10 = "running=[DONE]" 
 ; Statement: goto [?= $r11 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var3453 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3453)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3453!1 String)
(assert (= var3453!1 ""))
(assert true)
(define-const var3519 String (append/672562846 var3453!1 var2573)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var3453!2 String)
(assert (= var3453!2 (str.++ var3453!1 var2573)))
(assert true)
(define-const var964 String (append/672562846 var3519 ", ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var3519!1 String)
(assert (= var3519!1 (str.++ var3519 ", ")))
(assert true)
(define-const var3236 String (toPendingString/1201208894 var3486)) ; Statement: $r14 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.InterruptibleTask: java.lang.String toPendingString()>() 
(assert true)
(define-const var1975 String (append/672562846 var964 var3236)) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var964!1 String)
(assert (= var964!1 (str.++ var964 var3236)))
(assert true)
(define-const var1527 String (toString/-2075883882 var1975)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {get/981896790=([java.util.concurrent.atomic.AtomicReference], java.lang.Object), cast-from-var2959-to-var1792=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.InterruptibleTask], java.util.concurrent.atomic.AtomicReference), cast-from-var469-to-var1522=([java.lang.Object], java.lang.Runnable), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toPendingString/1201208894=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.InterruptibleTask], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2959=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.InterruptibleTask, var3486=r0, var469=java.lang.Object, var1792=java.util.concurrent.atomic.AtomicReference, var3043=$r1, var1522=java.lang.Runnable, var3039=r2, var3323=$r3, var2573=r10, var3453=$r11, var3519=$r12, var964=$r13, var3236=$r14, var1975=$r15, var1527=$r16}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.InterruptibleTask=var2959, r0=var3486, java.lang.Object=var469, java.util.concurrent.atomic.AtomicReference=var1792, $r1=var3043, java.lang.Runnable=var1522, r2=var3039, $r3=var3323, r10=var2573, $r11=var3453, $r12=var3519, $r13=var964, $r14=var3236, $r15=var1975, $r16=var1527}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.InterruptibleTask;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.InterruptibleTask: java.lang.Object get()>();	r2 = (java.lang.Runnable) $r1;	$r3 = <com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.InterruptibleTask: java.lang.Runnable DONE>;	if r2 != $r3 goto $z0 = r2 instanceof com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.InterruptibleTask$Blocker;	r10 = "running=[DONE]";	goto [?= $r11 = new java.lang.StringBuilder];	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r14 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.InterruptibleTask: java.lang.String toPendingString()>();	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	return $r16
;block_num 3