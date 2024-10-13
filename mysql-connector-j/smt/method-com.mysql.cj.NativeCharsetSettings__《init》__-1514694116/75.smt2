(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var544 0)
(declare-sort var1472 0)
(declare-sort var3973 0)
(declare-sort var2939 0)
(declare-sort var3803 0)
(declare-sort var473 0)
(declare-sort var768 0)
(declare-sort var704 0)
(declare-sort var3244 0)
(declare-sort var3408 0)
(declare-sort var2649 0)
(declare-sort var3766 0)
(declare-sort var1479 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-708579911 (var3973) void)
(declare-fun cast-from-var544-to-var3973 (var544) var3973)
(declare-fun collationIndexToCollationName/-1763798038 (var544) var2939)
(declare-fun collationNameToCollationIndex/-1763798038 (var544) var2939)
(declare-fun collationIndexToCharsetName/-1763798038 (var544) var2939)
(declare-fun charsetNameToMblen/-1763798038 (var544) var2939)
(declare-fun charsetNameToJavaEncoding/-1763798038 (var544) var2939)
(declare-fun charsetNameToCollationIndex/-1763798038 (var544) var2939)
(declare-fun javaEncodingUcToCharsetName/-1763798038 (var544) var2939)
(declare-fun multibyteEncodings/-1763798038 (var544) var3803)
(declare-fun sessionCollationIndex/-1763798038 (var544) Int)
(declare-fun metadataEncoding/-1763798038 (var544) String)
(declare-fun errorMessageEncoding/-1763798038 (var544) String)
(declare-fun commandBuilder/-1763798038 (var544) var768)
(declare-fun platformDbCharsetMatches/-1763798038 (var544) Bool)
(declare-fun session/-1763798038 (var544) var1472)
(declare-fun getServerSession/1647552928 (var3244) var704)
(declare-fun cast-from-var1472-to-var3244 (var1472) var3244)
(declare-fun serverSession/-1763798038 (var544) var704)
(declare-fun getPropertySet/92288684 (var3244) var3408)
(declare-fun var3408_getStringProperty/-80189395 (var3408 var2649) var3766)
(declare-fun characterEncoding/-1763798038 (var544) var3766)
(declare-fun var3408_getProperty/-161545732 (var3408 var2649) var3766)
(declare-fun characterSetResults/-1763798038 (var544) var3766)
(declare-fun passwordCharacterEncoding/-1763798038 (var544) var3766)
(declare-fun connectionCollation/-1763798038 (var544) var3766)
(declare-fun var3408_getBooleanProperty/1211904172 (var3408 var2649) var3766)
(declare-fun cacheServerConfiguration/-1763798038 (var544) var3766)
(declare-fun tryAndFixEncoding/1185421414 (var544 var3766 Bool) void)
(declare-fun var3766_getValue/1633538672 (var3766) var1479)
(declare-fun cast-from-var1479-to-String (var1479) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var544 var544)
(declare-const null-var1472 var1472)
(declare-const null-var2939 var2939)
(declare-const null-var3803 var3803)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var768 var768)
(declare-const var2649-characterEncoding var2649)
(declare-const var2649-characterSetResults var2649)
(declare-const var2649-passwordCharacterEncoding var2649)
(declare-const var2649-connectionCollation var2649)
(declare-const var2649-cacheServerConfiguration var2649)
(declare-const var1109 var544) ; Statement: r0 := @this: com.mysql.cj.NativeCharsetSettings 
(assert (not (= var1109 null-var544)))
(declare-const var1496 var1472) ; Statement: r1 := @parameter0: com.mysql.cj.NativeSession 
(assert (not (= var1496 null-var1472)))
(assert true)
;(assert (<init>/-708579911 (cast-from-var544-to-var3973 var1109))) ; Statement: specialinvoke r0.<com.mysql.cj.CharsetMapping: void <init>()>() 

(declare-const var1109!1 var544)
(declare-const var1109!2 var544)
(assert (not (= var1109!2 null-var544)))
(assert (= (collationIndexToCollationName/-1763798038 var1109!2) null-var2939)) ; Statement: r0.<com.mysql.cj.NativeCharsetSettings: java.util.Map collationIndexToCollationName> = null 
(declare-const var1109!3 var544)
(assert (not (= var1109!3 null-var544)))
(assert (= (collationNameToCollationIndex/-1763798038 var1109!3) null-var2939)) ; Statement: r0.<com.mysql.cj.NativeCharsetSettings: java.util.Map collationNameToCollationIndex> = null 
(declare-const var1109!4 var544)
(assert (not (= var1109!4 null-var544)))
(assert (= (collationIndexToCharsetName/-1763798038 var1109!4) null-var2939)) ; Statement: r0.<com.mysql.cj.NativeCharsetSettings: java.util.Map collationIndexToCharsetName> = null 
(declare-const var1109!5 var544)
(assert (not (= var1109!5 null-var544)))
(assert (= (charsetNameToMblen/-1763798038 var1109!5) null-var2939)) ; Statement: r0.<com.mysql.cj.NativeCharsetSettings: java.util.Map charsetNameToMblen> = null 
(declare-const var1109!6 var544)
(assert (not (= var1109!6 null-var544)))
(assert (= (charsetNameToJavaEncoding/-1763798038 var1109!6) null-var2939)) ; Statement: r0.<com.mysql.cj.NativeCharsetSettings: java.util.Map charsetNameToJavaEncoding> = null 
(declare-const var1109!7 var544)
(assert (not (= var1109!7 null-var544)))
(assert (= (charsetNameToCollationIndex/-1763798038 var1109!7) null-var2939)) ; Statement: r0.<com.mysql.cj.NativeCharsetSettings: java.util.Map charsetNameToCollationIndex> = null 
(declare-const var1109!8 var544)
(assert (not (= var1109!8 null-var544)))
(assert (= (javaEncodingUcToCharsetName/-1763798038 var1109!8) null-var2939)) ; Statement: r0.<com.mysql.cj.NativeCharsetSettings: java.util.Map javaEncodingUcToCharsetName> = null 
(declare-const var1109!9 var544)
(assert (not (= var1109!9 null-var544)))
(assert (= (multibyteEncodings/-1763798038 var1109!9) null-var3803)) ; Statement: r0.<com.mysql.cj.NativeCharsetSettings: java.util.Set multibyteEncodings> = null 
(declare-const var1109!10 var544)
(assert (not (= var1109!10 null-var544)))
(assert (= (sessionCollationIndex/-1763798038 var1109!10) null-Int)) ; Statement: r0.<com.mysql.cj.NativeCharsetSettings: java.lang.Integer sessionCollationIndex> = null 
(declare-const var1109!11 var544)
(assert (not (= var1109!11 null-var544)))
(assert (= (metadataEncoding/-1763798038 var1109!11) null-String)) ; Statement: r0.<com.mysql.cj.NativeCharsetSettings: java.lang.String metadataEncoding> = null 
(declare-const var1109!12 var544)
(assert (not (= var1109!12 null-var544)))
(assert (= (errorMessageEncoding/-1763798038 var1109!12) "Cp1252")) ; Statement: r0.<com.mysql.cj.NativeCharsetSettings: java.lang.String errorMessageEncoding> = "Cp1252" 
(declare-const var1109!13 var544)
(assert (not (= var1109!13 null-var544)))
(assert (= (commandBuilder/-1763798038 var1109!13) null-var768)) ; Statement: r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.protocol.a.NativeMessageBuilder commandBuilder> = null 
(declare-const var1109!14 var544)
(assert (not (= var1109!14 null-var544)))
(assert (= (platformDbCharsetMatches/-1763798038 var1109!14) (ite (= 1 1) true false))) ; Statement: r0.<com.mysql.cj.NativeCharsetSettings: boolean platformDbCharsetMatches> = 1 
(declare-const var1109!15 var544)
(assert (not (= var1109!15 null-var544)))
(assert (= (session/-1763798038 var1109!15) var1496)) ; Statement: r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.NativeSession session> = r1 
(define-const var3011 var1472 (session/-1763798038 var1109!15)) ; Statement: $r2 = r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.NativeSession session> 
(assert true)
(define-const var2054 var704 (getServerSession/1647552928 (cast-from-var1472-to-var3244 var3011))) ; Statement: $r3 = virtualinvoke $r2.<com.mysql.cj.NativeSession: com.mysql.cj.protocol.ServerSession getServerSession()>() 
(declare-const var1109!16 var544)
(assert (not (= var1109!16 null-var544)))
(assert (= (serverSession/-1763798038 var1109!16) var2054)) ; Statement: r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.protocol.ServerSession serverSession> = $r3 
(assert true)
(define-const var833 var3408 (getPropertySet/92288684 (cast-from-var1472-to-var3244 var1496))) ; Statement: $r5 = virtualinvoke r1.<com.mysql.cj.NativeSession: com.mysql.cj.conf.PropertySet getPropertySet()>() 
(define-const var1128 var2649 var2649-characterEncoding) ; Statement: $r4 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey characterEncoding> 
(define-const var2443 var3766 (var3408_getStringProperty/-80189395 var833 var1128)) ; Statement: $r6 = interfaceinvoke $r5.<com.mysql.cj.conf.PropertySet: com.mysql.cj.conf.RuntimeProperty getStringProperty(com.mysql.cj.conf.PropertyKey)>($r4) 
(declare-const var1109!17 var544)
(assert (not (= var1109!17 null-var544)))
(assert (= (characterEncoding/-1763798038 var1109!17) var2443)) ; Statement: r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.conf.RuntimeProperty characterEncoding> = $r6 
(define-const var3458 var1472 (session/-1763798038 var1109!17)) ; Statement: $r7 = r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.NativeSession session> 
(assert true)
(define-const var2213 var3408 (getPropertySet/92288684 (cast-from-var1472-to-var3244 var3458))) ; Statement: $r9 = virtualinvoke $r7.<com.mysql.cj.NativeSession: com.mysql.cj.conf.PropertySet getPropertySet()>() 
(define-const var1659 var2649 var2649-characterSetResults) ; Statement: $r8 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey characterSetResults> 
(define-const var1983 var3766 (var3408_getProperty/-161545732 var2213 var1659)) ; Statement: $r10 = interfaceinvoke $r9.<com.mysql.cj.conf.PropertySet: com.mysql.cj.conf.RuntimeProperty getProperty(com.mysql.cj.conf.PropertyKey)>($r8) 
(declare-const var1109!18 var544)
(assert (not (= var1109!18 null-var544)))
(assert (= (characterSetResults/-1763798038 var1109!18) var1983)) ; Statement: r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.conf.RuntimeProperty characterSetResults> = $r10 
(define-const var3954 var1472 (session/-1763798038 var1109!18)) ; Statement: $r11 = r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.NativeSession session> 
(assert true)
(define-const var3510 var3408 (getPropertySet/92288684 (cast-from-var1472-to-var3244 var3954))) ; Statement: $r13 = virtualinvoke $r11.<com.mysql.cj.NativeSession: com.mysql.cj.conf.PropertySet getPropertySet()>() 
(define-const var2798 var2649 var2649-passwordCharacterEncoding) ; Statement: $r12 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey passwordCharacterEncoding> 
(define-const var3087 var3766 (var3408_getStringProperty/-80189395 var3510 var2798)) ; Statement: $r14 = interfaceinvoke $r13.<com.mysql.cj.conf.PropertySet: com.mysql.cj.conf.RuntimeProperty getStringProperty(com.mysql.cj.conf.PropertyKey)>($r12) 
(declare-const var1109!19 var544)
(assert (not (= var1109!19 null-var544)))
(assert (= (passwordCharacterEncoding/-1763798038 var1109!19) var3087)) ; Statement: r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.conf.RuntimeProperty passwordCharacterEncoding> = $r14 
(define-const var260 var1472 (session/-1763798038 var1109!19)) ; Statement: $r15 = r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.NativeSession session> 
(assert true)
(define-const var1018 var3408 (getPropertySet/92288684 (cast-from-var1472-to-var3244 var260))) ; Statement: $r17 = virtualinvoke $r15.<com.mysql.cj.NativeSession: com.mysql.cj.conf.PropertySet getPropertySet()>() 
(define-const var3815 var2649 var2649-connectionCollation) ; Statement: $r16 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey connectionCollation> 
(define-const var2500 var3766 (var3408_getStringProperty/-80189395 var1018 var3815)) ; Statement: $r18 = interfaceinvoke $r17.<com.mysql.cj.conf.PropertySet: com.mysql.cj.conf.RuntimeProperty getStringProperty(com.mysql.cj.conf.PropertyKey)>($r16) 
(declare-const var1109!20 var544)
(assert (not (= var1109!20 null-var544)))
(assert (= (connectionCollation/-1763798038 var1109!20) var2500)) ; Statement: r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.conf.RuntimeProperty connectionCollation> = $r18 
(assert true)
(define-const var574 var3408 (getPropertySet/92288684 (cast-from-var1472-to-var3244 var1496))) ; Statement: $r20 = virtualinvoke r1.<com.mysql.cj.NativeSession: com.mysql.cj.conf.PropertySet getPropertySet()>() 
(define-const var2800 var2649 var2649-cacheServerConfiguration) ; Statement: $r19 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey cacheServerConfiguration> 
(define-const var1156 var3766 (var3408_getBooleanProperty/1211904172 var574 var2800)) ; Statement: $r21 = interfaceinvoke $r20.<com.mysql.cj.conf.PropertySet: com.mysql.cj.conf.RuntimeProperty getBooleanProperty(com.mysql.cj.conf.PropertyKey)>($r19) 
(declare-const var1109!21 var544)
(assert (not (= var1109!21 null-var544)))
(assert (= (cacheServerConfiguration/-1763798038 var1109!21) var1156)) ; Statement: r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.conf.RuntimeProperty cacheServerConfiguration> = $r21 
(define-const var1836 var3766 (characterEncoding/-1763798038 var1109!21)) ; Statement: $r22 = r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.conf.RuntimeProperty characterEncoding> 
(assert true)
;(assert (tryAndFixEncoding/1185421414 var1109!21 var1836 (ite (= 1 1) true false))) ; Statement: specialinvoke r0.<com.mysql.cj.NativeCharsetSettings: void tryAndFixEncoding(com.mysql.cj.conf.RuntimeProperty,boolean)>($r22, 1) 

(declare-const var1109!22 var544)
(declare-const var1836!1 var3766)
(declare-const var3955 Int)
(define-const var2892 var3766 (passwordCharacterEncoding/-1763798038 var1109!22)) ; Statement: $r23 = r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.conf.RuntimeProperty passwordCharacterEncoding> 
(assert true)
;(assert (tryAndFixEncoding/1185421414 var1109!22 var2892 (ite (= 1 1) true false))) ; Statement: specialinvoke r0.<com.mysql.cj.NativeCharsetSettings: void tryAndFixEncoding(com.mysql.cj.conf.RuntimeProperty,boolean)>($r23, 1) 

(declare-const var1109!23 var544)
(declare-const var2892!1 var3766)
(declare-const var3955!1 Int)
(define-const var1241 String "null") ; Statement: $r27 = "null" 
(define-const var3720 var3766 (characterSetResults/-1763798038 var1109!23)) ; Statement: $r24 = r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.conf.RuntimeProperty characterSetResults> 
(define-const var3363 var1479 (var3766_getValue/1633538672 var3720)) ; Statement: $r25 = interfaceinvoke $r24.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var3305 String (cast-from-var1479-to-String var3363)) ; Statement: $r26 = (java.lang.String) $r25 
(assert true)
(define-const var743 Bool (equalsIgnoreCase/-92311102 var1241 var3305)) ; Statement: $z0 = virtualinvoke $r27.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r26) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var743 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-708579911=([com.mysql.cj.CharsetMapping], void), cast-from-var544-to-var3973=([com.mysql.cj.NativeCharsetSettings], com.mysql.cj.CharsetMapping), collationIndexToCollationName/-1763798038=([com.mysql.cj.NativeCharsetSettings], java.util.Map), collationNameToCollationIndex/-1763798038=([com.mysql.cj.NativeCharsetSettings], java.util.Map), collationIndexToCharsetName/-1763798038=([com.mysql.cj.NativeCharsetSettings], java.util.Map), charsetNameToMblen/-1763798038=([com.mysql.cj.NativeCharsetSettings], java.util.Map), charsetNameToJavaEncoding/-1763798038=([com.mysql.cj.NativeCharsetSettings], java.util.Map), charsetNameToCollationIndex/-1763798038=([com.mysql.cj.NativeCharsetSettings], java.util.Map), javaEncodingUcToCharsetName/-1763798038=([com.mysql.cj.NativeCharsetSettings], java.util.Map), multibyteEncodings/-1763798038=([com.mysql.cj.NativeCharsetSettings], java.util.Set), sessionCollationIndex/-1763798038=([com.mysql.cj.NativeCharsetSettings], java.lang.Integer), metadataEncoding/-1763798038=([com.mysql.cj.NativeCharsetSettings], java.lang.String), errorMessageEncoding/-1763798038=([com.mysql.cj.NativeCharsetSettings], java.lang.String), commandBuilder/-1763798038=([com.mysql.cj.NativeCharsetSettings], com.mysql.cj.protocol.a.NativeMessageBuilder), platformDbCharsetMatches/-1763798038=([com.mysql.cj.NativeCharsetSettings], boolean), session/-1763798038=([com.mysql.cj.NativeCharsetSettings], com.mysql.cj.NativeSession), getServerSession/1647552928=([com.mysql.cj.CoreSession], com.mysql.cj.protocol.ServerSession), cast-from-var1472-to-var3244=([com.mysql.cj.NativeSession], com.mysql.cj.CoreSession), serverSession/-1763798038=([com.mysql.cj.NativeCharsetSettings], com.mysql.cj.protocol.ServerSession), getPropertySet/92288684=([com.mysql.cj.CoreSession], com.mysql.cj.conf.PropertySet), var3408_getStringProperty/-80189395=([com.mysql.cj.conf.PropertySet, com.mysql.cj.conf.PropertyKey], com.mysql.cj.conf.RuntimeProperty), characterEncoding/-1763798038=([com.mysql.cj.NativeCharsetSettings], com.mysql.cj.conf.RuntimeProperty), var3408_getProperty/-161545732=([com.mysql.cj.conf.PropertySet, com.mysql.cj.conf.PropertyKey], com.mysql.cj.conf.RuntimeProperty), characterSetResults/-1763798038=([com.mysql.cj.NativeCharsetSettings], com.mysql.cj.conf.RuntimeProperty), passwordCharacterEncoding/-1763798038=([com.mysql.cj.NativeCharsetSettings], com.mysql.cj.conf.RuntimeProperty), connectionCollation/-1763798038=([com.mysql.cj.NativeCharsetSettings], com.mysql.cj.conf.RuntimeProperty), var3408_getBooleanProperty/1211904172=([com.mysql.cj.conf.PropertySet, com.mysql.cj.conf.PropertyKey], com.mysql.cj.conf.RuntimeProperty), cacheServerConfiguration/-1763798038=([com.mysql.cj.NativeCharsetSettings], com.mysql.cj.conf.RuntimeProperty), tryAndFixEncoding/1185421414=([com.mysql.cj.NativeCharsetSettings, com.mysql.cj.conf.RuntimeProperty, boolean], void), var3766_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var1479-to-String=([java.lang.Object], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var544=com.mysql.cj.NativeCharsetSettings, var1109=r0, var1472=com.mysql.cj.NativeSession, var1496=r1, var3973=com.mysql.cj.CharsetMapping, var2939=java.util.Map, var3803=java.util.Set, var473=null_type, var768=com.mysql.cj.protocol.a.NativeMessageBuilder, var3011=$r2, var704=com.mysql.cj.protocol.ServerSession, var3244=com.mysql.cj.CoreSession, var2054=$r3, var3408=com.mysql.cj.conf.PropertySet, var833=$r5, var2649=com.mysql.cj.conf.PropertyKey, var1128=$r4, var3766=com.mysql.cj.conf.RuntimeProperty, var2443=$r6, var3458=$r7, var2213=$r9, var1659=$r8, var1983=$r10, var3954=$r11, var3510=$r13, var2798=$r12, var3087=$r14, var260=$r15, var1018=$r17, var3815=$r16, var2500=$r18, var574=$r20, var2800=$r19, var1156=$r21, var1836=$r22, var3955=1, var2892=$r23, var1241=$r27, var3720=$r24, var1479=java.lang.Object, var3363=$r25, var3305=$r26, var743=$z0}
; {com.mysql.cj.NativeCharsetSettings=var544, r0=var1109, com.mysql.cj.NativeSession=var1472, r1=var1496, com.mysql.cj.CharsetMapping=var3973, java.util.Map=var2939, java.util.Set=var3803, null_type=var473, com.mysql.cj.protocol.a.NativeMessageBuilder=var768, $r2=var3011, com.mysql.cj.protocol.ServerSession=var704, com.mysql.cj.CoreSession=var3244, $r3=var2054, com.mysql.cj.conf.PropertySet=var3408, $r5=var833, com.mysql.cj.conf.PropertyKey=var2649, $r4=var1128, com.mysql.cj.conf.RuntimeProperty=var3766, $r6=var2443, $r7=var3458, $r9=var2213, $r8=var1659, $r10=var1983, $r11=var3954, $r13=var3510, $r12=var2798, $r14=var3087, $r15=var260, $r17=var1018, $r16=var3815, $r18=var2500, $r20=var574, $r19=var2800, $r21=var1156, $r22=var1836, 1=var3955, $r23=var2892, $r27=var1241, $r24=var3720, java.lang.Object=var1479, $r25=var3363, $r26=var3305, $z0=var743}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: com.mysql.cj.NativeCharsetSettings;	r1 := @parameter0: com.mysql.cj.NativeSession;	specialinvoke r0.<com.mysql.cj.CharsetMapping: void <init>()>();	r0.<com.mysql.cj.NativeCharsetSettings: java.util.Map collationIndexToCollationName> = null;	r0.<com.mysql.cj.NativeCharsetSettings: java.util.Map collationNameToCollationIndex> = null;	r0.<com.mysql.cj.NativeCharsetSettings: java.util.Map collationIndexToCharsetName> = null;	r0.<com.mysql.cj.NativeCharsetSettings: java.util.Map charsetNameToMblen> = null;	r0.<com.mysql.cj.NativeCharsetSettings: java.util.Map charsetNameToJavaEncoding> = null;	r0.<com.mysql.cj.NativeCharsetSettings: java.util.Map charsetNameToCollationIndex> = null;	r0.<com.mysql.cj.NativeCharsetSettings: java.util.Map javaEncodingUcToCharsetName> = null;	r0.<com.mysql.cj.NativeCharsetSettings: java.util.Set multibyteEncodings> = null;	r0.<com.mysql.cj.NativeCharsetSettings: java.lang.Integer sessionCollationIndex> = null;	r0.<com.mysql.cj.NativeCharsetSettings: java.lang.String metadataEncoding> = null;	r0.<com.mysql.cj.NativeCharsetSettings: java.lang.String errorMessageEncoding> = "Cp1252";	r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.protocol.a.NativeMessageBuilder commandBuilder> = null;	r0.<com.mysql.cj.NativeCharsetSettings: boolean platformDbCharsetMatches> = 1;	r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.NativeSession session> = r1;	$r2 = r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.NativeSession session>;	$r3 = virtualinvoke $r2.<com.mysql.cj.NativeSession: com.mysql.cj.protocol.ServerSession getServerSession()>();	r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.protocol.ServerSession serverSession> = $r3;	$r5 = virtualinvoke r1.<com.mysql.cj.NativeSession: com.mysql.cj.conf.PropertySet getPropertySet()>();	$r4 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey characterEncoding>;	$r6 = interfaceinvoke $r5.<com.mysql.cj.conf.PropertySet: com.mysql.cj.conf.RuntimeProperty getStringProperty(com.mysql.cj.conf.PropertyKey)>($r4);	r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.conf.RuntimeProperty characterEncoding> = $r6;	$r7 = r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.NativeSession session>;	$r9 = virtualinvoke $r7.<com.mysql.cj.NativeSession: com.mysql.cj.conf.PropertySet getPropertySet()>();	$r8 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey characterSetResults>;	$r10 = interfaceinvoke $r9.<com.mysql.cj.conf.PropertySet: com.mysql.cj.conf.RuntimeProperty getProperty(com.mysql.cj.conf.PropertyKey)>($r8);	r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.conf.RuntimeProperty characterSetResults> = $r10;	$r11 = r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.NativeSession session>;	$r13 = virtualinvoke $r11.<com.mysql.cj.NativeSession: com.mysql.cj.conf.PropertySet getPropertySet()>();	$r12 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey passwordCharacterEncoding>;	$r14 = interfaceinvoke $r13.<com.mysql.cj.conf.PropertySet: com.mysql.cj.conf.RuntimeProperty getStringProperty(com.mysql.cj.conf.PropertyKey)>($r12);	r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.conf.RuntimeProperty passwordCharacterEncoding> = $r14;	$r15 = r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.NativeSession session>;	$r17 = virtualinvoke $r15.<com.mysql.cj.NativeSession: com.mysql.cj.conf.PropertySet getPropertySet()>();	$r16 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey connectionCollation>;	$r18 = interfaceinvoke $r17.<com.mysql.cj.conf.PropertySet: com.mysql.cj.conf.RuntimeProperty getStringProperty(com.mysql.cj.conf.PropertyKey)>($r16);	r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.conf.RuntimeProperty connectionCollation> = $r18;	$r20 = virtualinvoke r1.<com.mysql.cj.NativeSession: com.mysql.cj.conf.PropertySet getPropertySet()>();	$r19 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey cacheServerConfiguration>;	$r21 = interfaceinvoke $r20.<com.mysql.cj.conf.PropertySet: com.mysql.cj.conf.RuntimeProperty getBooleanProperty(com.mysql.cj.conf.PropertyKey)>($r19);	r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.conf.RuntimeProperty cacheServerConfiguration> = $r21;	$r22 = r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.conf.RuntimeProperty characterEncoding>;	specialinvoke r0.<com.mysql.cj.NativeCharsetSettings: void tryAndFixEncoding(com.mysql.cj.conf.RuntimeProperty,boolean)>($r22, 1);	$r23 = r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.conf.RuntimeProperty passwordCharacterEncoding>;	specialinvoke r0.<com.mysql.cj.NativeCharsetSettings: void tryAndFixEncoding(com.mysql.cj.conf.RuntimeProperty,boolean)>($r23, 1);	$r27 = "null";	$r24 = r0.<com.mysql.cj.NativeCharsetSettings: com.mysql.cj.conf.RuntimeProperty characterSetResults>;	$r25 = interfaceinvoke $r24.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r26 = (java.lang.String) $r25;	$z0 = virtualinvoke $r27.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r26);	if $z0 != 0 goto return;	return
;block_num 2