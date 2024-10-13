(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var977 0)
(declare-sort var2547 0)
(declare-sort var405 0)
(declare-sort var1023 0)
(declare-sort var644 0)
(declare-sort var1586 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun method/1028479908 (var977) var405)
(declare-fun target/1028479908 (var977) var2547)
(declare-fun arr-var2547-init () (Array Int var2547))
(declare-fun var644-init () var644)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2547) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/107190690 (var644 String var1586) void)
(declare-fun cast-from-var1023-to-var1586 (var1023) var1586)
(declare-const null-var977 var977)
(declare-const null-var2547 var2547)
(declare-const null-var1023 var1023)
(declare-const var1800 var977) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.eventbus.Subscriber 
(assert (not (= var1800 null-var977)))
(declare-const var3739 var2547) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var3739 null-var2547)))
(define-const var918 var405 (method/1028479908 var1800)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.eventbus.Subscriber: java.lang.reflect.Method method> 
(define-const var3124 var2547 (target/1028479908 var1800)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.eventbus.Subscriber: java.lang.Object target> 
(define-const var14 (Array Int var2547) arr-var2547-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2614 var1023) ; Statement: $r10 := @caughtexception 
(assert (not (= var2614 null-var1023)))
(define-const var755 var644 var644-init) ; Statement: $r11 = new java.lang.Error 
(define-const var809 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var809)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var809!1 String)
(assert (= var809!1 ""))
(assert true)
(define-const var3601 String (append/672562846 var809!1 "Method became inaccessible: ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Method became inaccessible: ") 
(declare-const var809!2 String)
(assert (= var809!2 (str.++ var809!1 "Method became inaccessible: ")))
(assert true)
(define-const var2325 String (append/-1031950772 var3601 var3739)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var3601!1 String)
(assert (str.prefixof var3601 var3601!1))
(assert true)
(define-const var2639 String (toString/-2075883882 var2325)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/107190690 var755 var2639 (cast-from-var1023-to-var1586 var2614))) ; Statement: specialinvoke $r11.<java.lang.Error: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r10) 

(declare-const var755!1 var644)
(declare-const var2639!1 String)
(declare-const var2614!1 var1023)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {method/1028479908=([com.google.javascript.jscomp.jarjar.com.google.common.eventbus.Subscriber], java.lang.reflect.Method), target/1028479908=([com.google.javascript.jscomp.jarjar.com.google.common.eventbus.Subscriber], java.lang.Object), arr-var2547-init=([], java.lang.Object[]), var644-init=([], java.lang.Error), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/107190690=([java.lang.Error, java.lang.String, java.lang.Throwable], void), cast-from-var1023-to-var1586=([java.lang.IllegalAccessException], java.lang.Throwable)}
; {var977=com.google.javascript.jscomp.jarjar.com.google.common.eventbus.Subscriber, var1800=r0, var2547=java.lang.Object, var3739=r2, var405=java.lang.reflect.Method, var918=$r3, var3124=$r4, var14=$r1, var1023=java.lang.IllegalAccessException, var2614=$r10, var644=java.lang.Error, var755=$r11, var809=$r12, var3601=$r13, var2325=$r14, var2639=$r15, var1586=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.common.eventbus.Subscriber=var977, r0=var1800, java.lang.Object=var2547, r2=var3739, java.lang.reflect.Method=var405, $r3=var918, $r4=var3124, $r1=var14, java.lang.IllegalAccessException=var1023, $r10=var2614, java.lang.Error=var644, $r11=var755, $r12=var809, $r13=var3601, $r14=var2325, $r15=var2639, java.lang.Throwable=var1586}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.eventbus.Subscriber;	r2 := @parameter0: java.lang.Object;	$r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.eventbus.Subscriber: java.lang.reflect.Method method>;	$r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.eventbus.Subscriber: java.lang.Object target>;	$r1 = newarray (java.lang.Object)[1];	$r10 := @caughtexception;	$r11 = new java.lang.Error;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Method became inaccessible: ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.lang.Error: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r10);	throw $r11
;block_num 2