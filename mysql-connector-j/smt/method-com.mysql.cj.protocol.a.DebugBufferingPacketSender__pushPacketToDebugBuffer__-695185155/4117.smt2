(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1068 0)
(declare-sort var1874 0)
(declare-sort var3606 0)
(declare-sort var1703 0)
(declare-sort var268 0)
(declare-sort var1086 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun maxPacketDumpLength/1053620737 (var1068) Int)
(declare-fun var1874_min/-1112089438 (Int Int) Int)
(declare-fun var3606_dumpAsHex/-862480028 ((Array Int Int) Int) String)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-522406933 (var1703) String)
(declare-fun cast-from-__Array__Int__Int__-to-var1703 ((Array Int Int)) var1703)
(declare-fun packetDebugBuffer/1053620737 (var1068) var268)
(declare-fun size/1804652082 (var268) Int)
(declare-fun packetDebugBufferSize/1053620737 (var1068) var1086)
(declare-fun var1086_getValue/1633538672 (var1086) var1703)
(declare-fun cast-from-var1703-to-Int (var1703) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun addLast/1864600108 (var268 var1703) void)
(declare-fun cast-from-String-to-var1703 (String) var1703)
(declare-const null-var1068 var1068)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var653 var1068) ; Statement: r0 := @this: com.mysql.cj.protocol.a.DebugBufferingPacketSender 
(assert (not (= var653 null-var1068)))
(declare-const var2040 (Array Int Int)) ; Statement: r1 := @parameter0: byte[] 
(assert (not (= var2040 null-__Array__Int__Int__)))
(declare-const var1520 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1520 null-Int)))
(define-const var3563 Int (maxPacketDumpLength/1053620737 var653)) ; Statement: $i1 = r0.<com.mysql.cj.protocol.a.DebugBufferingPacketSender: int maxPacketDumpLength> 
(define-const var856 Int (var1874_min/-1112089438 var3563 var1520)) ; Statement: i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, i0) 
(define-const var1757 String (var3606_dumpAsHex/-862480028 var2040 var856)) ; Statement: r2 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>(r1, i2) 
(define-const var1170 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
(define-const var1159 Int (length/-134980193 var1757)) ; Statement: $i3 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var3139 Int (+ 68 var1159)) ; Statement: $i4 = 68 + $i3 
(assert true)
;(assert (<init>/543593434 var1170 var3139)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i4) 

(declare-const var1170!1 String)
(declare-const var3139!1 Int)
(assert true)
;(assert (append/672562846 var1170!1 "Client ")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Client ") 
(declare-const var1170!2 String)
(assert (= var1170!2 (str.++ var1170!1 "Client ")))
(assert true)
(define-const var1406 String (toString/-522406933 (cast-from-__Array__Int__Int__-to-var1703 var2040))) ; Statement: $r4 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var1170!2 var1406)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1170!3 String)
(assert (= var1170!3 (str.++ var1170!2 var1406)))
(assert true)
;(assert (append/672562846 var1170!3 "--------------------> Server\n")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("--------------------> Server\n") 
(declare-const var1170!4 String)
(assert (= var1170!4 (str.++ var1170!3 "--------------------> Server\n")))
(assert true)
;(assert (append/672562846 var1170!4 "\nPacket payload:\n\n")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nPacket payload:\n\n") 
(declare-const var1170!5 String)
(assert (= var1170!5 (str.++ var1170!4 "\nPacket payload:\n\n")))
(assert true)
;(assert (append/672562846 var1170!5 var1757)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1170!6 String)
(assert (= var1170!6 (str.++ var1170!5 var1757)))
(define-const var1012 Int (maxPacketDumpLength/1053620737 var653)) ; Statement: $i5 = r0.<com.mysql.cj.protocol.a.DebugBufferingPacketSender: int maxPacketDumpLength> 
 ; Statement: if i0 <= $i5 goto $r5 = r0.<com.mysql.cj.protocol.a.DebugBufferingPacketSender: java.util.LinkedList packetDebugBuffer> 
(assert (<= var1520 var1012)) ; Cond: i0 <= $i5 
(define-const var1004 var268 (packetDebugBuffer/1053620737 var653)) ; Statement: $r5 = r0.<com.mysql.cj.protocol.a.DebugBufferingPacketSender: java.util.LinkedList packetDebugBuffer> 
(assert true)
(define-const var427 Int (size/1804652082 var1004)) ; Statement: $i6 = virtualinvoke $r5.<java.util.LinkedList: int size()>() 
(define-const var972 Int (+ var427 1)) ; Statement: $i8 = $i6 + 1 
(define-const var1488 var1086 (packetDebugBufferSize/1053620737 var653)) ; Statement: $r6 = r0.<com.mysql.cj.protocol.a.DebugBufferingPacketSender: com.mysql.cj.conf.RuntimeProperty packetDebugBufferSize> 
(define-const var888 var1703 (var1086_getValue/1633538672 var1488)) ; Statement: $r7 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var341 Int (cast-from-var1703-to-Int var888)) ; Statement: $r8 = (java.lang.Integer) $r7 
(assert true)
(define-const var2536 Int (intValue/-1815674922 var341)) ; Statement: $i7 = virtualinvoke $r8.<java.lang.Integer: int intValue()>() 
 ; Statement: if $i8 <= $i7 goto $r9 = r0.<com.mysql.cj.protocol.a.DebugBufferingPacketSender: java.util.LinkedList packetDebugBuffer> 
(assert (<= var972 var2536)) ; Cond: $i8 <= $i7 
(define-const var539 var268 (packetDebugBuffer/1053620737 var653)) ; Statement: $r9 = r0.<com.mysql.cj.protocol.a.DebugBufferingPacketSender: java.util.LinkedList packetDebugBuffer> 
(assert true)
;(assert (addLast/1864600108 var539 (cast-from-String-to-var1703 var1170!6))) ; Statement: virtualinvoke $r9.<java.util.LinkedList: void addLast(java.lang.Object)>($r3) 

(declare-const var539!1 var268)
(declare-const var1170!7 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {maxPacketDumpLength/1053620737=([com.mysql.cj.protocol.a.DebugBufferingPacketSender], int), var1874_min/-1112089438=([int, int], int), var3606_dumpAsHex/-862480028=([byte[], int], java.lang.String), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-__Array__Int__Int__-to-var1703=([byte[]], java.lang.Object), packetDebugBuffer/1053620737=([com.mysql.cj.protocol.a.DebugBufferingPacketSender], java.util.LinkedList), size/1804652082=([java.util.LinkedList], int), packetDebugBufferSize/1053620737=([com.mysql.cj.protocol.a.DebugBufferingPacketSender], com.mysql.cj.conf.RuntimeProperty), var1086_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var1703-to-Int=([java.lang.Object], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int), addLast/1864600108=([java.util.LinkedList, java.lang.Object], void), cast-from-String-to-var1703=([java.lang.StringBuilder], java.lang.Object)}
; {var1068=com.mysql.cj.protocol.a.DebugBufferingPacketSender, var653=r0, var2040=r1, var1520=i0, var3563=$i1, var1874=java.lang.Math, var856=i2, var3606=com.mysql.cj.util.StringUtils, var1757=r2, var1170=$r3, var1159=$i3, var3139=$i4, var1703=java.lang.Object, var1406=$r4, var1012=$i5, var268=java.util.LinkedList, var1004=$r5, var427=$i6, var972=$i8, var1086=com.mysql.cj.conf.RuntimeProperty, var1488=$r6, var888=$r7, var341=$r8, var2536=$i7, var539=$r9}
; {com.mysql.cj.protocol.a.DebugBufferingPacketSender=var1068, r0=var653, r1=var2040, i0=var1520, $i1=var3563, java.lang.Math=var1874, i2=var856, com.mysql.cj.util.StringUtils=var3606, r2=var1757, $r3=var1170, $i3=var1159, $i4=var3139, java.lang.Object=var1703, $r4=var1406, $i5=var1012, java.util.LinkedList=var268, $r5=var1004, $i6=var427, $i8=var972, com.mysql.cj.conf.RuntimeProperty=var1086, $r6=var1488, $r7=var888, $r8=var341, $i7=var2536, $r9=var539}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5}
;stmts r0 := @this: com.mysql.cj.protocol.a.DebugBufferingPacketSender;	r1 := @parameter0: byte[];	i0 := @parameter1: int;	$i1 = r0.<com.mysql.cj.protocol.a.DebugBufferingPacketSender: int maxPacketDumpLength>;	i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, i0);	r2 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String dumpAsHex(byte[],int)>(r1, i2);	$r3 = new java.lang.StringBuilder;	$i3 = virtualinvoke r2.<java.lang.String: int length()>();	$i4 = 68 + $i3;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i4);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Client ");	$r4 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>();	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("--------------------> Server\n");	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nPacket payload:\n\n");	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$i5 = r0.<com.mysql.cj.protocol.a.DebugBufferingPacketSender: int maxPacketDumpLength>;	if i0 <= $i5 goto $r5 = r0.<com.mysql.cj.protocol.a.DebugBufferingPacketSender: java.util.LinkedList packetDebugBuffer>;	$r5 = r0.<com.mysql.cj.protocol.a.DebugBufferingPacketSender: java.util.LinkedList packetDebugBuffer>;	$i6 = virtualinvoke $r5.<java.util.LinkedList: int size()>();	$i8 = $i6 + 1;	$r6 = r0.<com.mysql.cj.protocol.a.DebugBufferingPacketSender: com.mysql.cj.conf.RuntimeProperty packetDebugBufferSize>;	$r7 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r8 = (java.lang.Integer) $r7;	$i7 = virtualinvoke $r8.<java.lang.Integer: int intValue()>();	if $i8 <= $i7 goto $r9 = r0.<com.mysql.cj.protocol.a.DebugBufferingPacketSender: java.util.LinkedList packetDebugBuffer>;	$r9 = r0.<com.mysql.cj.protocol.a.DebugBufferingPacketSender: java.util.LinkedList packetDebugBuffer>;	virtualinvoke $r9.<java.util.LinkedList: void addLast(java.lang.Object)>($r3);	return
;block_num 3