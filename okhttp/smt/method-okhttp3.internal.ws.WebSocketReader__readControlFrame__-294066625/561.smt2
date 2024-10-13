(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var651 0)
(declare-sort var3686 0)
(declare-sort var78 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun frameLength/1190156810 (var651) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun opcode/1190156810 (var651) Int)
(declare-fun var3686-init () var3686)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var78_toHexString/-554072176 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2134048064 (var3686 String) void)
(declare-const null-var651 var651)
(declare-const var2656 var651) ; Statement: r0 := @this: okhttp3.internal.ws.WebSocketReader 
(assert (not (= var2656 null-var651)))
(define-const var3140 Int (frameLength/1190156810 var2656)) ; Statement: $l0 = r0.<okhttp3.internal.ws.WebSocketReader: long frameLength> 
(define-const var1810 Int (ite (> var3140 0) 1 (ite (< var3140 0) (- 1) 0))) ; Statement: $b1 = $l0 cmp 0L 
(define-const var2409 Int (cast-from-Int-to-Int var1810)) ; Statement: $i9 = (int) $b1 
 ; Statement: if $i9 <= 0 goto $i7 = r0.<okhttp3.internal.ws.WebSocketReader: int opcode> 
(assert (<= var2409 0)) ; Cond: $i9 <= 0 
(define-const var3620 Int (opcode/1190156810 var2656)) ; Statement: $i7 = r0.<okhttp3.internal.ws.WebSocketReader: int opcode> 
 ; Statement: tableswitch($i7) {     case 8: goto s8 = 1005;     case 9: goto $r5 = r0.<okhttp3.internal.ws.WebSocketReader: okhttp3.internal.ws.WebSocketReader$FrameCallback frameCallback>;     case 10: goto $r2 = r0.<okhttp3.internal.ws.WebSocketReader: okhttp3.internal.ws.WebSocketReader$FrameCallback frameCallback>;     default: goto $r34 = new java.net.ProtocolException; } 
(assert (and (not (= var3620 10)) (and (not (= var3620 9)) (and (not (= var3620 8)) true)))) ; Intersect: Negate: Cond: $i7 == 10   and Intersect: Negate: Cond: $i7 == 9   and Intersect: Negate: Cond: $i7 == 8   and Non Conditional   
(define-const var1844 var3686 var3686-init) ; Statement: $r34 = new java.net.ProtocolException 
(define-const var613 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var613)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var613!1 String)
(assert (= var613!1 ""))
(assert true)
(define-const var1450 String (append/672562846 var613!1 "Unknown control opcode: ")) ; Statement: $r18 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown control opcode: ") 
(declare-const var613!2 String)
(assert (= var613!2 (str.++ var613!1 "Unknown control opcode: ")))
(define-const var3388 Int (opcode/1190156810 var2656)) ; Statement: $i5 = r0.<okhttp3.internal.ws.WebSocketReader: int opcode> 
(define-const var992 String (var78_toHexString/-554072176 var3388)) ; Statement: $r17 = staticinvoke <okhttp3.internal.Util: java.lang.String toHexString(int)>($i5) 
(assert true)
(define-const var2862 String (append/672562846 var1450 var992)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var1450!1 String)
(assert (= var1450!1 (str.++ var1450 var992)))
(assert true)
(define-const var950 String (toString/-2075883882 var2862)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2134048064 var1844 var950)) ; Statement: specialinvoke $r34.<java.net.ProtocolException: void <init>(java.lang.String)>($r20) 

(declare-const var1844!1 var3686)
(declare-const var950!1 String)
 ; Statement: throw $r34 
(check-sat)
(get-model)
(get-unsat-core)
; {frameLength/1190156810=([okhttp3.internal.ws.WebSocketReader], long), cast-from-Int-to-Int=([byte], int), opcode/1190156810=([okhttp3.internal.ws.WebSocketReader], int), var3686-init=([], java.net.ProtocolException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var78_toHexString/-554072176=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2134048064=([java.net.ProtocolException, java.lang.String], void)}
; {var651=okhttp3.internal.ws.WebSocketReader, var2656=r0, var3140=$l0, var1810=$b1, var2409=$i9, var3620=$i7, var3686=java.net.ProtocolException, var1844=$r34, var613=$r33, var1450=$r18, var3388=$i5, var78=okhttp3.internal.Util, var992=$r17, var2862=$r19, var950=$r20}
; {okhttp3.internal.ws.WebSocketReader=var651, r0=var2656, $l0=var3140, $b1=var1810, $i9=var2409, $i7=var3620, java.net.ProtocolException=var3686, $r34=var1844, $r33=var613, $r18=var1450, $i5=var3388, okhttp3.internal.Util=var78, $r17=var992, $r19=var2862, $r20=var950}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.ws.WebSocketReader;	$l0 = r0.<okhttp3.internal.ws.WebSocketReader: long frameLength>;	$b1 = $l0 cmp 0L;	$i9 = (int) $b1;	if $i9 <= 0 goto $i7 = r0.<okhttp3.internal.ws.WebSocketReader: int opcode>;	$i7 = r0.<okhttp3.internal.ws.WebSocketReader: int opcode>;	tableswitch($i7) {     case 8: goto s8 = 1005;     case 9: goto $r5 = r0.<okhttp3.internal.ws.WebSocketReader: okhttp3.internal.ws.WebSocketReader$FrameCallback frameCallback>;     case 10: goto $r2 = r0.<okhttp3.internal.ws.WebSocketReader: okhttp3.internal.ws.WebSocketReader$FrameCallback frameCallback>;     default: goto $r34 = new java.net.ProtocolException; };	$r34 = new java.net.ProtocolException;	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown control opcode: ");	$i5 = r0.<okhttp3.internal.ws.WebSocketReader: int opcode>;	$r17 = staticinvoke <okhttp3.internal.Util: java.lang.String toHexString(int)>($i5);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r34.<java.net.ProtocolException: void <init>(java.lang.String)>($r20);	throw $r34
;block_num 3