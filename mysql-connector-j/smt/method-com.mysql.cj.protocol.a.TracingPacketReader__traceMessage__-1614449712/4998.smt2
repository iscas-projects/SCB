(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2499 0)
(declare-sort var1705 0)
(declare-sort var3751 0)
(declare-sort var157 0)
(declare-sort var2843 0)
(declare-sort var3485 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3751_getString/-1547297038 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getByteBuffer/-505169391 (var1705) (Array Int Int))
(declare-fun var157_dumpAsHex/-862480028 ((Array Int Int) Int) String)
(declare-fun log/-375459336 (var2499) var2843)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2843_logTrace/649884049 (var2843 var3485) void)
(declare-fun cast-from-String-to-var3485 (String) var3485)
(declare-const null-var2499 var2499)
(declare-const null-var1705 var1705)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var1224 var2499) ; Statement: r5 := @this: com.mysql.cj.protocol.a.TracingPacketReader 
(assert (not (= var1224 null-var2499)))
(declare-const var1022 var1705) ; Statement: r2 := @parameter0: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var1022 null-var1705)))
(declare-const var3967 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3967 null-Int)))
(declare-const var1570 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var1570 null-Bool)))
(define-const var2096 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2096)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2096!1 String)
(assert (= var2096!1 ""))
 ; Statement: if z0 == 0 goto $r10 = "PacketReader.6" 
(assert (= (ite var1570 1 0) 0)) ; Cond: z0 == 0 
(define-const var2373 String "PacketReader.6") ; Statement: $r10 = "PacketReader.6" 
(assert true) ; Non Conditional
(define-const var2791 String (var3751_getString/-1547297038 var2373)) ; Statement: $r1 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>($r10) 
(assert true)
;(assert (append/672562846 var2096!1 var2791)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var2096!2 String)
(assert (= var2096!2 (str.++ var2096!1 var2791)))
(assert true)
(define-const var514 (Array Int Int) (getByteBuffer/-505169391 var1022)) ; Statement: $r3 = virtualinvoke r2.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>() 
 ; Statement: if i0 >= 1024 goto $i1 = 1024 
(assert (not (>= var3967 1024))) ; Negate: Cond: i0 >= 1024  
(define-const var3919 Int var3967) ; Statement: $i1 = i0 
 ; Statement: goto [?= $r4 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r3, $i1)] 
(assert true) ; Non Conditional
(define-const var2070 String (var157_dumpAsHex/-862480028 var514 var3919)) ; Statement: $r4 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r3, $i1) 
(assert true)
;(assert (append/672562846 var2096!2 var2070)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2096!3 String)
(assert (= var2096!3 (str.++ var2096!2 var2070)))
 ; Statement: if i0 <= 1024 goto $r6 = r5.<com.mysql.cj.protocol.a.TracingPacketReader: com.mysql.cj.log.Log log> 
(assert (<= var3967 1024)) ; Cond: i0 <= 1024 
(define-const var2058 var2843 (log/-375459336 var1224)) ; Statement: $r6 = r5.<com.mysql.cj.protocol.a.TracingPacketReader: com.mysql.cj.log.Log log> 
(assert true)
(define-const var3604 String (toString/-2075883882 var2096!3)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2843_logTrace/649884049 var2058 (cast-from-String-to-var3485 var3604))) ; Statement: interfaceinvoke $r6.<com.mysql.cj.log.Log: void logTrace(java.lang.Object)>($r7) 

(declare-const var2058!1 var2843)
(declare-const var3604!1 String)
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3751_getString/-1547297038=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getByteBuffer/-505169391=([com.mysql.cj.protocol.a.NativePacketPayload], byte[]), var157_dumpAsHex/-862480028=([byte[], int], java.lang.String), log/-375459336=([com.mysql.cj.protocol.a.TracingPacketReader], com.mysql.cj.log.Log), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2843_logTrace/649884049=([com.mysql.cj.log.Log, java.lang.Object], void), cast-from-String-to-var3485=([java.lang.String], java.lang.Object)}
; {var2499=com.mysql.cj.protocol.a.TracingPacketReader, var1224=r5, var1705=com.mysql.cj.protocol.a.NativePacketPayload, var1022=r2, var3967=i0, var1570=z0, var2096=$r0, var2373=$r10, var3751=com.mysql.cj.Messages, var2791=$r1, var514=$r3, var3919=$i1, var157=com.mysql.cj.util.StringUtils, var2070=$r4, var2843=com.mysql.cj.log.Log, var2058=$r6, var3604=$r7, var3485=java.lang.Object}
; {com.mysql.cj.protocol.a.TracingPacketReader=var2499, r5=var1224, com.mysql.cj.protocol.a.NativePacketPayload=var1705, r2=var1022, i0=var3967, z0=var1570, $r0=var2096, $r10=var2373, com.mysql.cj.Messages=var3751, $r1=var2791, $r3=var514, $i1=var3919, com.mysql.cj.util.StringUtils=var157, $r4=var2070, com.mysql.cj.log.Log=var2843, $r6=var2058, $r7=var3604, java.lang.Object=var3485}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.mysql.cj.protocol.a.TracingPacketReader;	r2 := @parameter0: com.mysql.cj.protocol.a.NativePacketPayload;	i0 := @parameter1: int;	z0 := @parameter2: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r10 = "PacketReader.6";	$r10 = "PacketReader.6";	$r1 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>($r10);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r3 = virtualinvoke r2.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>();	if i0 >= 1024 goto $i1 = 1024;	$i1 = i0;	goto [?= $r4 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r3, $i1)];	$r4 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r3, $i1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	if i0 <= 1024 goto $r6 = r5.<com.mysql.cj.protocol.a.TracingPacketReader: com.mysql.cj.log.Log log>;	$r6 = r5.<com.mysql.cj.protocol.a.TracingPacketReader: com.mysql.cj.log.Log log>;	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r6.<com.mysql.cj.log.Log: void logTrace(java.lang.Object)>($r7);	return r2
;block_num 6