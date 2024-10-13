(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var158 0)
(declare-sort var1051 0)
(declare-sort var3966 0)
(declare-sort var3718 0)
(declare-sort var3212 0)
(declare-sort var1342 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3966_getString/-1547297038 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getByteBuffer/-505169391 (var1051) (Array Int Int))
(declare-fun var3718_dumpAsHex/-862480028 ((Array Int Int) Int) String)
(declare-fun log/-375459336 (var158) var3212)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3212_logTrace/649884049 (var3212 var1342) void)
(declare-fun cast-from-String-to-var1342 (String) var1342)
(declare-const null-var158 var158)
(declare-const null-var1051 var1051)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var3668 var158) ; Statement: r5 := @this: com.mysql.cj.protocol.a.TracingPacketReader 
(assert (not (= var3668 null-var158)))
(declare-const var3842 var1051) ; Statement: r2 := @parameter0: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var3842 null-var1051)))
(declare-const var1813 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1813 null-Int)))
(declare-const var3857 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3857 null-Bool)))
(define-const var352 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var352)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var352!1 String)
(assert (= var352!1 ""))
 ; Statement: if z0 == 0 goto $r10 = "PacketReader.6" 
(assert (not (= (ite var3857 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3565 String "PacketReader.5") ; Statement: $r10 = "PacketReader.5" 
 ; Statement: goto [?= $r1 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>($r10)] 
(assert true) ; Non Conditional
(define-const var3525 String (var3966_getString/-1547297038 var3565)) ; Statement: $r1 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>($r10) 
(assert true)
;(assert (append/672562846 var352!1 var3525)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var352!2 String)
(assert (= var352!2 (str.++ var352!1 var3525)))
(assert true)
(define-const var3113 (Array Int Int) (getByteBuffer/-505169391 var3842)) ; Statement: $r3 = virtualinvoke r2.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>() 
 ; Statement: if i0 >= 1024 goto $i1 = 1024 
(assert (not (>= var1813 1024))) ; Negate: Cond: i0 >= 1024  
(define-const var1181 Int var1813) ; Statement: $i1 = i0 
 ; Statement: goto [?= $r4 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r3, $i1)] 
(assert true) ; Non Conditional
(define-const var3878 String (var3718_dumpAsHex/-862480028 var3113 var1181)) ; Statement: $r4 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r3, $i1) 
(assert true)
;(assert (append/672562846 var352!2 var3878)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var352!3 String)
(assert (= var352!3 (str.++ var352!2 var3878)))
 ; Statement: if i0 <= 1024 goto $r6 = r5.<com.mysql.cj.protocol.a.TracingPacketReader: com.mysql.cj.log.Log log> 
(assert (<= var1813 1024)) ; Cond: i0 <= 1024 
(define-const var2671 var3212 (log/-375459336 var3668)) ; Statement: $r6 = r5.<com.mysql.cj.protocol.a.TracingPacketReader: com.mysql.cj.log.Log log> 
(assert true)
(define-const var1315 String (toString/-2075883882 var352!3)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3212_logTrace/649884049 var2671 (cast-from-String-to-var1342 var1315))) ; Statement: interfaceinvoke $r6.<com.mysql.cj.log.Log: void logTrace(java.lang.Object)>($r7) 

(declare-const var2671!1 var3212)
(declare-const var1315!1 String)
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3966_getString/-1547297038=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getByteBuffer/-505169391=([com.mysql.cj.protocol.a.NativePacketPayload], byte[]), var3718_dumpAsHex/-862480028=([byte[], int], java.lang.String), log/-375459336=([com.mysql.cj.protocol.a.TracingPacketReader], com.mysql.cj.log.Log), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3212_logTrace/649884049=([com.mysql.cj.log.Log, java.lang.Object], void), cast-from-String-to-var1342=([java.lang.String], java.lang.Object)}
; {var158=com.mysql.cj.protocol.a.TracingPacketReader, var3668=r5, var1051=com.mysql.cj.protocol.a.NativePacketPayload, var3842=r2, var1813=i0, var3857=z0, var352=$r0, var3565=$r10, var3966=com.mysql.cj.Messages, var3525=$r1, var3113=$r3, var1181=$i1, var3718=com.mysql.cj.util.StringUtils, var3878=$r4, var3212=com.mysql.cj.log.Log, var2671=$r6, var1315=$r7, var1342=java.lang.Object}
; {com.mysql.cj.protocol.a.TracingPacketReader=var158, r5=var3668, com.mysql.cj.protocol.a.NativePacketPayload=var1051, r2=var3842, i0=var1813, z0=var3857, $r0=var352, $r10=var3565, com.mysql.cj.Messages=var3966, $r1=var3525, $r3=var3113, $i1=var1181, com.mysql.cj.util.StringUtils=var3718, $r4=var3878, com.mysql.cj.log.Log=var3212, $r6=var2671, $r7=var1315, java.lang.Object=var1342}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.mysql.cj.protocol.a.TracingPacketReader;	r2 := @parameter0: com.mysql.cj.protocol.a.NativePacketPayload;	i0 := @parameter1: int;	z0 := @parameter2: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r10 = "PacketReader.6";	$r10 = "PacketReader.5";	goto [?= $r1 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>($r10)];	$r1 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>($r10);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r3 = virtualinvoke r2.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>();	if i0 >= 1024 goto $i1 = 1024;	$i1 = i0;	goto [?= $r4 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r3, $i1)];	$r4 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r3, $i1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	if i0 <= 1024 goto $r6 = r5.<com.mysql.cj.protocol.a.TracingPacketReader: com.mysql.cj.log.Log log>;	$r6 = r5.<com.mysql.cj.protocol.a.TracingPacketReader: com.mysql.cj.log.Log log>;	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r6.<com.mysql.cj.log.Log: void logTrace(java.lang.Object)>($r7);	return r2
;block_num 6