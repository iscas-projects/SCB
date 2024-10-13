(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var763 0)
(declare-sort var2640 0)
(declare-sort var575 0)
(declare-sort var3002 0)
(declare-sort var810 0)
(declare-sort var1825 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun method/1028479908 (var763) var575)
(declare-fun target/1028479908 (var763) var2640)
(declare-fun arr-var2640-init () (Array Int var2640))
(declare-fun var810-init () var810)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2640) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/107190690 (var810 String var1825) void)
(declare-fun cast-from-var3002-to-var1825 (var3002) var1825)
(declare-const null-var763 var763)
(declare-const null-var2640 var2640)
(declare-const null-var3002 var3002)
(declare-const var3815 var763) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.eventbus.Subscriber 
(assert (not (= var3815 null-var763)))
(declare-const var295 var2640) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var295 null-var2640)))
(define-const var3971 var575 (method/1028479908 var3815)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.eventbus.Subscriber: java.lang.reflect.Method method> 
(define-const var2448 var2640 (target/1028479908 var3815)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.eventbus.Subscriber: java.lang.Object target> 
(define-const var2437 (Array Int var2640) arr-var2640-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3515 var3002) ; Statement: $r16 := @caughtexception 
(assert (not (= var3515 null-var3002)))
(define-const var3496 var810 var810-init) ; Statement: $r17 = new java.lang.Error 
(define-const var1456 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1456)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1456!1 String)
(assert (= var1456!1 ""))
(assert true)
(define-const var391 String (append/672562846 var1456!1 "Method rejected target/argument: ")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Method rejected target/argument: ") 
(declare-const var1456!2 String)
(assert (= var1456!2 (str.++ var1456!1 "Method rejected target/argument: ")))
(assert true)
(define-const var2401 String (append/-1031950772 var391 var295)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var391!1 String)
(assert (str.prefixof var391 var391!1))
(assert true)
(define-const var2728 String (toString/-2075883882 var2401)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/107190690 var3496 var2728 (cast-from-var3002-to-var1825 var3515))) ; Statement: specialinvoke $r17.<java.lang.Error: void <init>(java.lang.String,java.lang.Throwable)>($r21, $r16) 

(declare-const var3496!1 var810)
(declare-const var2728!1 String)
(declare-const var3515!1 var3002)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {method/1028479908=([com.google.javascript.jscomp.jarjar.com.google.common.eventbus.Subscriber], java.lang.reflect.Method), target/1028479908=([com.google.javascript.jscomp.jarjar.com.google.common.eventbus.Subscriber], java.lang.Object), arr-var2640-init=([], java.lang.Object[]), var810-init=([], java.lang.Error), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/107190690=([java.lang.Error, java.lang.String, java.lang.Throwable], void), cast-from-var3002-to-var1825=([java.lang.IllegalArgumentException], java.lang.Throwable)}
; {var763=com.google.javascript.jscomp.jarjar.com.google.common.eventbus.Subscriber, var3815=r0, var2640=java.lang.Object, var295=r2, var575=java.lang.reflect.Method, var3971=$r3, var2448=$r4, var2437=$r1, var3002=java.lang.IllegalArgumentException, var3515=$r16, var810=java.lang.Error, var3496=$r17, var1456=$r18, var391=$r19, var2401=$r20, var2728=$r21, var1825=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.common.eventbus.Subscriber=var763, r0=var3815, java.lang.Object=var2640, r2=var295, java.lang.reflect.Method=var575, $r3=var3971, $r4=var2448, $r1=var2437, java.lang.IllegalArgumentException=var3002, $r16=var3515, java.lang.Error=var810, $r17=var3496, $r18=var1456, $r19=var391, $r20=var2401, $r21=var2728, java.lang.Throwable=var1825}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.eventbus.Subscriber;	r2 := @parameter0: java.lang.Object;	$r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.eventbus.Subscriber: java.lang.reflect.Method method>;	$r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.eventbus.Subscriber: java.lang.Object target>;	$r1 = newarray (java.lang.Object)[1];	$r16 := @caughtexception;	$r17 = new java.lang.Error;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Method rejected target/argument: ");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<java.lang.Error: void <init>(java.lang.String,java.lang.Throwable)>($r21, $r16);	throw $r17
;block_num 2