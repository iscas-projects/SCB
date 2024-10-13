(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1406 0)
(declare-sort var3422 0)
(declare-sort var670 0)
(declare-sort var3534 0)
(declare-sort var2167 0)
(declare-sort var1359 0)
(declare-sort var142 0)
(declare-sort var3847 0)
(declare-sort var1713 0)
(declare-sort var1030 0)
(declare-sort var3269 0)
(declare-sort var1007 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getMessageSize/-1212581225 (var670) Int)
(declare-fun packetReader/1024604303 (var1406) var3534)
(declare-fun var3534_readMessage/-1879893095 (var3534 var3422 var1359) var2167)
(declare-fun cast-from-var670-to-var1359 (var670) var1359)
(declare-fun cast-from-var2167-to-var142 (var2167) var142)
(declare-fun var3847_min/-1112089438 (Int Int) Int)
(declare-fun getByteBuffer/-505169391 (var142) (Array Int Int))
(declare-fun var1713_dumpAsHex/-862480028 ((Array Int Int) Int) String)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun isPresent/580259846 (var3422) Bool)
(declare-fun toString/1374911962 (var142) String)
(declare-fun lastHeaderPayload/1024604303 (var1406) String)
(declare-fun packetDebugBuffer/1024604303 (var1406) var1030)
(declare-fun size/1804652082 (var1030) Int)
(declare-fun packetDebugBufferSize/1024604303 (var1406) var3269)
(declare-fun var3269_getValue/1633538672 (var3269) var1007)
(declare-fun cast-from-var1007-to-Int (var1007) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun addLast/1864600108 (var1030 var1007) void)
(declare-fun cast-from-String-to-var1007 (String) var1007)
(declare-const null-var1406 var1406)
(declare-const null-var3422 var3422)
(declare-const null-var670 var670)
(declare-const var1916 var1406) ; Statement: r1 := @this: com.mysql.cj.protocol.a.DebugBufferingPacketReader 
(assert (not (= var1916 null-var1406)))
(declare-const var732 var3422) ; Statement: r2 := @parameter0: java.util.Optional 
(assert (not (= var732 null-var3422)))
(declare-const var3851 var670) ; Statement: r0 := @parameter1: com.mysql.cj.protocol.a.NativePacketHeader 
(assert (not (= var3851 null-var670)))
(assert true)
(define-const var794 Int (getMessageSize/-1212581225 var3851)) ; Statement: i0 = virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketHeader: int getMessageSize()>() 
(define-const var2042 var3534 (packetReader/1024604303 var1916)) ; Statement: $r3 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: com.mysql.cj.protocol.MessageReader packetReader> 
(define-const var1392 var2167 (var3534_readMessage/-1879893095 var2042 var732 (cast-from-var670-to-var1359 var3851))) ; Statement: $r4 = interfaceinvoke $r3.<com.mysql.cj.protocol.MessageReader: com.mysql.cj.protocol.Message readMessage(java.util.Optional,com.mysql.cj.protocol.MessageHeader)>(r2, r0) 
(define-const var2435 var142 (cast-from-var2167-to-var142 var1392)) ; Statement: r5 = (com.mysql.cj.protocol.a.NativePacketPayload) $r4 
(define-const var2193 Int (var3847_min/-1112089438 1024 var794)) ; Statement: i1 = staticinvoke <java.lang.Math: int min(int,int)>(1024, i0) 
(assert true)
(define-const var2101 (Array Int Int) (getByteBuffer/-505169391 var2435)) ; Statement: $r6 = virtualinvoke r5.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>() 
(define-const var2497 String (var1713_dumpAsHex/-862480028 var2101 var2193)) ; Statement: r7 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r6, i1) 
(define-const var1787 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
(define-const var666 Int (length/-134980193 var2497)) ; Statement: $i2 = virtualinvoke r7.<java.lang.String: int length()>() 
(define-const var419 Int (+ 100 var666)) ; Statement: $i3 = 100 + $i2 
(assert true)
;(assert (<init>/543593434 var1787 var419)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i3) 

(declare-const var1787!1 String)
(declare-const var419!1 Int)
(assert true)
;(assert (append/672562846 var1787!1 "Server ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Server ") 
(declare-const var1787!2 String)
(assert (= var1787!2 (str.++ var1787!1 "Server ")))
(assert true)
(define-const var2598 Bool (isPresent/580259846 var732)) ; Statement: $z0 = virtualinvoke r2.<java.util.Optional: boolean isPresent()>() 
 ; Statement: if $z0 == 0 goto $r24 = "(new) " 
(assert (not (= (ite var2598 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1857 String "(re-used) ") ; Statement: $r24 = "(re-used) " 
 ; Statement: goto [?= virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1787!2 var1857)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var1787!3 String)
(assert (= var1787!3 (str.++ var1787!2 var1857)))
(assert true)
(define-const var1604 String (toString/1374911962 var2435)) ; Statement: $r9 = virtualinvoke r5.<com.mysql.cj.protocol.a.NativePacketPayload: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var1787!3 var1604)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1787!4 String)
(assert (= var1787!4 (str.++ var1787!3 var1604)))
(assert true)
;(assert (append/672562846 var1787!4 " --------------------> Client\n")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" --------------------> Client\n") 
(declare-const var1787!5 String)
(assert (= var1787!5 (str.++ var1787!4 " --------------------> Client\n")))
(assert true)
;(assert (append/672562846 var1787!5 "\nPacket payload:\n\n")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nPacket payload:\n\n") 
(declare-const var1787!6 String)
(assert (= var1787!6 (str.++ var1787!5 "\nPacket payload:\n\n")))
(define-const var3668 String (lastHeaderPayload/1024604303 var1916)) ; Statement: $r10 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.lang.String lastHeaderPayload> 
(assert true)
;(assert (append/672562846 var1787!6 var3668)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1787!7 String)
(assert (= var1787!7 (str.++ var1787!6 var3668)))
(assert true)
;(assert (append/672562846 var1787!7 var2497)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var1787!8 String)
(assert (= var1787!8 (str.++ var1787!7 var2497)))
 ; Statement: if i1 != 1024 goto $r11 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer> 
(assert (not (= var2193 1024))) ; Cond: i1 != 1024 
(define-const var1096 var1030 (packetDebugBuffer/1024604303 var1916)) ; Statement: $r11 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer> 
(assert true)
(define-const var3861 Int (size/1804652082 var1096)) ; Statement: $i4 = virtualinvoke $r11.<java.util.LinkedList: int size()>() 
(define-const var2759 Int (+ var3861 1)) ; Statement: $i6 = $i4 + 1 
(define-const var3864 var3269 (packetDebugBufferSize/1024604303 var1916)) ; Statement: $r12 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: com.mysql.cj.conf.RuntimeProperty packetDebugBufferSize> 
(define-const var1719 var1007 (var3269_getValue/1633538672 var3864)) ; Statement: $r13 = interfaceinvoke $r12.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2992 Int (cast-from-var1007-to-Int var1719)) ; Statement: $r14 = (java.lang.Integer) $r13 
(assert true)
(define-const var3789 Int (intValue/-1815674922 var2992)) ; Statement: $i5 = virtualinvoke $r14.<java.lang.Integer: int intValue()>() 
 ; Statement: if $i6 <= $i5 goto $r15 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer> 
(assert (<= var2759 var3789)) ; Cond: $i6 <= $i5 
(define-const var739 var1030 (packetDebugBuffer/1024604303 var1916)) ; Statement: $r15 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer> 
(assert true)
;(assert (addLast/1864600108 var739 (cast-from-String-to-var1007 var1787!8))) ; Statement: virtualinvoke $r15.<java.util.LinkedList: void addLast(java.lang.Object)>($r8) 

(declare-const var739!1 var1030)
(declare-const var1787!9 String)
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getMessageSize/-1212581225=([com.mysql.cj.protocol.a.NativePacketHeader], int), packetReader/1024604303=([com.mysql.cj.protocol.a.DebugBufferingPacketReader], com.mysql.cj.protocol.MessageReader), var3534_readMessage/-1879893095=([com.mysql.cj.protocol.MessageReader, java.util.Optional, com.mysql.cj.protocol.MessageHeader], com.mysql.cj.protocol.Message), cast-from-var670-to-var1359=([com.mysql.cj.protocol.a.NativePacketHeader], com.mysql.cj.protocol.MessageHeader), cast-from-var2167-to-var142=([com.mysql.cj.protocol.Message], com.mysql.cj.protocol.a.NativePacketPayload), var3847_min/-1112089438=([int, int], int), getByteBuffer/-505169391=([com.mysql.cj.protocol.a.NativePacketPayload], byte[]), var1713_dumpAsHex/-862480028=([byte[], int], java.lang.String), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), isPresent/580259846=([java.util.Optional], boolean), toString/1374911962=([com.mysql.cj.protocol.a.NativePacketPayload], java.lang.String), lastHeaderPayload/1024604303=([com.mysql.cj.protocol.a.DebugBufferingPacketReader], java.lang.String), packetDebugBuffer/1024604303=([com.mysql.cj.protocol.a.DebugBufferingPacketReader], java.util.LinkedList), size/1804652082=([java.util.LinkedList], int), packetDebugBufferSize/1024604303=([com.mysql.cj.protocol.a.DebugBufferingPacketReader], com.mysql.cj.conf.RuntimeProperty), var3269_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var1007-to-Int=([java.lang.Object], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int), addLast/1864600108=([java.util.LinkedList, java.lang.Object], void), cast-from-String-to-var1007=([java.lang.StringBuilder], java.lang.Object)}
; {var1406=com.mysql.cj.protocol.a.DebugBufferingPacketReader, var1916=r1, var3422=java.util.Optional, var732=r2, var670=com.mysql.cj.protocol.a.NativePacketHeader, var3851=r0, var794=i0, var3534=com.mysql.cj.protocol.MessageReader, var2042=$r3, var2167=com.mysql.cj.protocol.Message, var1359=com.mysql.cj.protocol.MessageHeader, var1392=$r4, var142=com.mysql.cj.protocol.a.NativePacketPayload, var2435=r5, var3847=java.lang.Math, var2193=i1, var2101=$r6, var1713=com.mysql.cj.util.StringUtils, var2497=r7, var1787=$r8, var666=$i2, var419=$i3, var2598=$z0, var1857=$r24, var1604=$r9, var3668=$r10, var1030=java.util.LinkedList, var1096=$r11, var3861=$i4, var2759=$i6, var3269=com.mysql.cj.conf.RuntimeProperty, var3864=$r12, var1007=java.lang.Object, var1719=$r13, var2992=$r14, var3789=$i5, var739=$r15}
; {com.mysql.cj.protocol.a.DebugBufferingPacketReader=var1406, r1=var1916, java.util.Optional=var3422, r2=var732, com.mysql.cj.protocol.a.NativePacketHeader=var670, r0=var3851, i0=var794, com.mysql.cj.protocol.MessageReader=var3534, $r3=var2042, com.mysql.cj.protocol.Message=var2167, com.mysql.cj.protocol.MessageHeader=var1359, $r4=var1392, com.mysql.cj.protocol.a.NativePacketPayload=var142, r5=var2435, java.lang.Math=var3847, i1=var2193, $r6=var2101, com.mysql.cj.util.StringUtils=var1713, r7=var2497, $r8=var1787, $i2=var666, $i3=var419, $z0=var2598, $r24=var1857, $r9=var1604, $r10=var3668, java.util.LinkedList=var1030, $r11=var1096, $i4=var3861, $i6=var2759, com.mysql.cj.conf.RuntimeProperty=var3269, $r12=var3864, java.lang.Object=var1007, $r13=var1719, $r14=var2992, $i5=var3789, $r15=var739}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<com.mysql.cj.protocol.a.NativePacketPayload: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7}
;stmts r1 := @this: com.mysql.cj.protocol.a.DebugBufferingPacketReader;	r2 := @parameter0: java.util.Optional;	r0 := @parameter1: com.mysql.cj.protocol.a.NativePacketHeader;	i0 = virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketHeader: int getMessageSize()>();	$r3 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: com.mysql.cj.protocol.MessageReader packetReader>;	$r4 = interfaceinvoke $r3.<com.mysql.cj.protocol.MessageReader: com.mysql.cj.protocol.Message readMessage(java.util.Optional,com.mysql.cj.protocol.MessageHeader)>(r2, r0);	r5 = (com.mysql.cj.protocol.a.NativePacketPayload) $r4;	i1 = staticinvoke <java.lang.Math: int min(int,int)>(1024, i0);	$r6 = virtualinvoke r5.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>();	r7 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r6, i1);	$r8 = new java.lang.StringBuilder;	$i2 = virtualinvoke r7.<java.lang.String: int length()>();	$i3 = 100 + $i2;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i3);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Server ");	$z0 = virtualinvoke r2.<java.util.Optional: boolean isPresent()>();	if $z0 == 0 goto $r24 = "(new) ";	$r24 = "(re-used) ";	goto [?= virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24)];	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r9 = virtualinvoke r5.<com.mysql.cj.protocol.a.NativePacketPayload: java.lang.String toString()>();	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" --------------------> Client\n");	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nPacket payload:\n\n");	$r10 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.lang.String lastHeaderPayload>;	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	if i1 != 1024 goto $r11 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer>;	$r11 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer>;	$i4 = virtualinvoke $r11.<java.util.LinkedList: int size()>();	$i6 = $i4 + 1;	$r12 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: com.mysql.cj.conf.RuntimeProperty packetDebugBufferSize>;	$r13 = interfaceinvoke $r12.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r14 = (java.lang.Integer) $r13;	$i5 = virtualinvoke $r14.<java.lang.Integer: int intValue()>();	if $i6 <= $i5 goto $r15 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer>;	$r15 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer>;	virtualinvoke $r15.<java.util.LinkedList: void addLast(java.lang.Object)>($r8);	return r5
;block_num 5