(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1340 0)
(declare-sort var3888 0)
(declare-sort var532 0)
(declare-sort var1890 0)
(declare-sort var3935 0)
(declare-sort var1708 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var532_getString/-1547297038 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getByteBuffer/-505169391 (var3888) (Array Int Int))
(declare-fun var1890_dumpAsHex/-862480028 ((Array Int Int) Int) String)
(declare-fun log/-375459336 (var1340) var3935)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3935_logTrace/649884049 (var3935 var1708) void)
(declare-fun cast-from-String-to-var1708 (String) var1708)
(declare-const null-var1340 var1340)
(declare-const null-var3888 var3888)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var2479 var1340) ; Statement: r5 := @this: com.mysql.cj.protocol.a.TracingPacketReader 
(assert (not (= var2479 null-var1340)))
(declare-const var3122 var3888) ; Statement: r2 := @parameter0: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var3122 null-var3888)))
(declare-const var2661 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2661 null-Int)))
(declare-const var288 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var288 null-Bool)))
(define-const var437 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var437)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var437!1 String)
(assert (= var437!1 ""))
 ; Statement: if z0 == 0 goto $r10 = "PacketReader.6" 
(assert (= (ite var288 1 0) 0)) ; Cond: z0 == 0 
(define-const var2228 String "PacketReader.6") ; Statement: $r10 = "PacketReader.6" 
(assert true) ; Non Conditional
(define-const var3909 String (var532_getString/-1547297038 var2228)) ; Statement: $r1 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>($r10) 
(assert true)
;(assert (append/672562846 var437!1 var3909)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var437!2 String)
(assert (= var437!2 (str.++ var437!1 var3909)))
(assert true)
(define-const var2163 (Array Int Int) (getByteBuffer/-505169391 var3122)) ; Statement: $r3 = virtualinvoke r2.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>() 
 ; Statement: if i0 >= 1024 goto $i1 = 1024 
(assert (>= var2661 1024)) ; Cond: i0 >= 1024 
(define-const var570 Int 1024) ; Statement: $i1 = 1024 
(assert true) ; Non Conditional
(define-const var1125 String (var1890_dumpAsHex/-862480028 var2163 var570)) ; Statement: $r4 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r3, $i1) 
(assert true)
;(assert (append/672562846 var437!2 var1125)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var437!3 String)
(assert (= var437!3 (str.++ var437!2 var1125)))
 ; Statement: if i0 <= 1024 goto $r6 = r5.<com.mysql.cj.protocol.a.TracingPacketReader: com.mysql.cj.log.Log log> 
(assert (<= var2661 1024)) ; Cond: i0 <= 1024 
(define-const var3780 var3935 (log/-375459336 var2479)) ; Statement: $r6 = r5.<com.mysql.cj.protocol.a.TracingPacketReader: com.mysql.cj.log.Log log> 
(assert true)
(define-const var3471 String (toString/-2075883882 var437!3)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3935_logTrace/649884049 var3780 (cast-from-String-to-var1708 var3471))) ; Statement: interfaceinvoke $r6.<com.mysql.cj.log.Log: void logTrace(java.lang.Object)>($r7) 

(declare-const var3780!1 var3935)
(declare-const var3471!1 String)
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var532_getString/-1547297038=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getByteBuffer/-505169391=([com.mysql.cj.protocol.a.NativePacketPayload], byte[]), var1890_dumpAsHex/-862480028=([byte[], int], java.lang.String), log/-375459336=([com.mysql.cj.protocol.a.TracingPacketReader], com.mysql.cj.log.Log), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3935_logTrace/649884049=([com.mysql.cj.log.Log, java.lang.Object], void), cast-from-String-to-var1708=([java.lang.String], java.lang.Object)}
; {var1340=com.mysql.cj.protocol.a.TracingPacketReader, var2479=r5, var3888=com.mysql.cj.protocol.a.NativePacketPayload, var3122=r2, var2661=i0, var288=z0, var437=$r0, var2228=$r10, var532=com.mysql.cj.Messages, var3909=$r1, var2163=$r3, var570=$i1, var1890=com.mysql.cj.util.StringUtils, var1125=$r4, var3935=com.mysql.cj.log.Log, var3780=$r6, var3471=$r7, var1708=java.lang.Object}
; {com.mysql.cj.protocol.a.TracingPacketReader=var1340, r5=var2479, com.mysql.cj.protocol.a.NativePacketPayload=var3888, r2=var3122, i0=var2661, z0=var288, $r0=var437, $r10=var2228, com.mysql.cj.Messages=var532, $r1=var3909, $r3=var2163, $i1=var570, com.mysql.cj.util.StringUtils=var1890, $r4=var1125, com.mysql.cj.log.Log=var3935, $r6=var3780, $r7=var3471, java.lang.Object=var1708}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.mysql.cj.protocol.a.TracingPacketReader;	r2 := @parameter0: com.mysql.cj.protocol.a.NativePacketPayload;	i0 := @parameter1: int;	z0 := @parameter2: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r10 = "PacketReader.6";	$r10 = "PacketReader.6";	$r1 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>($r10);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r3 = virtualinvoke r2.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>();	if i0 >= 1024 goto $i1 = 1024;	$i1 = 1024;	$r4 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r3, $i1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	if i0 <= 1024 goto $r6 = r5.<com.mysql.cj.protocol.a.TracingPacketReader: com.mysql.cj.log.Log log>;	$r6 = r5.<com.mysql.cj.protocol.a.TracingPacketReader: com.mysql.cj.log.Log log>;	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r6.<com.mysql.cj.log.Log: void logTrace(java.lang.Object)>($r7);	return r2
;block_num 6