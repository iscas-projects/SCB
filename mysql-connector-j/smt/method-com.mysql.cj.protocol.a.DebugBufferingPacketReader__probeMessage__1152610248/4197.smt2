(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2724 0)
(declare-sort var2395 0)
(declare-sort var1149 0)
(declare-sort var2533 0)
(declare-sort var703 0)
(declare-sort var129 0)
(declare-sort var2370 0)
(declare-sort var491 0)
(declare-sort var2549 0)
(declare-sort var3660 0)
(declare-sort var2968 0)
(declare-sort var2368 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getMessageSize/-1212581225 (var1149) Int)
(declare-fun packetReader/1024604303 (var2724) var2533)
(declare-fun var2533_probeMessage/-445102279 (var2533 var2395 var129) var703)
(declare-fun cast-from-var1149-to-var129 (var1149) var129)
(declare-fun cast-from-var703-to-var2370 (var703) var2370)
(declare-fun var491_min/-1112089438 (Int Int) Int)
(declare-fun getByteBuffer/-505169391 (var2370) (Array Int Int))
(declare-fun var2549_dumpAsHex/-862480028 ((Array Int Int) Int) String)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun isPresent/580259846 (var2395) Bool)
(declare-fun toString/1374911962 (var2370) String)
(declare-fun lastHeaderPayload/1024604303 (var2724) String)
(declare-fun packetDebugBuffer/1024604303 (var2724) var3660)
(declare-fun size/1804652082 (var3660) Int)
(declare-fun packetDebugBufferSize/1024604303 (var2724) var2968)
(declare-fun var2968_getValue/1633538672 (var2968) var2368)
(declare-fun cast-from-var2368-to-Int (var2368) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun addLast/1864600108 (var3660 var2368) void)
(declare-fun cast-from-String-to-var2368 (String) var2368)
(declare-const null-var2724 var2724)
(declare-const null-var2395 var2395)
(declare-const null-var1149 var1149)
(declare-const var3411 var2724) ; Statement: r1 := @this: com.mysql.cj.protocol.a.DebugBufferingPacketReader 
(assert (not (= var3411 null-var2724)))
(declare-const var1430 var2395) ; Statement: r2 := @parameter0: java.util.Optional 
(assert (not (= var1430 null-var2395)))
(declare-const var3524 var1149) ; Statement: r0 := @parameter1: com.mysql.cj.protocol.a.NativePacketHeader 
(assert (not (= var3524 null-var1149)))
(assert true)
(define-const var1613 Int (getMessageSize/-1212581225 var3524)) ; Statement: i0 = virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketHeader: int getMessageSize()>() 
(define-const var1085 var2533 (packetReader/1024604303 var3411)) ; Statement: $r3 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: com.mysql.cj.protocol.MessageReader packetReader> 
(define-const var673 var703 (var2533_probeMessage/-445102279 var1085 var1430 (cast-from-var1149-to-var129 var3524))) ; Statement: $r4 = interfaceinvoke $r3.<com.mysql.cj.protocol.MessageReader: com.mysql.cj.protocol.Message probeMessage(java.util.Optional,com.mysql.cj.protocol.MessageHeader)>(r2, r0) 
(define-const var3253 var2370 (cast-from-var703-to-var2370 var673)) ; Statement: r5 = (com.mysql.cj.protocol.a.NativePacketPayload) $r4 
(define-const var647 Int (var491_min/-1112089438 1024 var1613)) ; Statement: i1 = staticinvoke <java.lang.Math: int min(int,int)>(1024, i0) 
(assert true)
(define-const var1800 (Array Int Int) (getByteBuffer/-505169391 var3253)) ; Statement: $r6 = virtualinvoke r5.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>() 
(define-const var2663 String (var2549_dumpAsHex/-862480028 var1800 var647)) ; Statement: r7 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r6, i1) 
(define-const var789 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
(define-const var1643 Int (length/-134980193 var2663)) ; Statement: $i2 = virtualinvoke r7.<java.lang.String: int length()>() 
(define-const var1387 Int (+ 100 var1643)) ; Statement: $i3 = 100 + $i2 
(assert true)
;(assert (<init>/543593434 var789 var1387)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i3) 

(declare-const var789!1 String)
(declare-const var1387!1 Int)
(assert true)
;(assert (append/672562846 var789!1 "Server ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Server ") 
(declare-const var789!2 String)
(assert (= var789!2 (str.++ var789!1 "Server ")))
(assert true)
(define-const var2336 Bool (isPresent/580259846 var1430)) ; Statement: $z0 = virtualinvoke r2.<java.util.Optional: boolean isPresent()>() 
 ; Statement: if $z0 == 0 goto $r24 = "(new) " 
(assert (not (= (ite var2336 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2400 String "(re-used) ") ; Statement: $r24 = "(re-used) " 
 ; Statement: goto [?= virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var789!2 var2400)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var789!3 String)
(assert (= var789!3 (str.++ var789!2 var2400)))
(assert true)
(define-const var2091 String (toString/1374911962 var3253)) ; Statement: $r9 = virtualinvoke r5.<com.mysql.cj.protocol.a.NativePacketPayload: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var789!3 var2091)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var789!4 String)
(assert (= var789!4 (str.++ var789!3 var2091)))
(assert true)
;(assert (append/672562846 var789!4 " --------------------> Client\n")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" --------------------> Client\n") 
(declare-const var789!5 String)
(assert (= var789!5 (str.++ var789!4 " --------------------> Client\n")))
(assert true)
;(assert (append/672562846 var789!5 "\nPacket payload:\n\n")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nPacket payload:\n\n") 
(declare-const var789!6 String)
(assert (= var789!6 (str.++ var789!5 "\nPacket payload:\n\n")))
(define-const var1737 String (lastHeaderPayload/1024604303 var3411)) ; Statement: $r10 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.lang.String lastHeaderPayload> 
(assert true)
;(assert (append/672562846 var789!6 var1737)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var789!7 String)
(assert (= var789!7 (str.++ var789!6 var1737)))
(assert true)
;(assert (append/672562846 var789!7 var2663)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var789!8 String)
(assert (= var789!8 (str.++ var789!7 var2663)))
 ; Statement: if i1 != 1024 goto $r11 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer> 
(assert (not (= var647 1024))) ; Cond: i1 != 1024 
(define-const var475 var3660 (packetDebugBuffer/1024604303 var3411)) ; Statement: $r11 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer> 
(assert true)
(define-const var1843 Int (size/1804652082 var475)) ; Statement: $i4 = virtualinvoke $r11.<java.util.LinkedList: int size()>() 
(define-const var1559 Int (+ var1843 1)) ; Statement: $i6 = $i4 + 1 
(define-const var3472 var2968 (packetDebugBufferSize/1024604303 var3411)) ; Statement: $r12 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: com.mysql.cj.conf.RuntimeProperty packetDebugBufferSize> 
(define-const var1516 var2368 (var2968_getValue/1633538672 var3472)) ; Statement: $r13 = interfaceinvoke $r12.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var33 Int (cast-from-var2368-to-Int var1516)) ; Statement: $r14 = (java.lang.Integer) $r13 
(assert true)
(define-const var3266 Int (intValue/-1815674922 var33)) ; Statement: $i5 = virtualinvoke $r14.<java.lang.Integer: int intValue()>() 
 ; Statement: if $i6 <= $i5 goto $r15 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer> 
(assert (<= var1559 var3266)) ; Cond: $i6 <= $i5 
(define-const var3952 var3660 (packetDebugBuffer/1024604303 var3411)) ; Statement: $r15 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer> 
(assert true)
;(assert (addLast/1864600108 var3952 (cast-from-String-to-var2368 var789!8))) ; Statement: virtualinvoke $r15.<java.util.LinkedList: void addLast(java.lang.Object)>($r8) 

(declare-const var3952!1 var3660)
(declare-const var789!9 String)
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getMessageSize/-1212581225=([com.mysql.cj.protocol.a.NativePacketHeader], int), packetReader/1024604303=([com.mysql.cj.protocol.a.DebugBufferingPacketReader], com.mysql.cj.protocol.MessageReader), var2533_probeMessage/-445102279=([com.mysql.cj.protocol.MessageReader, java.util.Optional, com.mysql.cj.protocol.MessageHeader], com.mysql.cj.protocol.Message), cast-from-var1149-to-var129=([com.mysql.cj.protocol.a.NativePacketHeader], com.mysql.cj.protocol.MessageHeader), cast-from-var703-to-var2370=([com.mysql.cj.protocol.Message], com.mysql.cj.protocol.a.NativePacketPayload), var491_min/-1112089438=([int, int], int), getByteBuffer/-505169391=([com.mysql.cj.protocol.a.NativePacketPayload], byte[]), var2549_dumpAsHex/-862480028=([byte[], int], java.lang.String), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), isPresent/580259846=([java.util.Optional], boolean), toString/1374911962=([com.mysql.cj.protocol.a.NativePacketPayload], java.lang.String), lastHeaderPayload/1024604303=([com.mysql.cj.protocol.a.DebugBufferingPacketReader], java.lang.String), packetDebugBuffer/1024604303=([com.mysql.cj.protocol.a.DebugBufferingPacketReader], java.util.LinkedList), size/1804652082=([java.util.LinkedList], int), packetDebugBufferSize/1024604303=([com.mysql.cj.protocol.a.DebugBufferingPacketReader], com.mysql.cj.conf.RuntimeProperty), var2968_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var2368-to-Int=([java.lang.Object], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int), addLast/1864600108=([java.util.LinkedList, java.lang.Object], void), cast-from-String-to-var2368=([java.lang.StringBuilder], java.lang.Object)}
; {var2724=com.mysql.cj.protocol.a.DebugBufferingPacketReader, var3411=r1, var2395=java.util.Optional, var1430=r2, var1149=com.mysql.cj.protocol.a.NativePacketHeader, var3524=r0, var1613=i0, var2533=com.mysql.cj.protocol.MessageReader, var1085=$r3, var703=com.mysql.cj.protocol.Message, var129=com.mysql.cj.protocol.MessageHeader, var673=$r4, var2370=com.mysql.cj.protocol.a.NativePacketPayload, var3253=r5, var491=java.lang.Math, var647=i1, var1800=$r6, var2549=com.mysql.cj.util.StringUtils, var2663=r7, var789=$r8, var1643=$i2, var1387=$i3, var2336=$z0, var2400=$r24, var2091=$r9, var1737=$r10, var3660=java.util.LinkedList, var475=$r11, var1843=$i4, var1559=$i6, var2968=com.mysql.cj.conf.RuntimeProperty, var3472=$r12, var2368=java.lang.Object, var1516=$r13, var33=$r14, var3266=$i5, var3952=$r15}
; {com.mysql.cj.protocol.a.DebugBufferingPacketReader=var2724, r1=var3411, java.util.Optional=var2395, r2=var1430, com.mysql.cj.protocol.a.NativePacketHeader=var1149, r0=var3524, i0=var1613, com.mysql.cj.protocol.MessageReader=var2533, $r3=var1085, com.mysql.cj.protocol.Message=var703, com.mysql.cj.protocol.MessageHeader=var129, $r4=var673, com.mysql.cj.protocol.a.NativePacketPayload=var2370, r5=var3253, java.lang.Math=var491, i1=var647, $r6=var1800, com.mysql.cj.util.StringUtils=var2549, r7=var2663, $r8=var789, $i2=var1643, $i3=var1387, $z0=var2336, $r24=var2400, $r9=var2091, $r10=var1737, java.util.LinkedList=var3660, $r11=var475, $i4=var1843, $i6=var1559, com.mysql.cj.conf.RuntimeProperty=var2968, $r12=var3472, java.lang.Object=var2368, $r13=var1516, $r14=var33, $i5=var3266, $r15=var3952}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<com.mysql.cj.protocol.a.NativePacketPayload: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7}
;stmts r1 := @this: com.mysql.cj.protocol.a.DebugBufferingPacketReader;	r2 := @parameter0: java.util.Optional;	r0 := @parameter1: com.mysql.cj.protocol.a.NativePacketHeader;	i0 = virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketHeader: int getMessageSize()>();	$r3 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: com.mysql.cj.protocol.MessageReader packetReader>;	$r4 = interfaceinvoke $r3.<com.mysql.cj.protocol.MessageReader: com.mysql.cj.protocol.Message probeMessage(java.util.Optional,com.mysql.cj.protocol.MessageHeader)>(r2, r0);	r5 = (com.mysql.cj.protocol.a.NativePacketPayload) $r4;	i1 = staticinvoke <java.lang.Math: int min(int,int)>(1024, i0);	$r6 = virtualinvoke r5.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>();	r7 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r6, i1);	$r8 = new java.lang.StringBuilder;	$i2 = virtualinvoke r7.<java.lang.String: int length()>();	$i3 = 100 + $i2;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i3);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Server ");	$z0 = virtualinvoke r2.<java.util.Optional: boolean isPresent()>();	if $z0 == 0 goto $r24 = "(new) ";	$r24 = "(re-used) ";	goto [?= virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24)];	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r9 = virtualinvoke r5.<com.mysql.cj.protocol.a.NativePacketPayload: java.lang.String toString()>();	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" --------------------> Client\n");	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nPacket payload:\n\n");	$r10 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.lang.String lastHeaderPayload>;	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	if i1 != 1024 goto $r11 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer>;	$r11 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer>;	$i4 = virtualinvoke $r11.<java.util.LinkedList: int size()>();	$i6 = $i4 + 1;	$r12 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: com.mysql.cj.conf.RuntimeProperty packetDebugBufferSize>;	$r13 = interfaceinvoke $r12.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r14 = (java.lang.Integer) $r13;	$i5 = virtualinvoke $r14.<java.lang.Integer: int intValue()>();	if $i6 <= $i5 goto $r15 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer>;	$r15 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer>;	virtualinvoke $r15.<java.util.LinkedList: void addLast(java.lang.Object)>($r8);	return r5
;block_num 5