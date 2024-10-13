(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2057 0)
(declare-sort var736 0)
(declare-sort var1749 0)
(declare-sort var1483 0)
(declare-sort var861 0)
(declare-sort var3223 0)
(declare-sort var841 0)
(declare-sort var1813 0)
(declare-sort var1046 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun PROTOCOL_ENTITY_CLASS_TO_TEXT_READER/48556100 (var2057) var861)
(declare-fun var861_get/1088891777 (var861 var3223) var3223)
(declare-fun cast-from-ClassObject-to-var3223 (ClassObject) var3223)
(declare-fun cast-from-var3223-to-var841 (var3223) var841)
(declare-fun var841_read/-270739092 (var841 Int Bool var1046 var1749 var1483) var1813)
(declare-fun cast-from-var736-to-var1046 (var736) var1046)
(declare-const null-var2057 var2057)
(declare-const null-ClassObject ClassObject)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var736 var736)
(declare-const null-var1749 var1749)
(declare-const null-var1483 var1483)
(declare-const null-var841 var841)
(declare-const var605 var2057) ; Statement: r0 := @this: com.mysql.cj.protocol.a.NativeProtocol 
(assert (not (= var605 null-var2057)))
(declare-const var741 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var741 null-ClassObject)))
(declare-const var1705 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1705 null-Int)))
(declare-const var1923 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var1923 null-Bool)))
(declare-const var3918 var736) ; Statement: r4 := @parameter3: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var3918 null-var736)))
(declare-const var2077 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var2077 null-Bool)))
(declare-const var2806 var1749) ; Statement: r5 := @parameter5: com.mysql.cj.protocol.ColumnDefinition 
(assert (not (= var2806 null-var1749)))
(declare-const var1178 var1483) ; Statement: r6 := @parameter6: com.mysql.cj.protocol.ProtocolEntityFactory 
(assert (not (= var1178 null-var1483)))
 ; Statement: if z0 == 0 goto $r2 = r0.<com.mysql.cj.protocol.a.NativeProtocol: java.util.Map PROTOCOL_ENTITY_CLASS_TO_TEXT_READER> 
(assert (= (ite var2077 1 0) 0)) ; Cond: z0 == 0 
(define-const var397 var861 (PROTOCOL_ENTITY_CLASS_TO_TEXT_READER/48556100 var605)) ; Statement: $r2 = r0.<com.mysql.cj.protocol.a.NativeProtocol: java.util.Map PROTOCOL_ENTITY_CLASS_TO_TEXT_READER> 
(define-const var3922 var3223 (var861_get/1088891777 var397 (cast-from-ClassObject-to-var3223 var741))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var1918 var841 (cast-from-var3223-to-var841 var3922)) ; Statement: $r16 = (com.mysql.cj.protocol.ProtocolEntityReader) $r3 
(assert true) ; Non Conditional
 ; Statement: if $r16 != null goto $r7 = interfaceinvoke $r16.<com.mysql.cj.protocol.ProtocolEntityReader: com.mysql.cj.protocol.ProtocolEntity read(int,boolean,com.mysql.cj.protocol.Message,com.mysql.cj.protocol.ColumnDefinition,com.mysql.cj.protocol.ProtocolEntityFactory)>(i0, z1, r4, r5, r6) 
(assert (not (= var1918 null-var841))) ; Cond: $r16 != null 
(define-const var277 var1813 (var841_read/-270739092 var1918 var1705 var1923 (cast-from-var736-to-var1046 var3918) var2806 var1178)) ; Statement: $r7 = interfaceinvoke $r16.<com.mysql.cj.protocol.ProtocolEntityReader: com.mysql.cj.protocol.ProtocolEntity read(int,boolean,com.mysql.cj.protocol.Message,com.mysql.cj.protocol.ColumnDefinition,com.mysql.cj.protocol.ProtocolEntityFactory)>(i0, z1, r4, r5, r6) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {PROTOCOL_ENTITY_CLASS_TO_TEXT_READER/48556100=([com.mysql.cj.protocol.a.NativeProtocol], java.util.Map), var861_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var3223=([java.lang.Class], java.lang.Object), cast-from-var3223-to-var841=([java.lang.Object], com.mysql.cj.protocol.ProtocolEntityReader), var841_read/-270739092=([com.mysql.cj.protocol.ProtocolEntityReader, int, boolean, com.mysql.cj.protocol.Message, com.mysql.cj.protocol.ColumnDefinition, com.mysql.cj.protocol.ProtocolEntityFactory], com.mysql.cj.protocol.ProtocolEntity), cast-from-var736-to-var1046=([com.mysql.cj.protocol.a.NativePacketPayload], com.mysql.cj.protocol.Message)}
; {var2057=com.mysql.cj.protocol.a.NativeProtocol, var605=r0, var741=r1, var1705=i0, var1923=z1, var736=com.mysql.cj.protocol.a.NativePacketPayload, var3918=r4, var2077=z0, var1749=com.mysql.cj.protocol.ColumnDefinition, var2806=r5, var1483=com.mysql.cj.protocol.ProtocolEntityFactory, var1178=r6, var861=java.util.Map, var397=$r2, var3223=java.lang.Object, var3922=$r3, var841=com.mysql.cj.protocol.ProtocolEntityReader, var1918=$r16, var1813=com.mysql.cj.protocol.ProtocolEntity, var1046=com.mysql.cj.protocol.Message, var277=$r7}
; {com.mysql.cj.protocol.a.NativeProtocol=var2057, r0=var605, r1=var741, i0=var1705, z1=var1923, com.mysql.cj.protocol.a.NativePacketPayload=var736, r4=var3918, z0=var2077, com.mysql.cj.protocol.ColumnDefinition=var1749, r5=var2806, com.mysql.cj.protocol.ProtocolEntityFactory=var1483, r6=var1178, java.util.Map=var861, $r2=var397, java.lang.Object=var3223, $r3=var3922, com.mysql.cj.protocol.ProtocolEntityReader=var841, $r16=var1918, com.mysql.cj.protocol.ProtocolEntity=var1813, com.mysql.cj.protocol.Message=var1046, $r7=var277}
;seq 
;cnt {}
;stmts r0 := @this: com.mysql.cj.protocol.a.NativeProtocol;	r1 := @parameter0: java.lang.Class;	i0 := @parameter1: int;	z1 := @parameter2: boolean;	r4 := @parameter3: com.mysql.cj.protocol.a.NativePacketPayload;	z0 := @parameter4: boolean;	r5 := @parameter5: com.mysql.cj.protocol.ColumnDefinition;	r6 := @parameter6: com.mysql.cj.protocol.ProtocolEntityFactory;	if z0 == 0 goto $r2 = r0.<com.mysql.cj.protocol.a.NativeProtocol: java.util.Map PROTOCOL_ENTITY_CLASS_TO_TEXT_READER>;	$r2 = r0.<com.mysql.cj.protocol.a.NativeProtocol: java.util.Map PROTOCOL_ENTITY_CLASS_TO_TEXT_READER>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	$r16 = (com.mysql.cj.protocol.ProtocolEntityReader) $r3;	if $r16 != null goto $r7 = interfaceinvoke $r16.<com.mysql.cj.protocol.ProtocolEntityReader: com.mysql.cj.protocol.ProtocolEntity read(int,boolean,com.mysql.cj.protocol.Message,com.mysql.cj.protocol.ColumnDefinition,com.mysql.cj.protocol.ProtocolEntityFactory)>(i0, z1, r4, r5, r6);	$r7 = interfaceinvoke $r16.<com.mysql.cj.protocol.ProtocolEntityReader: com.mysql.cj.protocol.ProtocolEntity read(int,boolean,com.mysql.cj.protocol.Message,com.mysql.cj.protocol.ColumnDefinition,com.mysql.cj.protocol.ProtocolEntityFactory)>(i0, z1, r4, r5, r6);	return $r7
;block_num 4