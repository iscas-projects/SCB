(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1201 0)
(declare-sort var1572 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun perMessageDeflate/-682528293 (var1201) Bool)
(declare-fun append/-388390247 (String Bool) String)
(declare-fun clientMaxWindowBits/-682528293 (var1201) Int)
(declare-fun append/-1031950772 (String var1572) String)
(declare-fun cast-from-Int-to-var1572 (Int) var1572)
(declare-fun clientNoContextTakeover/-682528293 (var1201) Bool)
(declare-fun serverMaxWindowBits/-682528293 (var1201) Int)
(declare-fun serverNoContextTakeover/-682528293 (var1201) Bool)
(declare-fun unknownValues/-682528293 (var1201) Bool)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1201 var1201)
(declare-const var336 var1201) ; Statement: r1 := @this: okhttp3.internal.ws.WebSocketExtensions 
(assert (not (= var336 null-var1201)))
(define-const var2160 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2160)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2160!1 String)
(assert (= var2160!1 ""))
(assert true)
(define-const var233 String (append/672562846 var2160!1 "WebSocketExtensions(perMessageDeflate=")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("WebSocketExtensions(perMessageDeflate=") 
(declare-const var2160!2 String)
(assert (= var2160!2 (str.++ var2160!1 "WebSocketExtensions(perMessageDeflate=")))
(define-const var2109 Bool (perMessageDeflate/-682528293 var336)) ; Statement: $z0 = r1.<okhttp3.internal.ws.WebSocketExtensions: boolean perMessageDeflate> 
(assert true)
(define-const var2602 String (append/-388390247 var233 var2109)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z0) 
(declare-const var233!1 String)
(assert (str.prefixof var233 var233!1))
(assert true)
(define-const var2606 String (append/672562846 var2602 ", clientMaxWindowBits=")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", clientMaxWindowBits=") 
(declare-const var2602!1 String)
(assert (= var2602!1 (str.++ var2602 ", clientMaxWindowBits=")))
(define-const var3989 Int (clientMaxWindowBits/-682528293 var336)) ; Statement: $r4 = r1.<okhttp3.internal.ws.WebSocketExtensions: java.lang.Integer clientMaxWindowBits> 
(assert true)
(define-const var3588 String (append/-1031950772 var2606 (cast-from-Int-to-var1572 var3989))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var2606!1 String)
(assert (str.prefixof var2606 var2606!1))
(assert true)
(define-const var3322 String (append/672562846 var3588 ", clientNoContextTakeover=")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", clientNoContextTakeover=") 
(declare-const var3588!1 String)
(assert (= var3588!1 (str.++ var3588 ", clientNoContextTakeover=")))
(define-const var3014 Bool (clientNoContextTakeover/-682528293 var336)) ; Statement: $z1 = r1.<okhttp3.internal.ws.WebSocketExtensions: boolean clientNoContextTakeover> 
(assert true)
(define-const var1681 String (append/-388390247 var3322 var3014)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z1) 
(declare-const var3322!1 String)
(assert (str.prefixof var3322 var3322!1))
(assert true)
(define-const var104 String (append/672562846 var1681 ", serverMaxWindowBits=")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", serverMaxWindowBits=") 
(declare-const var1681!1 String)
(assert (= var1681!1 (str.++ var1681 ", serverMaxWindowBits=")))
(define-const var2379 Int (serverMaxWindowBits/-682528293 var336)) ; Statement: $r9 = r1.<okhttp3.internal.ws.WebSocketExtensions: java.lang.Integer serverMaxWindowBits> 
(assert true)
(define-const var278 String (append/-1031950772 var104 (cast-from-Int-to-var1572 var2379))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9) 
(declare-const var104!1 String)
(assert (str.prefixof var104 var104!1))
(assert true)
(define-const var2138 String (append/672562846 var278 ", serverNoContextTakeover=")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", serverNoContextTakeover=") 
(declare-const var278!1 String)
(assert (= var278!1 (str.++ var278 ", serverNoContextTakeover=")))
(define-const var144 Bool (serverNoContextTakeover/-682528293 var336)) ; Statement: $z2 = r1.<okhttp3.internal.ws.WebSocketExtensions: boolean serverNoContextTakeover> 
(assert true)
(define-const var2482 String (append/-388390247 var2138 var144)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z2) 
(declare-const var2138!1 String)
(assert (str.prefixof var2138 var2138!1))
(assert true)
(define-const var2853 String (append/672562846 var2482 ", unknownValues=")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", unknownValues=") 
(declare-const var2482!1 String)
(assert (= var2482!1 (str.++ var2482 ", unknownValues=")))
(define-const var2339 Bool (unknownValues/-682528293 var336)) ; Statement: $z3 = r1.<okhttp3.internal.ws.WebSocketExtensions: boolean unknownValues> 
(assert true)
(define-const var2725 String (append/-388390247 var2853 var2339)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z3) 
(declare-const var2853!1 String)
(assert (str.prefixof var2853 var2853!1))
(assert true)
(define-const var2171 String (append/-1166366385 var2725 41)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2725!1 String)
(assert (str.prefixof var2725 var2725!1))
(assert true)
(define-const var3078 String (toString/-2075883882 var2171)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), perMessageDeflate/-682528293=([okhttp3.internal.ws.WebSocketExtensions], boolean), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), clientMaxWindowBits/-682528293=([okhttp3.internal.ws.WebSocketExtensions], java.lang.Integer), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-Int-to-var1572=([java.lang.Integer], java.lang.Object), clientNoContextTakeover/-682528293=([okhttp3.internal.ws.WebSocketExtensions], boolean), serverMaxWindowBits/-682528293=([okhttp3.internal.ws.WebSocketExtensions], java.lang.Integer), serverNoContextTakeover/-682528293=([okhttp3.internal.ws.WebSocketExtensions], boolean), unknownValues/-682528293=([okhttp3.internal.ws.WebSocketExtensions], boolean), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1201=okhttp3.internal.ws.WebSocketExtensions, var336=r1, var2160=$r0, var233=$r2, var2109=$z0, var2602=$r3, var2606=$r5, var3989=$r4, var1572=java.lang.Object, var3588=$r6, var3322=$r7, var3014=$z1, var1681=$r8, var104=$r10, var2379=$r9, var278=$r11, var2138=$r12, var144=$z2, var2482=$r13, var2853=$r14, var2339=$z3, var2725=$r15, var2171=$r16, var3078=$r17}
; {okhttp3.internal.ws.WebSocketExtensions=var1201, r1=var336, $r0=var2160, $r2=var233, $z0=var2109, $r3=var2602, $r5=var2606, $r4=var3989, java.lang.Object=var1572, $r6=var3588, $r7=var3322, $z1=var3014, $r8=var1681, $r10=var104, $r9=var2379, $r11=var278, $r12=var2138, $z2=var144, $r13=var2482, $r14=var2853, $z3=var2339, $r15=var2725, $r16=var2171, $r17=var3078}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.ws.WebSocketExtensions;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("WebSocketExtensions(perMessageDeflate=");	$z0 = r1.<okhttp3.internal.ws.WebSocketExtensions: boolean perMessageDeflate>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z0);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", clientMaxWindowBits=");	$r4 = r1.<okhttp3.internal.ws.WebSocketExtensions: java.lang.Integer clientMaxWindowBits>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", clientNoContextTakeover=");	$z1 = r1.<okhttp3.internal.ws.WebSocketExtensions: boolean clientNoContextTakeover>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z1);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", serverMaxWindowBits=");	$r9 = r1.<okhttp3.internal.ws.WebSocketExtensions: java.lang.Integer serverMaxWindowBits>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", serverNoContextTakeover=");	$z2 = r1.<okhttp3.internal.ws.WebSocketExtensions: boolean serverNoContextTakeover>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z2);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", unknownValues=");	$z3 = r1.<okhttp3.internal.ws.WebSocketExtensions: boolean unknownValues>;	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z3);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	return $r17
;block_num 1