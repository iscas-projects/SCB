(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var25 0)
(declare-sort var971 0)
(declare-sort var2289 0)
(declare-sort var3227 0)
(declare-sort var929 0)
(declare-sort var859 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun PROTOCOL_ENTITY_CLASS_TO_TEXT_READER/48556100 (var25) var2289)
(declare-fun var2289_get/1088891777 (var2289 var3227) var3227)
(declare-fun cast-from-ClassObject-to-var3227 (ClassObject) var3227)
(declare-fun cast-from-var3227-to-var929 (var3227) var929)
(declare-fun var929_read/544163071 (var929 var971) var859)
(declare-const null-var25 var25)
(declare-const null-ClassObject ClassObject)
(declare-const null-var971 var971)
(declare-const null-var929 var929)
(declare-const var1796 var25) ; Statement: r0 := @this: com.mysql.cj.protocol.a.NativeProtocol 
(assert (not (= var1796 null-var25)))
(declare-const var2627 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var2627 null-ClassObject)))
(declare-const var1294 var971) ; Statement: r5 := @parameter1: com.mysql.cj.protocol.ProtocolEntityFactory 
(assert (not (= var1294 null-var971)))
(define-const var1770 var2289 (PROTOCOL_ENTITY_CLASS_TO_TEXT_READER/48556100 var1796)) ; Statement: $r2 = r0.<com.mysql.cj.protocol.a.NativeProtocol: java.util.Map PROTOCOL_ENTITY_CLASS_TO_TEXT_READER> 
(define-const var350 var3227 (var2289_get/1088891777 var1770 (cast-from-ClassObject-to-var3227 var2627))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var3530 var929 (cast-from-var3227-to-var929 var350)) ; Statement: r4 = (com.mysql.cj.protocol.ProtocolEntityReader) $r3 
 ; Statement: if r4 != null goto $r6 = interfaceinvoke r4.<com.mysql.cj.protocol.ProtocolEntityReader: com.mysql.cj.protocol.ProtocolEntity read(com.mysql.cj.protocol.ProtocolEntityFactory)>(r5) 
(assert (not (= var3530 null-var929))) ; Cond: r4 != null 
(define-const var44 var859 (var929_read/544163071 var3530 var1294)) ; Statement: $r6 = interfaceinvoke r4.<com.mysql.cj.protocol.ProtocolEntityReader: com.mysql.cj.protocol.ProtocolEntity read(com.mysql.cj.protocol.ProtocolEntityFactory)>(r5) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {PROTOCOL_ENTITY_CLASS_TO_TEXT_READER/48556100=([com.mysql.cj.protocol.a.NativeProtocol], java.util.Map), var2289_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var3227=([java.lang.Class], java.lang.Object), cast-from-var3227-to-var929=([java.lang.Object], com.mysql.cj.protocol.ProtocolEntityReader), var929_read/544163071=([com.mysql.cj.protocol.ProtocolEntityReader, com.mysql.cj.protocol.ProtocolEntityFactory], com.mysql.cj.protocol.ProtocolEntity)}
; {var25=com.mysql.cj.protocol.a.NativeProtocol, var1796=r0, var2627=r1, var971=com.mysql.cj.protocol.ProtocolEntityFactory, var1294=r5, var2289=java.util.Map, var1770=$r2, var3227=java.lang.Object, var350=$r3, var929=com.mysql.cj.protocol.ProtocolEntityReader, var3530=r4, var859=com.mysql.cj.protocol.ProtocolEntity, var44=$r6}
; {com.mysql.cj.protocol.a.NativeProtocol=var25, r0=var1796, r1=var2627, com.mysql.cj.protocol.ProtocolEntityFactory=var971, r5=var1294, java.util.Map=var2289, $r2=var1770, java.lang.Object=var3227, $r3=var350, com.mysql.cj.protocol.ProtocolEntityReader=var929, r4=var3530, com.mysql.cj.protocol.ProtocolEntity=var859, $r6=var44}
;seq 
;cnt {}
;stmts r0 := @this: com.mysql.cj.protocol.a.NativeProtocol;	r1 := @parameter0: java.lang.Class;	r5 := @parameter1: com.mysql.cj.protocol.ProtocolEntityFactory;	$r2 = r0.<com.mysql.cj.protocol.a.NativeProtocol: java.util.Map PROTOCOL_ENTITY_CLASS_TO_TEXT_READER>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (com.mysql.cj.protocol.ProtocolEntityReader) $r3;	if r4 != null goto $r6 = interfaceinvoke r4.<com.mysql.cj.protocol.ProtocolEntityReader: com.mysql.cj.protocol.ProtocolEntity read(com.mysql.cj.protocol.ProtocolEntityFactory)>(r5);	$r6 = interfaceinvoke r4.<com.mysql.cj.protocol.ProtocolEntityReader: com.mysql.cj.protocol.ProtocolEntity read(com.mysql.cj.protocol.ProtocolEntityFactory)>(r5);	return $r6
;block_num 2