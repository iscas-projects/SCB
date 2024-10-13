(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3111 0)
(declare-sort var2860 0)
(declare-sort var2126 0)
(declare-sort var721 0)
(declare-sort var217 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3111) String)
(declare-fun getKey/1126038692 (var3111) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var3111) Bool)
(declare-fun isExternal/1126038692 (var3111) Bool)
(declare-fun getId/1126038692 (var3111) String)
(declare-fun getParts/1126038692 (var3111) var2126)
(declare-fun hashCode/1337417431 (var2126) Int)
(declare-fun getAlternateId/1126038692 (var3111) String)
(declare-fun getDesc/1126038692 (var3111) String)
(declare-fun getMeaning/1126038692 (var3111) String)
(declare-fun isHidden/1126038692 (var3111) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3111) var721)
(declare-fun hashCode/-1247371579 (var721) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3111) var721)
(declare-fun jsPlaceholderNames/1126038692 (var3111) var217)
(declare-fun hashCode/1818408063 (var217) Int)
(declare-const null-var3111 var3111)
(declare-const null-String String)
(declare-const var1618 var3111) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1618 null-var3111)))
(define-const var1572 String (getSourceName/1126038692 var1618)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var1572 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var99 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var919 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var99)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var2816 Int (* var919 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2160 String (getKey/1126038692 var1618)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1694 Int (hashCode/-467973558 var2160)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var3679 Int (bv2nat (bvxor ((_ int2bv 64) var2816) ((_ int2bv 64) var1694)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1430 Int (* var3679 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1944 Bool (isAnonymous/1126038692 var1618)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var1944 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1672 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var1590 Int (bv2nat (bvxor ((_ int2bv 64) var1430) ((_ int2bv 64) var1672)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var2930 Int (* var1590 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var1670 Bool (isExternal/1126038692 var1618)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var1670 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2453 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var2455 Int (bv2nat (bvxor ((_ int2bv 64) var2930) ((_ int2bv 64) var2453)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2061 Int (* var2455 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var862 String (getId/1126038692 var1618)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var2088 Int (hashCode/-467973558 var862)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3931 Int (bv2nat (bvxor ((_ int2bv 64) var2061) ((_ int2bv 64) var2088)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var87 Int (* var3931 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1650 var2126 (getParts/1126038692 var1618)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var938 Int (hashCode/1337417431 var1650)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var461 Int (bv2nat (bvxor ((_ int2bv 64) var87) ((_ int2bv 64) var938)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3177 Int (* var461 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var2694 String (getAlternateId/1126038692 var1618)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var2694 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var2833 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var2969 Int (bv2nat (bvxor ((_ int2bv 64) var3177) ((_ int2bv 64) var2833)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var1420 Int (* var2969 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var3572 String (getDesc/1126038692 var1618)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var3572 null-String))) ; Cond: $r8 != null 
(define-const var2920 String (getDesc/1126038692 var1618)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var630 Int (hashCode/-467973558 var2920)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var770 Int (bv2nat (bvxor ((_ int2bv 64) var1420) ((_ int2bv 64) var630)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1680 Int (* var770 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var1578 String (getMeaning/1126038692 var1618)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var1578 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var962 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var2587 Int (bv2nat (bvxor ((_ int2bv 64) var1680) ((_ int2bv 64) var962)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2040 Int (* var2587 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3028 Bool (isHidden/1126038692 var1618)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var3028 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3638 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var966 Int (bv2nat (bvxor ((_ int2bv 64) var2040) ((_ int2bv 64) var3638)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1175 Int (* var966 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2162 var721 (getPlaceholderNameToExampleMap/1126038692 var1618)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3083 Int (hashCode/-1247371579 var2162)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2821 Int (bv2nat (bvxor ((_ int2bv 64) var1175) ((_ int2bv 64) var3083)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var1317 Int (* var2821 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var1846 var721 (getPlaceholderNameToOriginalCodeMap/1126038692 var1618)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1908 Int (hashCode/-1247371579 var1846)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var813 Int (bv2nat (bvxor ((_ int2bv 64) var1317) ((_ int2bv 64) var1908)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var418 Int (* var813 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var1308 var217 (jsPlaceholderNames/1126038692 var1618)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2320 Int (hashCode/1818408063 var1308)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var2475 Int (bv2nat (bvxor ((_ int2bv 64) var418) ((_ int2bv 64) var2320)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3111=com.google.javascript.jscomp.AutoValue_JsMessage, var1618=r0, var1572=$r1, var2860=null_type, var99=$i31, var919=$i27, var2816=$i28, var2160=$r3, var1694=$i0, var3679=$i29, var1430=$i30, var1944=$z0, var1672=$s32, var1590=$i25, var2930=$i26, var1670=$z1, var2453=$s33, var2455=$i19, var2061=$i20, var862=$r4, var2088=$i1, var3931=$i21, var87=$i22, var2126=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1650=$r5, var938=$i2, var461=$i23, var3177=$i24, var2694=$r6, var2833=$i34, var2969=$i17, var1420=$i18, var3572=$r8, var2920=$r9, var630=$i35, var770=$i15, var1680=$i16, var1578=$r10, var962=$i36, var2587=$i13, var2040=$i14, var3028=$z2, var3638=$s37, var966=$i6, var1175=$i7, var721=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2162=$r12, var3083=$i3, var2821=$i8, var1317=$i9, var1846=$r13, var1908=$i4, var813=$i10, var418=$i11, var217=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var1308=$r14, var2320=$i5, var2475=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3111, r0=var1618, $r1=var1572, null_type=var2860, $i31=var99, $i27=var919, $i28=var2816, $r3=var2160, $i0=var1694, $i29=var3679, $i30=var1430, $z0=var1944, $s32=var1672, $i25=var1590, $i26=var2930, $z1=var1670, $s33=var2453, $i19=var2455, $i20=var2061, $r4=var862, $i1=var2088, $i21=var3931, $i22=var87, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2126, $r5=var1650, $i2=var938, $i23=var461, $i24=var3177, $r6=var2694, $i34=var2833, $i17=var2969, $i18=var1420, $r8=var3572, $r9=var2920, $i35=var630, $i15=var770, $i16=var1680, $r10=var1578, $i36=var962, $i13=var2587, $i14=var2040, $z2=var3028, $s37=var3638, $i6=var966, $i7=var1175, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var721, $r12=var2162, $i3=var3083, $i8=var2821, $i9=var1317, $r13=var1846, $i4=var1908, $i10=var813, $i11=var418, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var217, $r14=var1308, $i5=var2320, $i12=var2475}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15