(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var960 0)
(declare-sort var3562 0)
(declare-sort var2368 0)
(declare-sort var2856 0)
(declare-sort var504 0)
(declare-sort var317 0)
(declare-sort var2411 0)
(declare-sort var3126 0)
(declare-sort var2680 0)
(declare-sort var233 0)
(declare-sort var1918 0)
(declare-sort var2348 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getMessageSize/-1212581225 (var2368) Int)
(declare-fun packetReader/1024604303 (var960) var2856)
(declare-fun var2856_probeMessage/-445102279 (var2856 var3562 var317) var504)
(declare-fun cast-from-var2368-to-var317 (var2368) var317)
(declare-fun cast-from-var504-to-var2411 (var504) var2411)
(declare-fun var3126_min/-1112089438 (Int Int) Int)
(declare-fun getByteBuffer/-505169391 (var2411) (Array Int Int))
(declare-fun var2680_dumpAsHex/-862480028 ((Array Int Int) Int) String)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun isPresent/580259846 (var3562) Bool)
(declare-fun toString/1374911962 (var2411) String)
(declare-fun lastHeaderPayload/1024604303 (var960) String)
(declare-fun packetDebugBuffer/1024604303 (var960) var233)
(declare-fun size/1804652082 (var233) Int)
(declare-fun packetDebugBufferSize/1024604303 (var960) var1918)
(declare-fun var1918_getValue/1633538672 (var1918) var2348)
(declare-fun cast-from-var2348-to-Int (var2348) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun addLast/1864600108 (var233 var2348) void)
(declare-fun cast-from-String-to-var2348 (String) var2348)
(declare-const null-var960 var960)
(declare-const null-var3562 var3562)
(declare-const null-var2368 var2368)
(declare-const var157 var960) ; Statement: r1 := @this: com.mysql.cj.protocol.a.DebugBufferingPacketReader 
(assert (not (= var157 null-var960)))
(declare-const var3716 var3562) ; Statement: r2 := @parameter0: java.util.Optional 
(assert (not (= var3716 null-var3562)))
(declare-const var1924 var2368) ; Statement: r0 := @parameter1: com.mysql.cj.protocol.a.NativePacketHeader 
(assert (not (= var1924 null-var2368)))
(assert true)
(define-const var613 Int (getMessageSize/-1212581225 var1924)) ; Statement: i0 = virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketHeader: int getMessageSize()>() 
(define-const var1693 var2856 (packetReader/1024604303 var157)) ; Statement: $r3 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: com.mysql.cj.protocol.MessageReader packetReader> 
(define-const var3459 var504 (var2856_probeMessage/-445102279 var1693 var3716 (cast-from-var2368-to-var317 var1924))) ; Statement: $r4 = interfaceinvoke $r3.<com.mysql.cj.protocol.MessageReader: com.mysql.cj.protocol.Message probeMessage(java.util.Optional,com.mysql.cj.protocol.MessageHeader)>(r2, r0) 
(define-const var2670 var2411 (cast-from-var504-to-var2411 var3459)) ; Statement: r5 = (com.mysql.cj.protocol.a.NativePacketPayload) $r4 
(define-const var437 Int (var3126_min/-1112089438 1024 var613)) ; Statement: i1 = staticinvoke <java.lang.Math: int min(int,int)>(1024, i0) 
(assert true)
(define-const var2985 (Array Int Int) (getByteBuffer/-505169391 var2670)) ; Statement: $r6 = virtualinvoke r5.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>() 
(define-const var3273 String (var2680_dumpAsHex/-862480028 var2985 var437)) ; Statement: r7 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r6, i1) 
(define-const var2061 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
(define-const var94 Int (length/-134980193 var3273)) ; Statement: $i2 = virtualinvoke r7.<java.lang.String: int length()>() 
(define-const var210 Int (+ 100 var94)) ; Statement: $i3 = 100 + $i2 
(assert true)
;(assert (<init>/543593434 var2061 var210)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i3) 

(declare-const var2061!1 String)
(declare-const var210!1 Int)
(assert true)
;(assert (append/672562846 var2061!1 "Server ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Server ") 
(declare-const var2061!2 String)
(assert (= var2061!2 (str.++ var2061!1 "Server ")))
(assert true)
(define-const var536 Bool (isPresent/580259846 var3716)) ; Statement: $z0 = virtualinvoke r2.<java.util.Optional: boolean isPresent()>() 
 ; Statement: if $z0 == 0 goto $r24 = "(new) " 
(assert (= (ite var536 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2422 String "(new) ") ; Statement: $r24 = "(new) " 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2061!2 var2422)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var2061!3 String)
(assert (= var2061!3 (str.++ var2061!2 var2422)))
(assert true)
(define-const var3996 String (toString/1374911962 var2670)) ; Statement: $r9 = virtualinvoke r5.<com.mysql.cj.protocol.a.NativePacketPayload: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var2061!3 var3996)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2061!4 String)
(assert (= var2061!4 (str.++ var2061!3 var3996)))
(assert true)
;(assert (append/672562846 var2061!4 " --------------------> Client\n")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" --------------------> Client\n") 
(declare-const var2061!5 String)
(assert (= var2061!5 (str.++ var2061!4 " --------------------> Client\n")))
(assert true)
;(assert (append/672562846 var2061!5 "\nPacket payload:\n\n")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nPacket payload:\n\n") 
(declare-const var2061!6 String)
(assert (= var2061!6 (str.++ var2061!5 "\nPacket payload:\n\n")))
(define-const var457 String (lastHeaderPayload/1024604303 var157)) ; Statement: $r10 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.lang.String lastHeaderPayload> 
(assert true)
;(assert (append/672562846 var2061!6 var457)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2061!7 String)
(assert (= var2061!7 (str.++ var2061!6 var457)))
(assert true)
;(assert (append/672562846 var2061!7 var3273)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var2061!8 String)
(assert (= var2061!8 (str.++ var2061!7 var3273)))
 ; Statement: if i1 != 1024 goto $r11 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer> 
(assert (not (= var437 1024))) ; Cond: i1 != 1024 
(define-const var578 var233 (packetDebugBuffer/1024604303 var157)) ; Statement: $r11 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer> 
(assert true)
(define-const var2235 Int (size/1804652082 var578)) ; Statement: $i4 = virtualinvoke $r11.<java.util.LinkedList: int size()>() 
(define-const var503 Int (+ var2235 1)) ; Statement: $i6 = $i4 + 1 
(define-const var1159 var1918 (packetDebugBufferSize/1024604303 var157)) ; Statement: $r12 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: com.mysql.cj.conf.RuntimeProperty packetDebugBufferSize> 
(define-const var1570 var2348 (var1918_getValue/1633538672 var1159)) ; Statement: $r13 = interfaceinvoke $r12.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2738 Int (cast-from-var2348-to-Int var1570)) ; Statement: $r14 = (java.lang.Integer) $r13 
(assert true)
(define-const var1769 Int (intValue/-1815674922 var2738)) ; Statement: $i5 = virtualinvoke $r14.<java.lang.Integer: int intValue()>() 
 ; Statement: if $i6 <= $i5 goto $r15 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer> 
(assert (<= var503 var1769)) ; Cond: $i6 <= $i5 
(define-const var1507 var233 (packetDebugBuffer/1024604303 var157)) ; Statement: $r15 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer> 
(assert true)
;(assert (addLast/1864600108 var1507 (cast-from-String-to-var2348 var2061!8))) ; Statement: virtualinvoke $r15.<java.util.LinkedList: void addLast(java.lang.Object)>($r8) 

(declare-const var1507!1 var233)
(declare-const var2061!9 String)
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getMessageSize/-1212581225=([com.mysql.cj.protocol.a.NativePacketHeader], int), packetReader/1024604303=([com.mysql.cj.protocol.a.DebugBufferingPacketReader], com.mysql.cj.protocol.MessageReader), var2856_probeMessage/-445102279=([com.mysql.cj.protocol.MessageReader, java.util.Optional, com.mysql.cj.protocol.MessageHeader], com.mysql.cj.protocol.Message), cast-from-var2368-to-var317=([com.mysql.cj.protocol.a.NativePacketHeader], com.mysql.cj.protocol.MessageHeader), cast-from-var504-to-var2411=([com.mysql.cj.protocol.Message], com.mysql.cj.protocol.a.NativePacketPayload), var3126_min/-1112089438=([int, int], int), getByteBuffer/-505169391=([com.mysql.cj.protocol.a.NativePacketPayload], byte[]), var2680_dumpAsHex/-862480028=([byte[], int], java.lang.String), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), isPresent/580259846=([java.util.Optional], boolean), toString/1374911962=([com.mysql.cj.protocol.a.NativePacketPayload], java.lang.String), lastHeaderPayload/1024604303=([com.mysql.cj.protocol.a.DebugBufferingPacketReader], java.lang.String), packetDebugBuffer/1024604303=([com.mysql.cj.protocol.a.DebugBufferingPacketReader], java.util.LinkedList), size/1804652082=([java.util.LinkedList], int), packetDebugBufferSize/1024604303=([com.mysql.cj.protocol.a.DebugBufferingPacketReader], com.mysql.cj.conf.RuntimeProperty), var1918_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var2348-to-Int=([java.lang.Object], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int), addLast/1864600108=([java.util.LinkedList, java.lang.Object], void), cast-from-String-to-var2348=([java.lang.StringBuilder], java.lang.Object)}
; {var960=com.mysql.cj.protocol.a.DebugBufferingPacketReader, var157=r1, var3562=java.util.Optional, var3716=r2, var2368=com.mysql.cj.protocol.a.NativePacketHeader, var1924=r0, var613=i0, var2856=com.mysql.cj.protocol.MessageReader, var1693=$r3, var504=com.mysql.cj.protocol.Message, var317=com.mysql.cj.protocol.MessageHeader, var3459=$r4, var2411=com.mysql.cj.protocol.a.NativePacketPayload, var2670=r5, var3126=java.lang.Math, var437=i1, var2985=$r6, var2680=com.mysql.cj.util.StringUtils, var3273=r7, var2061=$r8, var94=$i2, var210=$i3, var536=$z0, var2422=$r24, var3996=$r9, var457=$r10, var233=java.util.LinkedList, var578=$r11, var2235=$i4, var503=$i6, var1918=com.mysql.cj.conf.RuntimeProperty, var1159=$r12, var2348=java.lang.Object, var1570=$r13, var2738=$r14, var1769=$i5, var1507=$r15}
; {com.mysql.cj.protocol.a.DebugBufferingPacketReader=var960, r1=var157, java.util.Optional=var3562, r2=var3716, com.mysql.cj.protocol.a.NativePacketHeader=var2368, r0=var1924, i0=var613, com.mysql.cj.protocol.MessageReader=var2856, $r3=var1693, com.mysql.cj.protocol.Message=var504, com.mysql.cj.protocol.MessageHeader=var317, $r4=var3459, com.mysql.cj.protocol.a.NativePacketPayload=var2411, r5=var2670, java.lang.Math=var3126, i1=var437, $r6=var2985, com.mysql.cj.util.StringUtils=var2680, r7=var3273, $r8=var2061, $i2=var94, $i3=var210, $z0=var536, $r24=var2422, $r9=var3996, $r10=var457, java.util.LinkedList=var233, $r11=var578, $i4=var2235, $i6=var503, com.mysql.cj.conf.RuntimeProperty=var1918, $r12=var1159, java.lang.Object=var2348, $r13=var1570, $r14=var2738, $i5=var1769, $r15=var1507}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<com.mysql.cj.protocol.a.NativePacketPayload: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7}
;stmts r1 := @this: com.mysql.cj.protocol.a.DebugBufferingPacketReader;	r2 := @parameter0: java.util.Optional;	r0 := @parameter1: com.mysql.cj.protocol.a.NativePacketHeader;	i0 = virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketHeader: int getMessageSize()>();	$r3 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: com.mysql.cj.protocol.MessageReader packetReader>;	$r4 = interfaceinvoke $r3.<com.mysql.cj.protocol.MessageReader: com.mysql.cj.protocol.Message probeMessage(java.util.Optional,com.mysql.cj.protocol.MessageHeader)>(r2, r0);	r5 = (com.mysql.cj.protocol.a.NativePacketPayload) $r4;	i1 = staticinvoke <java.lang.Math: int min(int,int)>(1024, i0);	$r6 = virtualinvoke r5.<com.mysql.cj.protocol.a.NativePacketPayload: byte[] getByteBuffer()>();	r7 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>($r6, i1);	$r8 = new java.lang.StringBuilder;	$i2 = virtualinvoke r7.<java.lang.String: int length()>();	$i3 = 100 + $i2;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i3);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Server ");	$z0 = virtualinvoke r2.<java.util.Optional: boolean isPresent()>();	if $z0 == 0 goto $r24 = "(new) ";	$r24 = "(new) ";	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r9 = virtualinvoke r5.<com.mysql.cj.protocol.a.NativePacketPayload: java.lang.String toString()>();	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" --------------------> Client\n");	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nPacket payload:\n\n");	$r10 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.lang.String lastHeaderPayload>;	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	if i1 != 1024 goto $r11 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer>;	$r11 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer>;	$i4 = virtualinvoke $r11.<java.util.LinkedList: int size()>();	$i6 = $i4 + 1;	$r12 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: com.mysql.cj.conf.RuntimeProperty packetDebugBufferSize>;	$r13 = interfaceinvoke $r12.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r14 = (java.lang.Integer) $r13;	$i5 = virtualinvoke $r14.<java.lang.Integer: int intValue()>();	if $i6 <= $i5 goto $r15 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer>;	$r15 = r1.<com.mysql.cj.protocol.a.DebugBufferingPacketReader: java.util.LinkedList packetDebugBuffer>;	virtualinvoke $r15.<java.util.LinkedList: void addLast(java.lang.Object)>($r8);	return r5
;block_num 5