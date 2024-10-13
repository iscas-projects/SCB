(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var938 0)
(declare-sort var814 0)
(declare-sort var3097 0)
(declare-sort var2043 0)
(declare-sort var1580 0)
(declare-sort var2866 0)
(declare-sort var268 0)
(declare-sort var3024 0)
(declare-sort var2780 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun PROTOCOL_ENTITY_CLASS_TO_BINARY_READER/48556100 (var938) var1580)
(declare-fun var1580_get/1088891777 (var1580 var2866) var2866)
(declare-fun cast-from-ClassObject-to-var2866 (ClassObject) var2866)
(declare-fun cast-from-var2866-to-var268 (var2866) var268)
(declare-fun var268_read/-270739092 (var268 Int Bool var2780 var3097 var2043) var3024)
(declare-fun cast-from-var814-to-var2780 (var814) var2780)
(declare-const null-var938 var938)
(declare-const null-ClassObject ClassObject)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var814 var814)
(declare-const null-var3097 var3097)
(declare-const null-var2043 var2043)
(declare-const null-var268 var268)
(declare-const var3375 var938) ; Statement: r0 := @this: com.mysql.cj.protocol.a.NativeProtocol 
(assert (not (= var3375 null-var938)))
(declare-const var3022 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var3022 null-ClassObject)))
(declare-const var2715 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2715 null-Int)))
(declare-const var3897 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var3897 null-Bool)))
(declare-const var1929 var814) ; Statement: r4 := @parameter3: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var1929 null-var814)))
(declare-const var3983 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var3983 null-Bool)))
(declare-const var3939 var3097) ; Statement: r5 := @parameter5: com.mysql.cj.protocol.ColumnDefinition 
(assert (not (= var3939 null-var3097)))
(declare-const var375 var2043) ; Statement: r6 := @parameter6: com.mysql.cj.protocol.ProtocolEntityFactory 
(assert (not (= var375 null-var2043)))
 ; Statement: if z0 == 0 goto $r2 = r0.<com.mysql.cj.protocol.a.NativeProtocol: java.util.Map PROTOCOL_ENTITY_CLASS_TO_TEXT_READER> 
(assert (not (= (ite var3983 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3843 var1580 (PROTOCOL_ENTITY_CLASS_TO_BINARY_READER/48556100 var3375)) ; Statement: $r14 = r0.<com.mysql.cj.protocol.a.NativeProtocol: java.util.Map PROTOCOL_ENTITY_CLASS_TO_BINARY_READER> 
(define-const var849 var2866 (var1580_get/1088891777 var3843 (cast-from-ClassObject-to-var2866 var3022))) ; Statement: $r15 = interfaceinvoke $r14.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2966 var268 (cast-from-var2866-to-var268 var849)) ; Statement: $r16 = (com.mysql.cj.protocol.ProtocolEntityReader) $r15 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $r16 != null goto $r7 = interfaceinvoke $r16.<com.mysql.cj.protocol.ProtocolEntityReader: com.mysql.cj.protocol.ProtocolEntity read(int,boolean,com.mysql.cj.protocol.Message,com.mysql.cj.protocol.ColumnDefinition,com.mysql.cj.protocol.ProtocolEntityFactory)>(i0, z1, r4, r5, r6) 
(assert (not (= var2966 null-var268))) ; Cond: $r16 != null 
(define-const var171 var3024 (var268_read/-270739092 var2966 var2715 var3897 (cast-from-var814-to-var2780 var1929) var3939 var375)) ; Statement: $r7 = interfaceinvoke $r16.<com.mysql.cj.protocol.ProtocolEntityReader: com.mysql.cj.protocol.ProtocolEntity read(int,boolean,com.mysql.cj.protocol.Message,com.mysql.cj.protocol.ColumnDefinition,com.mysql.cj.protocol.ProtocolEntityFactory)>(i0, z1, r4, r5, r6) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {PROTOCOL_ENTITY_CLASS_TO_BINARY_READER/48556100=([com.mysql.cj.protocol.a.NativeProtocol], java.util.Map), var1580_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var2866=([java.lang.Class], java.lang.Object), cast-from-var2866-to-var268=([java.lang.Object], com.mysql.cj.protocol.ProtocolEntityReader), var268_read/-270739092=([com.mysql.cj.protocol.ProtocolEntityReader, int, boolean, com.mysql.cj.protocol.Message, com.mysql.cj.protocol.ColumnDefinition, com.mysql.cj.protocol.ProtocolEntityFactory], com.mysql.cj.protocol.ProtocolEntity), cast-from-var814-to-var2780=([com.mysql.cj.protocol.a.NativePacketPayload], com.mysql.cj.protocol.Message)}
; {var938=com.mysql.cj.protocol.a.NativeProtocol, var3375=r0, var3022=r1, var2715=i0, var3897=z1, var814=com.mysql.cj.protocol.a.NativePacketPayload, var1929=r4, var3983=z0, var3097=com.mysql.cj.protocol.ColumnDefinition, var3939=r5, var2043=com.mysql.cj.protocol.ProtocolEntityFactory, var375=r6, var1580=java.util.Map, var3843=$r14, var2866=java.lang.Object, var849=$r15, var268=com.mysql.cj.protocol.ProtocolEntityReader, var2966=$r16, var3024=com.mysql.cj.protocol.ProtocolEntity, var2780=com.mysql.cj.protocol.Message, var171=$r7}
; {com.mysql.cj.protocol.a.NativeProtocol=var938, r0=var3375, r1=var3022, i0=var2715, z1=var3897, com.mysql.cj.protocol.a.NativePacketPayload=var814, r4=var1929, z0=var3983, com.mysql.cj.protocol.ColumnDefinition=var3097, r5=var3939, com.mysql.cj.protocol.ProtocolEntityFactory=var2043, r6=var375, java.util.Map=var1580, $r14=var3843, java.lang.Object=var2866, $r15=var849, com.mysql.cj.protocol.ProtocolEntityReader=var268, $r16=var2966, com.mysql.cj.protocol.ProtocolEntity=var3024, com.mysql.cj.protocol.Message=var2780, $r7=var171}
;seq 
;cnt {}
;stmts r0 := @this: com.mysql.cj.protocol.a.NativeProtocol;	r1 := @parameter0: java.lang.Class;	i0 := @parameter1: int;	z1 := @parameter2: boolean;	r4 := @parameter3: com.mysql.cj.protocol.a.NativePacketPayload;	z0 := @parameter4: boolean;	r5 := @parameter5: com.mysql.cj.protocol.ColumnDefinition;	r6 := @parameter6: com.mysql.cj.protocol.ProtocolEntityFactory;	if z0 == 0 goto $r2 = r0.<com.mysql.cj.protocol.a.NativeProtocol: java.util.Map PROTOCOL_ENTITY_CLASS_TO_TEXT_READER>;	$r14 = r0.<com.mysql.cj.protocol.a.NativeProtocol: java.util.Map PROTOCOL_ENTITY_CLASS_TO_BINARY_READER>;	$r15 = interfaceinvoke $r14.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	$r16 = (com.mysql.cj.protocol.ProtocolEntityReader) $r15;	goto [?= (branch)];	if $r16 != null goto $r7 = interfaceinvoke $r16.<com.mysql.cj.protocol.ProtocolEntityReader: com.mysql.cj.protocol.ProtocolEntity read(int,boolean,com.mysql.cj.protocol.Message,com.mysql.cj.protocol.ColumnDefinition,com.mysql.cj.protocol.ProtocolEntityFactory)>(i0, z1, r4, r5, r6);	$r7 = interfaceinvoke $r16.<com.mysql.cj.protocol.ProtocolEntityReader: com.mysql.cj.protocol.ProtocolEntity read(int,boolean,com.mysql.cj.protocol.Message,com.mysql.cj.protocol.ColumnDefinition,com.mysql.cj.protocol.ProtocolEntityFactory)>(i0, z1, r4, r5, r6);	return $r7
;block_num 4