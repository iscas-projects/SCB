(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1645 0)
(declare-sort var17 0)
(declare-sort var2629 0)
(declare-sort var700 0)
(declare-sort var1503 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1645) String)
(declare-fun getKey/1126038692 (var1645) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var1645) Bool)
(declare-fun isExternal/1126038692 (var1645) Bool)
(declare-fun getId/1126038692 (var1645) String)
(declare-fun getParts/1126038692 (var1645) var2629)
(declare-fun hashCode/1337417431 (var2629) Int)
(declare-fun getAlternateId/1126038692 (var1645) String)
(declare-fun getDesc/1126038692 (var1645) String)
(declare-fun getMeaning/1126038692 (var1645) String)
(declare-fun isHidden/1126038692 (var1645) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1645) var700)
(declare-fun hashCode/-1247371579 (var700) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1645) var700)
(declare-fun jsPlaceholderNames/1126038692 (var1645) var1503)
(declare-fun hashCode/1818408063 (var1503) Int)
(declare-const null-var1645 var1645)
(declare-const null-String String)
(declare-const var3380 var1645) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3380 null-var1645)))
(define-const var1654 String (getSourceName/1126038692 var3380)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var1654 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var3464 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var1268 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3464)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1402 Int (* var1268 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var47 String (getKey/1126038692 var3380)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var3451 Int (hashCode/-467973558 var47)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var3602 Int (bv2nat (bvxor ((_ int2bv 64) var1402) ((_ int2bv 64) var3451)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var279 Int (* var3602 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var3183 Bool (isAnonymous/1126038692 var3380)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var3183 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1276 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var1308 Int (bv2nat (bvxor ((_ int2bv 64) var279) ((_ int2bv 64) var1276)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var2616 Int (* var1308 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var629 Bool (isExternal/1126038692 var3380)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var629 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2588 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var3652 Int (bv2nat (bvxor ((_ int2bv 64) var2616) ((_ int2bv 64) var2588)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1585 Int (* var3652 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var585 String (getId/1126038692 var3380)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3254 Int (hashCode/-467973558 var585)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1865 Int (bv2nat (bvxor ((_ int2bv 64) var1585) ((_ int2bv 64) var3254)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var3678 Int (* var1865 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1247 var2629 (getParts/1126038692 var3380)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1115 Int (hashCode/1337417431 var1247)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var473 Int (bv2nat (bvxor ((_ int2bv 64) var3678) ((_ int2bv 64) var1115)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1996 Int (* var473 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1737 String (getAlternateId/1126038692 var3380)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var1737 null-String))) ; Cond: $r6 != null 
(define-const var3711 String (getAlternateId/1126038692 var3380)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var2307 Int (hashCode/-467973558 var3711)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var341 Int (bv2nat (bvxor ((_ int2bv 64) var1996) ((_ int2bv 64) var2307)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var383 Int (* var341 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var3063 String (getDesc/1126038692 var3380)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var3063 null-String))) ; Cond: $r8 != null 
(define-const var3038 String (getDesc/1126038692 var3380)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var505 Int (hashCode/-467973558 var3038)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var178 Int (bv2nat (bvxor ((_ int2bv 64) var383) ((_ int2bv 64) var505)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var966 Int (* var178 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var646 String (getMeaning/1126038692 var3380)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var646 null-String))) ; Cond: $r10 != null 
(define-const var1538 String (getMeaning/1126038692 var3380)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var842 Int (hashCode/-467973558 var1538)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1092 Int (bv2nat (bvxor ((_ int2bv 64) var966) ((_ int2bv 64) var842)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3939 Int (* var1092 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var1063 Bool (isHidden/1126038692 var3380)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var1063 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1507 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var3255 Int (bv2nat (bvxor ((_ int2bv 64) var3939) ((_ int2bv 64) var1507)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var3702 Int (* var3255 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var839 var700 (getPlaceholderNameToExampleMap/1126038692 var3380)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1974 Int (hashCode/-1247371579 var839)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2481 Int (bv2nat (bvxor ((_ int2bv 64) var3702) ((_ int2bv 64) var1974)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var1299 Int (* var2481 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3985 var700 (getPlaceholderNameToOriginalCodeMap/1126038692 var3380)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1435 Int (hashCode/-1247371579 var3985)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3596 Int (bv2nat (bvxor ((_ int2bv 64) var1299) ((_ int2bv 64) var1435)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3096 Int (* var3596 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var1683 var1503 (jsPlaceholderNames/1126038692 var3380)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2908 Int (hashCode/1818408063 var1683)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var3892 Int (bv2nat (bvxor ((_ int2bv 64) var3096) ((_ int2bv 64) var2908)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1645=com.google.javascript.jscomp.AutoValue_JsMessage, var3380=r0, var1654=$r1, var17=null_type, var3464=$i31, var1268=$i27, var1402=$i28, var47=$r3, var3451=$i0, var3602=$i29, var279=$i30, var3183=$z0, var1276=$s32, var1308=$i25, var2616=$i26, var629=$z1, var2588=$s33, var3652=$i19, var1585=$i20, var585=$r4, var3254=$i1, var1865=$i21, var3678=$i22, var2629=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1247=$r5, var1115=$i2, var473=$i23, var1996=$i24, var1737=$r6, var3711=$r7, var2307=$i34, var341=$i17, var383=$i18, var3063=$r8, var3038=$r9, var505=$i35, var178=$i15, var966=$i16, var646=$r10, var1538=$r11, var842=$i36, var1092=$i13, var3939=$i14, var1063=$z2, var1507=$s37, var3255=$i6, var3702=$i7, var700=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var839=$r12, var1974=$i3, var2481=$i8, var1299=$i9, var3985=$r13, var1435=$i4, var3596=$i10, var3096=$i11, var1503=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var1683=$r14, var2908=$i5, var3892=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1645, r0=var3380, $r1=var1654, null_type=var17, $i31=var3464, $i27=var1268, $i28=var1402, $r3=var47, $i0=var3451, $i29=var3602, $i30=var279, $z0=var3183, $s32=var1276, $i25=var1308, $i26=var2616, $z1=var629, $s33=var2588, $i19=var3652, $i20=var1585, $r4=var585, $i1=var3254, $i21=var1865, $i22=var3678, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2629, $r5=var1247, $i2=var1115, $i23=var473, $i24=var1996, $r6=var1737, $r7=var3711, $i34=var2307, $i17=var341, $i18=var383, $r8=var3063, $r9=var3038, $i35=var505, $i15=var178, $i16=var966, $r10=var646, $r11=var1538, $i36=var842, $i13=var1092, $i14=var3939, $z2=var1063, $s37=var1507, $i6=var3255, $i7=var3702, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var700, $r12=var839, $i3=var1974, $i8=var2481, $i9=var1299, $r13=var3985, $i4=var1435, $i10=var3596, $i11=var3096, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1503, $r14=var1683, $i5=var2908, $i12=var3892}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15