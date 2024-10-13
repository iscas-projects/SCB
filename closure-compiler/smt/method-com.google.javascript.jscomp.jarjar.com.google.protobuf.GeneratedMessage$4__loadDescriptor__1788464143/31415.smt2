(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3171 0)
(declare-sort var565 0)
(declare-sort var44 0)
(declare-sort var2576 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var44-init () var44)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$descriptorOuterClass/-753218060 (var3171) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1642269841 (var44 String var2576) void)
(declare-fun cast-from-var565-to-var2576 (var565) var2576)
(declare-const null-var3171 var3171)
(declare-const null-var565 var565)
(declare-const var2407 var3171) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$4 
(assert (not (= var2407 null-var3171)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2803 var565) ; Statement: $r9 := @caughtexception 
(assert (not (= var2803 null-var565)))
(define-const var2486 var44 var44-init) ; Statement: $r10 = new java.lang.RuntimeException 
(define-const var800 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var800)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var800!1 String)
(assert (= var800!1 ""))
(assert true)
(define-const var3423 String (append/672562846 var800!1 "Cannot load descriptors: ")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot load descriptors: ") 
(declare-const var800!2 String)
(assert (= var800!2 (str.++ var800!1 "Cannot load descriptors: ")))
(define-const var2980 String (val$descriptorOuterClass/-753218060 var2407)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$4: java.lang.String val$descriptorOuterClass> 
(assert true)
(define-const var1875 String (append/672562846 var3423 var2980)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var3423!1 String)
(assert (= var3423!1 (str.++ var3423 var2980)))
(assert true)
(define-const var1237 String (append/672562846 var1875 " is not a valid descriptor class name")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a valid descriptor class name") 
(declare-const var1875!1 String)
(assert (= var1875!1 (str.++ var1875 " is not a valid descriptor class name")))
(assert true)
(define-const var2302 String (toString/-2075883882 var1237)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1642269841 var2486 var2302 (cast-from-var565-to-var2576 var2803))) ; Statement: specialinvoke $r10.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r9) 

(declare-const var2486!1 var44)
(declare-const var2302!1 String)
(declare-const var2803!1 var565)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var44-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), val$descriptorOuterClass/-753218060=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$4], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void), cast-from-var565-to-var2576=([java.lang.Exception], java.lang.Throwable)}
; {var3171=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$4, var2407=r0, var565=java.lang.Exception, var2803=$r9, var44=java.lang.RuntimeException, var2486=$r10, var800=$r11, var3423=$r13, var2980=$r12, var1875=$r14, var1237=$r15, var2302=$r16, var2576=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$4=var3171, r0=var2407, java.lang.Exception=var565, $r9=var2803, java.lang.RuntimeException=var44, $r10=var2486, $r11=var800, $r13=var3423, $r12=var2980, $r14=var1875, $r15=var1237, $r16=var2302, java.lang.Throwable=var2576}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$4;	$r9 := @caughtexception;	$r10 = new java.lang.RuntimeException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot load descriptors: ");	$r12 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$4: java.lang.String val$descriptorOuterClass>;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a valid descriptor class name");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r9);	throw $r10
;block_num 2