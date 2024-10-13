(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1271 0)
(declare-sort var3816 0)
(declare-sort var473 0)
(declare-sort var3566 0)
(declare-sort var1871 0)
(declare-sort var3426 0)
(declare-sort var3347 0)
(declare-sort var3850 0)
(declare-sort var1602 0)
(declare-sort var401 0)
(declare-sort var2893 0)
(declare-sort var3428 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getMessageSize/-1212581225 (var473) Int)
(declare-fun packetReader/1024604303 (var1271) var3566)
(declare-fun var3566_readMessage/-1879893095 (var3566 var3816 var3426) var1871)
(declare-fun cast-from-var473-to-var3426 (var473) var3426)
(declare-fun cast-from-var1871-to-var3347 (var1871) var3347)
(declare-fun var3850_min/-1112089438 (Int Int) Int)
(declare-fun getByteBuffer/-505169391 (var3347) (Array Int Int))
(declare-fun var1602_dumpAsHex/-862480028 ((Array Int Int) Int) String)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun isPresent/580259846 (var3816) Bool)
(declare-fun toString/1374911962 (var3347) String)
(declare-fun lastHeaderPayload/1024604303 (var1271) String)
(declare-fun packetDebugBuffer/1024604303 (var1271) var401)
(declare-fun size/1804652082 (var401) Int)
(declare-fun packetDebugBufferSize/1024604303 (var1271) var2893)
(declare-fun var2893_getValue/1633538672 (var2893) var3428)
(declare-fun cast-from-var3428-to-Int (var3428) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun addLast/1864600108 (var401 var3428) void)
(declare-fun cast-from-String-to-var3428 (String) var3428)
(declare-const null-var1271 var1271)
(declare-const null-var3816 var3816)
(declare-const null-var473 var473)
(declare-const var3770 var1271) ; Statement: r1 := @this: com.mysql.cj.protocol.a.DebugBufferingPacketReader 
(assert (not (= var3770 null-var1271)))
(declare-const var1653 var3816) ; Statement: r2 := @parameter0: java.util.Optional 
(assert (not (= var1653 null-var3816)))
(declare-const var1497 var473) ; Statement: r0 := @parameter1: com.mysql.cj.protocol.a.NativePacketHeader 
(assert (not (= var1497 null-var473)))
(assert true)
(define-const var1695 Int (getMessageSize/-1212581225 var1497)) ; Statement: i0 = virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketHeader: int getMessageSize()>() 
(define-const var2247 var3566 (packetReader/1024604303 var3770)) ; Statement: $r3 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: com.mysql.cj.protocol.MessageReader packetReader> 
(define-const var2577 var1871 (var3566_readMessage/-1879893095 var2247 var1653 (cast-from-var473-to-var3426 var1497))) ; Statement: $r4 = interfaceinvoke $r3.<com.mysql.cj.protocol.MessageReader: com.mysql.cj.protocol.Message readMessage(java.util.Optional,com.mysql.cj.protocol.MessageHeader)>(r2, r0) 
(define-const var3239 var3347 (cast-from-var1871-to-var3347 var2577)) ; Statement: r5 = (com.mysql.cj.protocol.a.NativePacketPayload) $r4 
(define-const var2407 Int (var3850_min/-1112089438 1024 var1695)) ; Statement: i1 = staticinvoke <java.lang.Math: int min(int,int)>(1024, i0) 
(assert true)
(define-const var1048 (Array Int Int) (getByteBuffer/-505169391 var3239)) ; Statement: $r6 = virtualinvoke r5.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>() 
(define-const var3962 String (var1602_dumpAsHex/-862480028 var1048 var2407)) ; Statement: r7 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r6, i1) 
(define-const var1534 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
(define-const var1445 Int (length/-134980193 var3962)) ; Statement: $i2 = virtualinvoke r7.<java.lang.String: int length()>() 
(define-const var3505 Int (+ 100 var1445)) ; Statement: $i3 = 100 + $i2 
(assert true)
;(assert (<init>/543593434 var1534 var3505)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i3) 

(declare-const var1534!1 String)
(declare-const var3505!1 Int)
(assert true)
;(assert (append/672562846 var1534!1 "Server ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Server ") 
(declare-const var1534!2 String)
(assert (= var1534!2 (str.++ var1534!1 "Server ")))
(assert true)
(define-const var131 Bool (isPresent/580259846 var1653)) ; Statement: $z0 = virtualinvoke r2.<java.util.Optional: boolean isPresent()>() 
 ; Statement: if $z0 == 0 goto $r24 = "(new) " 
(assert (= (ite var131 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3017 String "(new) ") ; Statement: $r24 = "(new) " 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1534!2 var3017)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var1534!3 String)
(assert (= var1534!3 (str.++ var1534!2 var3017)))
(assert true)
(define-const var1056 String (toString/1374911962 var3239)) ; Statement: $r9 = virtualinvoke r5.<com.mysql.cj.protocol.a.NativePacketPayload: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var1534!3 var1056)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1534!4 String)
(assert (= var1534!4 (str.++ var1534!3 var1056)))
(assert true)
;(assert (append/672562846 var1534!4 " --------------------> Client\n")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" --------------------> Client\n") 
(declare-const var1534!5 String)
(assert (= var1534!5 (str.++ var1534!4 " --------------------> Client\n")))
(assert true)
;(assert (append/672562846 var1534!5 "\nPacket payload:\n\n")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nPacket payload:\n\n") 
(declare-const var1534!6 String)
(assert (= var1534!6 (str.++ var1534!5 "\nPacket payload:\n\n")))
(define-const var726 String (lastHeaderPayload/1024604303 var3770)) ; Statement: $r10 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.lang.String lastHeaderPayload> 
(assert true)
;(assert (append/672562846 var1534!6 var726)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1534!7 String)
(assert (= var1534!7 (str.++ var1534!6 var726)))
(assert true)
;(assert (append/672562846 var1534!7 var3962)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var1534!8 String)
(assert (= var1534!8 (str.++ var1534!7 var3962)))
 ; Statement: if i1 != 1024 goto $r11 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer> 
(assert (not (= var2407 1024))) ; Cond: i1 != 1024 
(define-const var1039 var401 (packetDebugBuffer/1024604303 var3770)) ; Statement: $r11 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer> 
(assert true)
(define-const var2234 Int (size/1804652082 var1039)) ; Statement: $i4 = virtualinvoke $r11.<java.util.LinkedList: int size()>() 
(define-const var791 Int (+ var2234 1)) ; Statement: $i6 = $i4 + 1 
(define-const var1884 var2893 (packetDebugBufferSize/1024604303 var3770)) ; Statement: $r12 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: com.mysql.cj.conf.RuntimeProperty packetDebugBufferSize> 
(define-const var1553 var3428 (var2893_getValue/1633538672 var1884)) ; Statement: $r13 = interfaceinvoke $r12.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var3410 Int (cast-from-var3428-to-Int var1553)) ; Statement: $r14 = (java.lang.Integer) $r13 
(assert true)
(define-const var1345 Int (intValue/-1815674922 var3410)) ; Statement: $i5 = virtualinvoke $r14.<java.lang.Integer: int intValue()>() 
 ; Statement: if $i6 <= $i5 goto $r15 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer> 
(assert (<= var791 var1345)) ; Cond: $i6 <= $i5 
(define-const var1977 var401 (packetDebugBuffer/1024604303 var3770)) ; Statement: $r15 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer> 
(assert true)
;(assert (addLast/1864600108 var1977 (cast-from-String-to-var3428 var1534!8))) ; Statement: virtualinvoke $r15.<java.util.LinkedList: void addLast(java.lang.Object)>($r8) 

(declare-const var1977!1 var401)
(declare-const var1534!9 String)
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getMessageSize/-1212581225=([com.mysql.cj.protocol.a.NativePacketHeader], int), packetReader/1024604303=([com.mysql.cj.protocol.a.DebugBufferingPacketReader], com.mysql.cj.protocol.MessageReader), var3566_readMessage/-1879893095=([com.mysql.cj.protocol.MessageReader, java.util.Optional, com.mysql.cj.protocol.MessageHeader], com.mysql.cj.protocol.Message), cast-from-var473-to-var3426=([com.mysql.cj.protocol.a.NativePacketHeader], com.mysql.cj.protocol.MessageHeader), cast-from-var1871-to-var3347=([com.mysql.cj.protocol.Message], com.mysql.cj.protocol.a.NativePacketPayload), var3850_min/-1112089438=([int, int], int), getByteBuffer/-505169391=([com.mysql.cj.protocol.a.NativePacketPayload], byte[]), var1602_dumpAsHex/-862480028=([byte[], int], java.lang.String), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), isPresent/580259846=([java.util.Optional], boolean), toString/1374911962=([com.mysql.cj.protocol.a.NativePacketPayload], java.lang.String), lastHeaderPayload/1024604303=([com.mysql.cj.protocol.a.DebugBufferingPacketReader], java.lang.String), packetDebugBuffer/1024604303=([com.mysql.cj.protocol.a.DebugBufferingPacketReader], java.util.LinkedList), size/1804652082=([java.util.LinkedList], int), packetDebugBufferSize/1024604303=([com.mysql.cj.protocol.a.DebugBufferingPacketReader], com.mysql.cj.conf.RuntimeProperty), var2893_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var3428-to-Int=([java.lang.Object], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int), addLast/1864600108=([java.util.LinkedList, java.lang.Object], void), cast-from-String-to-var3428=([java.lang.StringBuilder], java.lang.Object)}
; {var1271=com.mysql.cj.protocol.a.DebugBufferingPacketReader, var3770=r1, var3816=java.util.Optional, var1653=r2, var473=com.mysql.cj.protocol.a.NativePacketHeader, var1497=r0, var1695=i0, var3566=com.mysql.cj.protocol.MessageReader, var2247=$r3, var1871=com.mysql.cj.protocol.Message, var3426=com.mysql.cj.protocol.MessageHeader, var2577=$r4, var3347=com.mysql.cj.protocol.a.NativePacketPayload, var3239=r5, var3850=java.lang.Math, var2407=i1, var1048=$r6, var1602=com.mysql.cj.util.StringUtils, var3962=r7, var1534=$r8, var1445=$i2, var3505=$i3, var131=$z0, var3017=$r24, var1056=$r9, var726=$r10, var401=java.util.LinkedList, var1039=$r11, var2234=$i4, var791=$i6, var2893=com.mysql.cj.conf.RuntimeProperty, var1884=$r12, var3428=java.lang.Object, var1553=$r13, var3410=$r14, var1345=$i5, var1977=$r15}
; {com.mysql.cj.protocol.a.DebugBufferingPacketReader=var1271, r1=var3770, java.util.Optional=var3816, r2=var1653, com.mysql.cj.protocol.a.NativePacketHeader=var473, r0=var1497, i0=var1695, com.mysql.cj.protocol.MessageReader=var3566, $r3=var2247, com.mysql.cj.protocol.Message=var1871, com.mysql.cj.protocol.MessageHeader=var3426, $r4=var2577, com.mysql.cj.protocol.a.NativePacketPayload=var3347, r5=var3239, java.lang.Math=var3850, i1=var2407, $r6=var1048, com.mysql.cj.util.StringUtils=var1602, r7=var3962, $r8=var1534, $i2=var1445, $i3=var3505, $z0=var131, $r24=var3017, $r9=var1056, $r10=var726, java.util.LinkedList=var401, $r11=var1039, $i4=var2234, $i6=var791, com.mysql.cj.conf.RuntimeProperty=var2893, $r12=var1884, java.lang.Object=var3428, $r13=var1553, $r14=var3410, $i5=var1345, $r15=var1977}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<com.mysql.cj.protocol.a.NativePacketPayload: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7}
;stmts r1 := @this: com.mysql.cj.protocol.a.DebugBufferingPacketReader;	r2 := @parameter0: java.util.Optional;	r0 := @parameter1: com.mysql.cj.protocol.a.NativePacketHeader;	i0 = virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketHeader: int getMessageSize()>();	$r3 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: com.mysql.cj.protocol.MessageReader packetReader>;	$r4 = interfaceinvoke $r3.<com.mysql.cj.protocol.MessageReader: com.mysql.cj.protocol.Message readMessage(java.util.Optional,com.mysql.cj.protocol.MessageHeader)>(r2, r0);	r5 = (com.mysql.cj.protocol.a.NativePacketPayload) $r4;	i1 = staticinvoke <java.lang.Math: int min(int,int)>(1024, i0);	$r6 = virtualinvoke r5.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>();	r7 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r6, i1);	$r8 = new java.lang.StringBuilder;	$i2 = virtualinvoke r7.<java.lang.String: int length()>();	$i3 = 100 + $i2;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i3);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Server ");	$z0 = virtualinvoke r2.<java.util.Optional: boolean isPresent()>();	if $z0 == 0 goto $r24 = "(new) ";	$r24 = "(new) ";	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r9 = virtualinvoke r5.<com.mysql.cj.protocol.a.NativePacketPayload: java.lang.String toString()>();	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" --------------------> Client\n");	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nPacket payload:\n\n");	$r10 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.lang.String lastHeaderPayload>;	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	if i1 != 1024 goto $r11 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer>;	$r11 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer>;	$i4 = virtualinvoke $r11.<java.util.LinkedList: int size()>();	$i6 = $i4 + 1;	$r12 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: com.mysql.cj.conf.RuntimeProperty packetDebugBufferSize>;	$r13 = interfaceinvoke $r12.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r14 = (java.lang.Integer) $r13;	$i5 = virtualinvoke $r14.<java.lang.Integer: int intValue()>();	if $i6 <= $i5 goto $r15 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer>;	$r15 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer>;	virtualinvoke $r15.<java.util.LinkedList: void addLast(java.lang.Object)>($r8);	return r5
;block_num 5