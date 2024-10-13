(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1026 0)
(declare-sort var3520 0)
(declare-sort var15 0)
(declare-sort var2536 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var15-init () var15)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getAndIncrement/-721914959 (var2536) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1250801909 (var15 var3520 String) void)
(declare-const null-var1026 var1026)
(declare-const null-var3520 var3520)
(declare-const var1026-threadNumber var2536)
(declare-const var464 var1026) ; Statement: r7 := @this: org.junit.jupiter.api.AssertTimeoutPreemptively$TimeoutThreadFactory 
(assert (not (= var464 null-var1026)))
(declare-const var1048 var3520) ; Statement: r1 := @parameter0: java.lang.Runnable 
(assert (not (= var1048 null-var3520)))
(define-const var2454 var15 var15-init) ; Statement: $r0 = new java.lang.Thread 
(define-const var2755 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2755)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2755!1 String)
(assert (= var2755!1 ""))
(assert true)
(define-const var3698 String (append/672562846 var2755!1 "junit-timeout-thread-")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("junit-timeout-thread-") 
(declare-const var2755!2 String)
(assert (= var2755!2 (str.++ var2755!1 "junit-timeout-thread-")))
(define-const var889 var2536 var1026-threadNumber) ; Statement: $r3 = <org.junit.jupiter.api.AssertTimeoutPreemptively$TimeoutThreadFactory: java.util.concurrent.atomic.AtomicInteger threadNumber> 
(assert true)
(define-const var2028 Int (getAndIncrement/-721914959 var889)) ; Statement: $i0 = virtualinvoke $r3.<java.util.concurrent.atomic.AtomicInteger: int getAndIncrement()>() 
(assert true)
(define-const var629 String (append/-1001720160 var3698 var2028)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3698!1 String)
(assert (str.prefixof var3698 var3698!1))
(assert true)
(define-const var1007 String (toString/-2075883882 var629)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1250801909 var2454 var1048 var1007)) ; Statement: specialinvoke $r0.<java.lang.Thread: void <init>(java.lang.Runnable,java.lang.String)>(r1, $r6) 

(declare-const var2454!1 var15)
(declare-const var1048!1 var3520)
(declare-const var1007!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var15-init=([], java.lang.Thread), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getAndIncrement/-721914959=([java.util.concurrent.atomic.AtomicInteger], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1250801909=([java.lang.Thread, java.lang.Runnable, java.lang.String], void)}
; {var1026=org.junit.jupiter.api.AssertTimeoutPreemptively$TimeoutThreadFactory, var464=r7, var3520=java.lang.Runnable, var1048=r1, var15=java.lang.Thread, var2454=$r0, var2755=$r2, var3698=$r4, var2536=java.util.concurrent.atomic.AtomicInteger, var889=$r3, var2028=$i0, var629=$r5, var1007=$r6}
; {org.junit.jupiter.api.AssertTimeoutPreemptively$TimeoutThreadFactory=var1026, r7=var464, java.lang.Runnable=var3520, r1=var1048, java.lang.Thread=var15, $r0=var2454, $r2=var2755, $r4=var3698, java.util.concurrent.atomic.AtomicInteger=var2536, $r3=var889, $i0=var2028, $r5=var629, $r6=var1007}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.junit.jupiter.api.AssertTimeoutPreemptively$TimeoutThreadFactory;	r1 := @parameter0: java.lang.Runnable;	$r0 = new java.lang.Thread;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("junit-timeout-thread-");	$r3 = <org.junit.jupiter.api.AssertTimeoutPreemptively$TimeoutThreadFactory: java.util.concurrent.atomic.AtomicInteger threadNumber>;	$i0 = virtualinvoke $r3.<java.util.concurrent.atomic.AtomicInteger: int getAndIncrement()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.Thread: void <init>(java.lang.Runnable,java.lang.String)>(r1, $r6);	return $r0
;block_num 1