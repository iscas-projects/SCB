(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var650 0)
(declare-sort var2361 0)
(declare-sort var555 0)
(declare-sort var1024 0)
(declare-sort var1927 0)
(declare-sort var3503 0)
(declare-sort var873 0)
(declare-sort var649 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun session/-1763798038 (var650) var555)
(declare-fun getProtocol/-228689736 (var555) var1024)
(declare-fun getCommandBuilder/518385515 (var650) var1927)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun buildComQuery/1208321905 (var1927 var3503 var873 String) var3503)
(declare-fun cast-from-var555-to-var873 (var555) var873)
(declare-fun sendCommand/1709460450 (var1024 var649 Bool Int) var3503)
(declare-fun cast-from-var3503-to-var649 (var3503) var649)
(declare-const null-var650 var650)
(declare-const null-String String)
(declare-const null-NullType var2361)
(declare-const null-var3503 var3503)
(declare-const var3371 var650) ; Statement: r0 := @this: com.mysql.cj.NativeCharsetSettings 
(assert (not (= var3371 null-var650)))
(declare-const var1386 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1386 null-String)))
(define-const var2603 var555 (session/-1763798038 var3371)) ; Statement: $r1 = r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.NativeSession session> 
(assert true)
(define-const var1045 var1024 (getProtocol/-228689736 var2603)) ; Statement: $r10 = virtualinvoke $r1.<com.mysql.cj.NativeSession: com.mysql.cj.protocol.a.NativeProtocol getProtocol()>() 
(assert true)
(define-const var2261 var1927 (getCommandBuilder/518385515 var3371)) ; Statement: $r8 = specialinvoke r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.protocol.a.NativeMessageBuilder getCommandBuilder()>() 
(define-const var877 var555 (session/-1763798038 var3371)) ; Statement: $r3 = r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.NativeSession session> 
(define-const var3668 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3668)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3668!1 String)
(assert (= var3668!1 ""))
(assert true)
(define-const var2129 String (append/672562846 var3668!1 "SET character_set_results = ")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SET character_set_results = ") 
(declare-const var3668!2 String)
(assert (= var3668!2 (str.++ var3668!1 "SET character_set_results = ")))
(assert true)
(define-const var2687 String (append/672562846 var2129 var1386)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2129!1 String)
(assert (= var2129!1 (str.++ var2129 var1386)))
(assert true)
(define-const var399 String (toString/-2075883882 var2687)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3900 var3503 (buildComQuery/1208321905 var2261 null-var3503 (cast-from-var555-to-var873 var877) var399)) ; Statement: $r9 = virtualinvoke $r8.<com.mysql.cj.protocol.a.NativeMessageBuilder: com.mysql.cj.protocol.a.NativePacketPayload buildComQuery(com.mysql.cj.protocol.a.NativePacketPayload,com.mysql.cj.Session,java.lang.String)>(null, $r3, $r7) 
(assert true)
;(assert (sendCommand/1709460450 var1045 (cast-from-var3503-to-var649 var3900) (ite (= 1 0) true false) 0)) ; Statement: virtualinvoke $r10.<com.mysql.cj.protocol.a.NativeProtocol: com.mysql.cj.protocol.a.NativePacketPayload sendCommand(com.mysql.cj.protocol.Message,boolean,int)>($r9, 0, 0) 

(declare-const var1045!1 var1024)
(declare-const var3900!1 var3503)
(declare-const var2211 Int)
(declare-const var2211!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {session/-1763798038=([com.mysql.cj.NativeCharsetSettings], com.mysql.cj.NativeSession), getProtocol/-228689736=([com.mysql.cj.NativeSession], com.mysql.cj.protocol.a.NativeProtocol), getCommandBuilder/518385515=([com.mysql.cj.NativeCharsetSettings], com.mysql.cj.protocol.a.NativeMessageBuilder), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), buildComQuery/1208321905=([com.mysql.cj.protocol.a.NativeMessageBuilder, com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.Session, java.lang.String], com.mysql.cj.protocol.a.NativePacketPayload), cast-from-var555-to-var873=([com.mysql.cj.NativeSession], com.mysql.cj.Session), sendCommand/1709460450=([com.mysql.cj.protocol.a.NativeProtocol, com.mysql.cj.protocol.Message, boolean, int], com.mysql.cj.protocol.a.NativePacketPayload), cast-from-var3503-to-var649=([com.mysql.cj.protocol.a.NativePacketPayload], com.mysql.cj.protocol.Message)}
; {var650=com.mysql.cj.NativeCharsetSettings, var3371=r0, var1386=r4, var2361=null_type, var555=com.mysql.cj.NativeSession, var2603=$r1, var1024=com.mysql.cj.protocol.a.NativeProtocol, var1045=$r10, var1927=com.mysql.cj.protocol.a.NativeMessageBuilder, var2261=$r8, var877=$r3, var3668=$r2, var2129=$r5, var2687=$r6, var399=$r7, var3503=com.mysql.cj.protocol.a.NativePacketPayload, var873=com.mysql.cj.Session, var3900=$r9, var649=com.mysql.cj.protocol.Message, var2211=0}
; {com.mysql.cj.NativeCharsetSettings=var650, r0=var3371, r4=var1386, null_type=var2361, com.mysql.cj.NativeSession=var555, $r1=var2603, com.mysql.cj.protocol.a.NativeProtocol=var1024, $r10=var1045, com.mysql.cj.protocol.a.NativeMessageBuilder=var1927, $r8=var2261, $r3=var877, $r2=var3668, $r5=var2129, $r6=var2687, $r7=var399, com.mysql.cj.protocol.a.NativePacketPayload=var3503, com.mysql.cj.Session=var873, $r9=var3900, com.mysql.cj.protocol.Message=var649, 0=var2211}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.NativeCharsetSettings;	r4 := @parameter0: java.lang.String;	$r1 = r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.NativeSession session>;	$r10 = virtualinvoke $r1.<com.mysql.cj.NativeSession: com.mysql.cj.protocol.a.NativeProtocol getProtocol()>();	$r8 = specialinvoke r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.protocol.a.NativeMessageBuilder getCommandBuilder()>();	$r3 = r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.NativeSession session>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SET character_set_results = ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke $r8.<com.mysql.cj.protocol.a.NativeMessageBuilder: com.mysql.cj.protocol.a.NativePacketPayload buildComQuery(com.mysql.cj.protocol.a.NativePacketPayload,com.mysql.cj.Session,java.lang.String)>(null, $r3, $r7);	virtualinvoke $r10.<com.mysql.cj.protocol.a.NativeProtocol: com.mysql.cj.protocol.a.NativePacketPayload sendCommand(com.mysql.cj.protocol.Message,boolean,int)>($r9, 0, 0);	return
;block_num 1