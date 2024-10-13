(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var213 0)
(declare-sort var1232 0)
(declare-sort var3280 0)
(declare-sort var911 0)
(declare-sort var3357 0)
(declare-sort var297 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3280_getString/-1547297038 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getByteBuffer/-505169391 (var1232) (Array Int Int))
(declare-fun var911_dumpAsHex/-862480028 ((Array Int Int) Int) String)
(declare-fun log/-375459336 (var213) var3357)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3357_logTrace/649884049 (var3357 var297) void)
(declare-fun cast-from-String-to-var297 (String) var297)
(declare-const null-var213 var213)
(declare-const null-var1232 var1232)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var1763 var213) ; Statement: r5 := @this: com.mysql.cj.protocol.a.TracingPacketReader 
(assert (not (= var1763 null-var213)))
(declare-const var826 var1232) ; Statement: r2 := @parameter0: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var826 null-var1232)))
(declare-const var1034 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1034 null-Int)))
(declare-const var467 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var467 null-Bool)))
(define-const var1890 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1890)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1890!1 String)
(assert (= var1890!1 ""))
 ; Statement: if z0 == 0 goto $r10 = "PacketReader.6" 
(assert (not (= (ite var467 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2917 String "PacketReader.5") ; Statement: $r10 = "PacketReader.5" 
 ; Statement: goto [?= $r1 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>($r10)] 
(assert true) ; Non Conditional
(define-const var3854 String (var3280_getString/-1547297038 var2917)) ; Statement: $r1 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>($r10) 
(assert true)
;(assert (append/672562846 var1890!1 var3854)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var1890!2 String)
(assert (= var1890!2 (str.++ var1890!1 var3854)))
(assert true)
(define-const var102 (Array Int Int) (getByteBuffer/-505169391 var826)) ; Statement: $r3 = virtualinvoke r2.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>() 
 ; Statement: if i0 >= 1024 goto $i1 = 1024 
(assert (>= var1034 1024)) ; Cond: i0 >= 1024 
(define-const var419 Int 1024) ; Statement: $i1 = 1024 
(assert true) ; Non Conditional
(define-const var914 String (var911_dumpAsHex/-862480028 var102 var419)) ; Statement: $r4 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r3, $i1) 
(assert true)
;(assert (append/672562846 var1890!2 var914)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1890!3 String)
(assert (= var1890!3 (str.++ var1890!2 var914)))
 ; Statement: if i0 <= 1024 goto $r6 = r5.<com.mysql.cj.protocol.a.TracingPacketReader: com.mysql.cj.log.Log log> 
(assert (<= var1034 1024)) ; Cond: i0 <= 1024 
(define-const var2700 var3357 (log/-375459336 var1763)) ; Statement: $r6 = r5.<com.mysql.cj.protocol.a.TracingPacketReader: com.mysql.cj.log.Log log> 
(assert true)
(define-const var3423 String (toString/-2075883882 var1890!3)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3357_logTrace/649884049 var2700 (cast-from-String-to-var297 var3423))) ; Statement: interfaceinvoke $r6.<com.mysql.cj.log.Log: void logTrace(java.lang.Object)>($r7) 

(declare-const var2700!1 var3357)
(declare-const var3423!1 String)
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3280_getString/-1547297038=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getByteBuffer/-505169391=([com.mysql.cj.protocol.a.NativePacketPayload], byte[]), var911_dumpAsHex/-862480028=([byte[], int], java.lang.String), log/-375459336=([com.mysql.cj.protocol.a.TracingPacketReader], com.mysql.cj.log.Log), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3357_logTrace/649884049=([com.mysql.cj.log.Log, java.lang.Object], void), cast-from-String-to-var297=([java.lang.String], java.lang.Object)}
; {var213=com.mysql.cj.protocol.a.TracingPacketReader, var1763=r5, var1232=com.mysql.cj.protocol.a.NativePacketPayload, var826=r2, var1034=i0, var467=z0, var1890=$r0, var2917=$r10, var3280=com.mysql.cj.Messages, var3854=$r1, var102=$r3, var419=$i1, var911=com.mysql.cj.util.StringUtils, var914=$r4, var3357=com.mysql.cj.log.Log, var2700=$r6, var3423=$r7, var297=java.lang.Object}
; {com.mysql.cj.protocol.a.TracingPacketReader=var213, r5=var1763, com.mysql.cj.protocol.a.NativePacketPayload=var1232, r2=var826, i0=var1034, z0=var467, $r0=var1890, $r10=var2917, com.mysql.cj.Messages=var3280, $r1=var3854, $r3=var102, $i1=var419, com.mysql.cj.util.StringUtils=var911, $r4=var914, com.mysql.cj.log.Log=var3357, $r6=var2700, $r7=var3423, java.lang.Object=var297}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.mysql.cj.protocol.a.TracingPacketReader;	r2 := @parameter0: com.mysql.cj.protocol.a.NativePacketPayload;	i0 := @parameter1: int;	z0 := @parameter2: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r10 = "PacketReader.6";	$r10 = "PacketReader.5";	goto [?= $r1 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>($r10)];	$r1 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>($r10);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r3 = virtualinvoke r2.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>();	if i0 >= 1024 goto $i1 = 1024;	$i1 = 1024;	$r4 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r3, $i1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	if i0 <= 1024 goto $r6 = r5.<com.mysql.cj.protocol.a.TracingPacketReader: com.mysql.cj.log.Log log>;	$r6 = r5.<com.mysql.cj.protocol.a.TracingPacketReader: com.mysql.cj.log.Log log>;	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r6.<com.mysql.cj.log.Log: void logTrace(java.lang.Object)>($r7);	return r2
;block_num 6