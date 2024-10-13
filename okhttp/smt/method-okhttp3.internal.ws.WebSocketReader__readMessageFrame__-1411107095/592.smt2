(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3925 0)
(declare-sort var3076 0)
(declare-sort var1486 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun opcode/1190156810 (var3925) Int)
(declare-fun var3076-init () var3076)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1486_toHexString/-554072176 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2134048064 (var3076 String) void)
(declare-const null-var3925 var3925)
(declare-const var2679 var3925) ; Statement: r0 := @this: okhttp3.internal.ws.WebSocketReader 
(assert (not (= var2679 null-var3925)))
(define-const var3153 Int (opcode/1190156810 var2679)) ; Statement: i0 = r0.<okhttp3.internal.ws.WebSocketReader: int opcode> 
 ; Statement: if i0 == 1 goto specialinvoke r0.<okhttp3.internal.ws.WebSocketReader: void readMessage()>() 
(assert (not (= var3153 1))) ; Negate: Cond: i0 == 1  
 ; Statement: if i0 == 2 goto specialinvoke r0.<okhttp3.internal.ws.WebSocketReader: void readMessage()>() 
(assert (not (= var3153 2))) ; Negate: Cond: i0 == 2  
(define-const var3263 var3076 var3076-init) ; Statement: $r9 = new java.net.ProtocolException 
(define-const var3523 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3523)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3523!1 String)
(assert (= var3523!1 ""))
(assert true)
(define-const var3112 String (append/672562846 var3523!1 "Unknown opcode: ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown opcode: ") 
(declare-const var3523!2 String)
(assert (= var3523!2 (str.++ var3523!1 "Unknown opcode: ")))
(define-const var1322 String (var1486_toHexString/-554072176 var3153)) ; Statement: $r11 = staticinvoke <okhttp3.internal.Util: java.lang.String toHexString(int)>(i0) 
(assert true)
(define-const var2368 String (append/672562846 var3112 var1322)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3112!1 String)
(assert (= var3112!1 (str.++ var3112 var1322)))
(assert true)
(define-const var2724 String (toString/-2075883882 var2368)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2134048064 var3263 var2724)) ; Statement: specialinvoke $r9.<java.net.ProtocolException: void <init>(java.lang.String)>($r14) 

(declare-const var3263!1 var3076)
(declare-const var2724!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {opcode/1190156810=([okhttp3.internal.ws.WebSocketReader], int), var3076-init=([], java.net.ProtocolException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1486_toHexString/-554072176=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2134048064=([java.net.ProtocolException, java.lang.String], void)}
; {var3925=okhttp3.internal.ws.WebSocketReader, var2679=r0, var3153=i0, var3076=java.net.ProtocolException, var3263=$r9, var3523=$r10, var3112=$r12, var1486=okhttp3.internal.Util, var1322=$r11, var2368=$r13, var2724=$r14}
; {okhttp3.internal.ws.WebSocketReader=var3925, r0=var2679, i0=var3153, java.net.ProtocolException=var3076, $r9=var3263, $r10=var3523, $r12=var3112, okhttp3.internal.Util=var1486, $r11=var1322, $r13=var2368, $r14=var2724}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.ws.WebSocketReader;	i0 = r0.<okhttp3.internal.ws.WebSocketReader: int opcode>;	if i0 == 1 goto specialinvoke r0.<okhttp3.internal.ws.WebSocketReader: void readMessage()>();	if i0 == 2 goto specialinvoke r0.<okhttp3.internal.ws.WebSocketReader: void readMessage()>();	$r9 = new java.net.ProtocolException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown opcode: ");	$r11 = staticinvoke <okhttp3.internal.Util: java.lang.String toHexString(int)>(i0);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.net.ProtocolException: void <init>(java.lang.String)>($r14);	throw $r9
;block_num 3