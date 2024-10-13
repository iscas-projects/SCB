(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2250 0)
(declare-sort var2619 0)
(declare-sort var2045 0)
(declare-sort var652 0)
(declare-sort var2951 0)
(declare-sort var2369 0)
(declare-sort var3072 0)
(declare-sort var435 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var435!class ClassObject)
(declare-fun PROTOCOL_ENTITY_CLASS_TO_TEXT_READER/48556100 (var2250) var2045)
(declare-fun var2045_get/1088891777 (var2045 var652) var652)
(declare-fun cast-from-ClassObject-to-var652 (ClassObject) var652)
(declare-fun cast-from-var652-to-var2951 (var652) var2951)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var652) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3072_createException/361149092 (ClassObject String) var2369)
(declare-fun cast-from-var2369-to-var435 (var2369) var435)
(declare-const null-var2250 var2250)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2619 var2619)
(declare-const null-var2951 var2951)
(declare-const var3167 var2250) ; Statement: r0 := @this: com.mysql.cj.protocol.a.NativeProtocol 
(assert (not (= var3167 null-var2250)))
(declare-const var1272 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var1272 null-ClassObject)))
(declare-const var3099 var2619) ; Statement: r5 := @parameter1: com.mysql.cj.protocol.ProtocolEntityFactory 
(assert (not (= var3099 null-var2619)))
(define-const var3819 var2045 (PROTOCOL_ENTITY_CLASS_TO_TEXT_READER/48556100 var3167)) ; Statement: $r2 = r0.<com.mysql.cj.protocol.a.NativeProtocol: java.util.Map PROTOCOL_ENTITY_CLASS_TO_TEXT_READER> 
(define-const var498 var652 (var2045_get/1088891777 var3819 (cast-from-ClassObject-to-var652 var1272))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2936 var2951 (cast-from-var652-to-var2951 var498)) ; Statement: r4 = (com.mysql.cj.protocol.ProtocolEntityReader) $r3 
 ; Statement: if r4 != null goto $r6 = interfaceinvoke r4.<com.mysql.cj.protocol.ProtocolEntityReader: com.mysql.cj.protocol.ProtocolEntity read(com.mysql.cj.protocol.ProtocolEntityFactory)>(r5) 
(assert (not (not (= var2936 null-var2951)))) ; Negate: Cond: r4 != null  
(define-const var2662 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2662)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2662!1 String)
(assert (= var2662!1 ""))
(assert true)
(define-const var1017 String (append/672562846 var2662!1 "ProtocolEntityReader isn\u0027t available for class ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ProtocolEntityReader isn\'t available for class ") 
(declare-const var2662!2 String)
(assert (= var2662!2 (str.++ var2662!1 "ProtocolEntityReader isn\u0027t available for class ")))
(assert true)
(define-const var2957 String (append/-1031950772 var1017 (cast-from-ClassObject-to-var652 var1272))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1017!1 String)
(assert (str.prefixof var1017 var1017!1))
(assert true)
(define-const var1768 String (toString/-2075883882 var2957)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2051 var2369 (var3072_createException/361149092 var435!class var1768)) ; Statement: $r11 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String)>(class "Lcom/mysql/cj/exceptions/FeatureNotAvailableException;", $r10) 
(define-const var1890 var435 (cast-from-var2369-to-var435 var2051)) ; Statement: $r12 = (com.mysql.cj.exceptions.FeatureNotAvailableException) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {PROTOCOL_ENTITY_CLASS_TO_TEXT_READER/48556100=([com.mysql.cj.protocol.a.NativeProtocol], java.util.Map), var2045_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var652=([java.lang.Class], java.lang.Object), cast-from-var652-to-var2951=([java.lang.Object], com.mysql.cj.protocol.ProtocolEntityReader), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3072_createException/361149092=([java.lang.Class, java.lang.String], com.mysql.cj.exceptions.CJException), cast-from-var2369-to-var435=([com.mysql.cj.exceptions.CJException], com.mysql.cj.exceptions.FeatureNotAvailableException)}
; {var2250=com.mysql.cj.protocol.a.NativeProtocol, var3167=r0, var1272=r1, var2619=com.mysql.cj.protocol.ProtocolEntityFactory, var3099=r5, var2045=java.util.Map, var3819=$r2, var652=java.lang.Object, var498=$r3, var2951=com.mysql.cj.protocol.ProtocolEntityReader, var2936=r4, var2662=$r7, var1017=$r8, var2957=$r9, var1768=$r10, var2369=com.mysql.cj.exceptions.CJException, var3072=com.mysql.cj.exceptions.ExceptionFactory, var435=com.mysql.cj.exceptions.FeatureNotAvailableException, var2051=$r11, var1890=$r12}
; {com.mysql.cj.protocol.a.NativeProtocol=var2250, r0=var3167, r1=var1272, com.mysql.cj.protocol.ProtocolEntityFactory=var2619, r5=var3099, java.util.Map=var2045, $r2=var3819, java.lang.Object=var652, $r3=var498, com.mysql.cj.protocol.ProtocolEntityReader=var2951, r4=var2936, $r7=var2662, $r8=var1017, $r9=var2957, $r10=var1768, com.mysql.cj.exceptions.CJException=var2369, com.mysql.cj.exceptions.ExceptionFactory=var3072, com.mysql.cj.exceptions.FeatureNotAvailableException=var435, $r11=var2051, $r12=var1890}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.protocol.a.NativeProtocol;	r1 := @parameter0: java.lang.Class;	r5 := @parameter1: com.mysql.cj.protocol.ProtocolEntityFactory;	$r2 = r0.<com.mysql.cj.protocol.a.NativeProtocol: java.util.Map PROTOCOL_ENTITY_CLASS_TO_TEXT_READER>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (com.mysql.cj.protocol.ProtocolEntityReader) $r3;	if r4 != null goto $r6 = interfaceinvoke r4.<com.mysql.cj.protocol.ProtocolEntityReader: com.mysql.cj.protocol.ProtocolEntity read(com.mysql.cj.protocol.ProtocolEntityFactory)>(r5);	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ProtocolEntityReader isn\'t available for class ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String)>(class "Lcom/mysql/cj/exceptions/FeatureNotAvailableException;", $r10);	$r12 = (com.mysql.cj.exceptions.FeatureNotAvailableException) $r11;	throw $r12
;block_num 2