(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2840 0)
(declare-sort var3238 0)
(declare-sort var2832 0)
(declare-sort var3765 0)
(declare-sort var93 0)
(declare-sort var3562 0)
(declare-sort var31 0)
(declare-sort var3198 0)
(declare-sort var342 0)
(declare-sort var1363 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1363!class ClassObject)
(declare-fun PROTOCOL_ENTITY_CLASS_TO_TEXT_READER/48556100 (var2840) var93)
(declare-fun var93_get/1088891777 (var93 var3562) var3562)
(declare-fun cast-from-ClassObject-to-var3562 (ClassObject) var3562)
(declare-fun cast-from-var3562-to-var31 (var3562) var31)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3562) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var342_createException/361149092 (ClassObject String) var3198)
(declare-fun cast-from-var3198-to-var1363 (var3198) var1363)
(declare-const null-var2840 var2840)
(declare-const null-ClassObject ClassObject)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var3238 var3238)
(declare-const null-var2832 var2832)
(declare-const null-var3765 var3765)
(declare-const null-var31 var31)
(declare-const var2581 var2840) ; Statement: r0 := @this: com.mysql.cj.protocol.a.NativeProtocol 
(assert (not (= var2581 null-var2840)))
(declare-const var2254 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var2254 null-ClassObject)))
(declare-const var3565 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3565 null-Int)))
(declare-const var740 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var740 null-Bool)))
(declare-const var2594 var3238) ; Statement: r4 := @parameter3: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var2594 null-var3238)))
(declare-const var3949 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var3949 null-Bool)))
(declare-const var3693 var2832) ; Statement: r5 := @parameter5: com.mysql.cj.protocol.ColumnDefinition 
(assert (not (= var3693 null-var2832)))
(declare-const var812 var3765) ; Statement: r6 := @parameter6: com.mysql.cj.protocol.ProtocolEntityFactory 
(assert (not (= var812 null-var3765)))
 ; Statement: if z0 == 0 goto $r2 = r0.<com.mysql.cj.protocol.a.NativeProtocol: java.util.Map PROTOCOL_ENTITY_CLASS_TO_TEXT_READER> 
(assert (= (ite var3949 1 0) 0)) ; Cond: z0 == 0 
(define-const var761 var93 (PROTOCOL_ENTITY_CLASS_TO_TEXT_READER/48556100 var2581)) ; Statement: $r2 = r0.<com.mysql.cj.protocol.a.NativeProtocol: java.util.Map PROTOCOL_ENTITY_CLASS_TO_TEXT_READER> 
(define-const var673 var3562 (var93_get/1088891777 var761 (cast-from-ClassObject-to-var3562 var2254))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var1314 var31 (cast-from-var3562-to-var31 var673)) ; Statement: $r16 = (com.mysql.cj.protocol.ProtocolEntityReader) $r3 
(assert true) ; Non Conditional
 ; Statement: if $r16 != null goto $r7 = interfaceinvoke $r16.<com.mysql.cj.protocol.ProtocolEntityReader: com.mysql.cj.protocol.ProtocolEntity read(int,boolean,com.mysql.cj.protocol.Message,com.mysql.cj.protocol.ColumnDefinition,com.mysql.cj.protocol.ProtocolEntityFactory)>(i0, z1, r4, r5, r6) 
(assert (not (not (= var1314 null-var31)))) ; Negate: Cond: $r16 != null  
(define-const var3794 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3794)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3794!1 String)
(assert (= var3794!1 ""))
(assert true)
(define-const var2292 String (append/672562846 var3794!1 "ProtocolEntityReader isn\u0027t available for class ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ProtocolEntityReader isn\'t available for class ") 
(declare-const var3794!2 String)
(assert (= var3794!2 (str.++ var3794!1 "ProtocolEntityReader isn\u0027t available for class ")))
(assert true)
(define-const var2181 String (append/-1031950772 var2292 (cast-from-ClassObject-to-var3562 var2254))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2292!1 String)
(assert (str.prefixof var2292 var2292!1))
(assert true)
(define-const var1622 String (toString/-2075883882 var2181)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2971 var3198 (var342_createException/361149092 var1363!class var1622)) ; Statement: $r12 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String)>(class "Lcom/mysql/cj/exceptions/FeatureNotAvailableException;", $r11) 
(define-const var68 var1363 (cast-from-var3198-to-var1363 var2971)) ; Statement: $r13 = (com.mysql.cj.exceptions.FeatureNotAvailableException) $r12 
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {PROTOCOL_ENTITY_CLASS_TO_TEXT_READER/48556100=([com.mysql.cj.protocol.a.NativeProtocol], java.util.Map), var93_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var3562=([java.lang.Class], java.lang.Object), cast-from-var3562-to-var31=([java.lang.Object], com.mysql.cj.protocol.ProtocolEntityReader), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var342_createException/361149092=([java.lang.Class, java.lang.String], com.mysql.cj.exceptions.CJException), cast-from-var3198-to-var1363=([com.mysql.cj.exceptions.CJException], com.mysql.cj.exceptions.FeatureNotAvailableException)}
; {var2840=com.mysql.cj.protocol.a.NativeProtocol, var2581=r0, var2254=r1, var3565=i0, var740=z1, var3238=com.mysql.cj.protocol.a.NativePacketPayload, var2594=r4, var3949=z0, var2832=com.mysql.cj.protocol.ColumnDefinition, var3693=r5, var3765=com.mysql.cj.protocol.ProtocolEntityFactory, var812=r6, var93=java.util.Map, var761=$r2, var3562=java.lang.Object, var673=$r3, var31=com.mysql.cj.protocol.ProtocolEntityReader, var1314=$r16, var3794=$r8, var2292=$r9, var2181=$r10, var1622=$r11, var3198=com.mysql.cj.exceptions.CJException, var342=com.mysql.cj.exceptions.ExceptionFactory, var1363=com.mysql.cj.exceptions.FeatureNotAvailableException, var2971=$r12, var68=$r13}
; {com.mysql.cj.protocol.a.NativeProtocol=var2840, r0=var2581, r1=var2254, i0=var3565, z1=var740, com.mysql.cj.protocol.a.NativePacketPayload=var3238, r4=var2594, z0=var3949, com.mysql.cj.protocol.ColumnDefinition=var2832, r5=var3693, com.mysql.cj.protocol.ProtocolEntityFactory=var3765, r6=var812, java.util.Map=var93, $r2=var761, java.lang.Object=var3562, $r3=var673, com.mysql.cj.protocol.ProtocolEntityReader=var31, $r16=var1314, $r8=var3794, $r9=var2292, $r10=var2181, $r11=var1622, com.mysql.cj.exceptions.CJException=var3198, com.mysql.cj.exceptions.ExceptionFactory=var342, com.mysql.cj.exceptions.FeatureNotAvailableException=var1363, $r12=var2971, $r13=var68}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.protocol.a.NativeProtocol;	r1 := @parameter0: java.lang.Class;	i0 := @parameter1: int;	z1 := @parameter2: boolean;	r4 := @parameter3: com.mysql.cj.protocol.a.NativePacketPayload;	z0 := @parameter4: boolean;	r5 := @parameter5: com.mysql.cj.protocol.ColumnDefinition;	r6 := @parameter6: com.mysql.cj.protocol.ProtocolEntityFactory;	if z0 == 0 goto $r2 = r0.<com.mysql.cj.protocol.a.NativeProtocol: java.util.Map PROTOCOL_ENTITY_CLASS_TO_TEXT_READER>;	$r2 = r0.<com.mysql.cj.protocol.a.NativeProtocol: java.util.Map PROTOCOL_ENTITY_CLASS_TO_TEXT_READER>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	$r16 = (com.mysql.cj.protocol.ProtocolEntityReader) $r3;	if $r16 != null goto $r7 = interfaceinvoke $r16.<com.mysql.cj.protocol.ProtocolEntityReader: com.mysql.cj.protocol.ProtocolEntity read(int,boolean,com.mysql.cj.protocol.Message,com.mysql.cj.protocol.ColumnDefinition,com.mysql.cj.protocol.ProtocolEntityFactory)>(i0, z1, r4, r5, r6);	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ProtocolEntityReader isn\'t available for class ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String)>(class "Lcom/mysql/cj/exceptions/FeatureNotAvailableException;", $r11);	$r13 = (com.mysql.cj.exceptions.FeatureNotAvailableException) $r12;	throw $r13
;block_num 4