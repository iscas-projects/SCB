(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3574 0)
(declare-sort var2279 0)
(declare-sort var1327 0)
(declare-sort var3771 0)
(declare-sort var3610 0)
(declare-sort var3863 0)
(declare-sort var2429 0)
(declare-sort var1012 0)
(declare-sort var3156 0)
(declare-sort var3976 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3976!class ClassObject)
(declare-fun PROTOCOL_ENTITY_CLASS_TO_BINARY_READER/48556100 (var3574) var3610)
(declare-fun var3610_get/1088891777 (var3610 var3863) var3863)
(declare-fun cast-from-ClassObject-to-var3863 (ClassObject) var3863)
(declare-fun cast-from-var3863-to-var2429 (var3863) var2429)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3863) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3156_createException/361149092 (ClassObject String) var1012)
(declare-fun cast-from-var1012-to-var3976 (var1012) var3976)
(declare-const null-var3574 var3574)
(declare-const null-ClassObject ClassObject)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var2279 var2279)
(declare-const null-var1327 var1327)
(declare-const null-var3771 var3771)
(declare-const null-var2429 var2429)
(declare-const var339 var3574) ; Statement: r0 := @this: com.mysql.cj.protocol.a.NativeProtocol 
(assert (not (= var339 null-var3574)))
(declare-const var1903 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var1903 null-ClassObject)))
(declare-const var1057 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1057 null-Int)))
(declare-const var3640 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var3640 null-Bool)))
(declare-const var1704 var2279) ; Statement: r4 := @parameter3: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var1704 null-var2279)))
(declare-const var1291 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var1291 null-Bool)))
(declare-const var1178 var1327) ; Statement: r5 := @parameter5: com.mysql.cj.protocol.ColumnDefinition 
(assert (not (= var1178 null-var1327)))
(declare-const var3321 var3771) ; Statement: r6 := @parameter6: com.mysql.cj.protocol.ProtocolEntityFactory 
(assert (not (= var3321 null-var3771)))
 ; Statement: if z0 == 0 goto $r2 = r0.<com.mysql.cj.protocol.a.NativeProtocol: java.util.Map PROTOCOL_ENTITY_CLASS_TO_TEXT_READER> 
(assert (not (= (ite var1291 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2614 var3610 (PROTOCOL_ENTITY_CLASS_TO_BINARY_READER/48556100 var339)) ; Statement: $r14 = r0.<com.mysql.cj.protocol.a.NativeProtocol: java.util.Map PROTOCOL_ENTITY_CLASS_TO_BINARY_READER> 
(define-const var1031 var3863 (var3610_get/1088891777 var2614 (cast-from-ClassObject-to-var3863 var1903))) ; Statement: $r15 = interfaceinvoke $r14.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var532 var2429 (cast-from-var3863-to-var2429 var1031)) ; Statement: $r16 = (com.mysql.cj.protocol.ProtocolEntityReader) $r15 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $r16 != null goto $r7 = interfaceinvoke $r16.<com.mysql.cj.protocol.ProtocolEntityReader: com.mysql.cj.protocol.ProtocolEntity read(int,boolean,com.mysql.cj.protocol.Message,com.mysql.cj.protocol.ColumnDefinition,com.mysql.cj.protocol.ProtocolEntityFactory)>(i0, z1, r4, r5, r6) 
(assert (not (not (= var532 null-var2429)))) ; Negate: Cond: $r16 != null  
(define-const var1534 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1534)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1534!1 String)
(assert (= var1534!1 ""))
(assert true)
(define-const var3201 String (append/672562846 var1534!1 "ProtocolEntityReader isn\u0027t available for class ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ProtocolEntityReader isn\'t available for class ") 
(declare-const var1534!2 String)
(assert (= var1534!2 (str.++ var1534!1 "ProtocolEntityReader isn\u0027t available for class ")))
(assert true)
(define-const var3693 String (append/-1031950772 var3201 (cast-from-ClassObject-to-var3863 var1903))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3201!1 String)
(assert (str.prefixof var3201 var3201!1))
(assert true)
(define-const var35 String (toString/-2075883882 var3693)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3417 var1012 (var3156_createException/361149092 var3976!class var35)) ; Statement: $r12 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String)>(class "Lcom/mysql/cj/exceptions/FeatureNotAvailableException;", $r11) 
(define-const var3387 var3976 (cast-from-var1012-to-var3976 var3417)) ; Statement: $r13 = (com.mysql.cj.exceptions.FeatureNotAvailableException) $r12 
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {PROTOCOL_ENTITY_CLASS_TO_BINARY_READER/48556100=([com.mysql.cj.protocol.a.NativeProtocol], java.util.Map), var3610_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var3863=([java.lang.Class], java.lang.Object), cast-from-var3863-to-var2429=([java.lang.Object], com.mysql.cj.protocol.ProtocolEntityReader), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3156_createException/361149092=([java.lang.Class, java.lang.String], com.mysql.cj.exceptions.CJException), cast-from-var1012-to-var3976=([com.mysql.cj.exceptions.CJException], com.mysql.cj.exceptions.FeatureNotAvailableException)}
; {var3574=com.mysql.cj.protocol.a.NativeProtocol, var339=r0, var1903=r1, var1057=i0, var3640=z1, var2279=com.mysql.cj.protocol.a.NativePacketPayload, var1704=r4, var1291=z0, var1327=com.mysql.cj.protocol.ColumnDefinition, var1178=r5, var3771=com.mysql.cj.protocol.ProtocolEntityFactory, var3321=r6, var3610=java.util.Map, var2614=$r14, var3863=java.lang.Object, var1031=$r15, var2429=com.mysql.cj.protocol.ProtocolEntityReader, var532=$r16, var1534=$r8, var3201=$r9, var3693=$r10, var35=$r11, var1012=com.mysql.cj.exceptions.CJException, var3156=com.mysql.cj.exceptions.ExceptionFactory, var3976=com.mysql.cj.exceptions.FeatureNotAvailableException, var3417=$r12, var3387=$r13}
; {com.mysql.cj.protocol.a.NativeProtocol=var3574, r0=var339, r1=var1903, i0=var1057, z1=var3640, com.mysql.cj.protocol.a.NativePacketPayload=var2279, r4=var1704, z0=var1291, com.mysql.cj.protocol.ColumnDefinition=var1327, r5=var1178, com.mysql.cj.protocol.ProtocolEntityFactory=var3771, r6=var3321, java.util.Map=var3610, $r14=var2614, java.lang.Object=var3863, $r15=var1031, com.mysql.cj.protocol.ProtocolEntityReader=var2429, $r16=var532, $r8=var1534, $r9=var3201, $r10=var3693, $r11=var35, com.mysql.cj.exceptions.CJException=var1012, com.mysql.cj.exceptions.ExceptionFactory=var3156, com.mysql.cj.exceptions.FeatureNotAvailableException=var3976, $r12=var3417, $r13=var3387}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.protocol.a.NativeProtocol;	r1 := @parameter0: java.lang.Class;	i0 := @parameter1: int;	z1 := @parameter2: boolean;	r4 := @parameter3: com.mysql.cj.protocol.a.NativePacketPayload;	z0 := @parameter4: boolean;	r5 := @parameter5: com.mysql.cj.protocol.ColumnDefinition;	r6 := @parameter6: com.mysql.cj.protocol.ProtocolEntityFactory;	if z0 == 0 goto $r2 = r0.<com.mysql.cj.protocol.a.NativeProtocol: java.util.Map PROTOCOL_ENTITY_CLASS_TO_TEXT_READER>;	$r14 = r0.<com.mysql.cj.protocol.a.NativeProtocol: java.util.Map PROTOCOL_ENTITY_CLASS_TO_BINARY_READER>;	$r15 = interfaceinvoke $r14.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	$r16 = (com.mysql.cj.protocol.ProtocolEntityReader) $r15;	goto [?= (branch)];	if $r16 != null goto $r7 = interfaceinvoke $r16.<com.mysql.cj.protocol.ProtocolEntityReader: com.mysql.cj.protocol.ProtocolEntity read(int,boolean,com.mysql.cj.protocol.Message,com.mysql.cj.protocol.ColumnDefinition,com.mysql.cj.protocol.ProtocolEntityFactory)>(i0, z1, r4, r5, r6);	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ProtocolEntityReader isn\'t available for class ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String)>(class "Lcom/mysql/cj/exceptions/FeatureNotAvailableException;", $r11);	$r13 = (com.mysql.cj.exceptions.FeatureNotAvailableException) $r12;	throw $r13
;block_num 4