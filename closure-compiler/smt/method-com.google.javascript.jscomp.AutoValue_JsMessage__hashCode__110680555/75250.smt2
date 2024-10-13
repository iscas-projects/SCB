(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var837 0)
(declare-sort var940 0)
(declare-sort var2389 0)
(declare-sort var3823 0)
(declare-sort var648 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var837) String)
(declare-fun getKey/1126038692 (var837) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var837) Bool)
(declare-fun isExternal/1126038692 (var837) Bool)
(declare-fun getId/1126038692 (var837) String)
(declare-fun getParts/1126038692 (var837) var2389)
(declare-fun hashCode/1337417431 (var2389) Int)
(declare-fun getAlternateId/1126038692 (var837) String)
(declare-fun getDesc/1126038692 (var837) String)
(declare-fun getMeaning/1126038692 (var837) String)
(declare-fun isHidden/1126038692 (var837) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var837) var3823)
(declare-fun hashCode/-1247371579 (var3823) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var837) var3823)
(declare-fun jsPlaceholderNames/1126038692 (var837) var648)
(declare-fun hashCode/1818408063 (var648) Int)
(declare-const null-var837 var837)
(declare-const null-String String)
(declare-const var2034 var837) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2034 null-var837)))
(define-const var2951 String (getSourceName/1126038692 var2034)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var2951 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var838 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var741 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var838)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var839 Int (* var741 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1863 String (getKey/1126038692 var2034)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1266 Int (hashCode/-467973558 var1863)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1448 Int (bv2nat (bvxor ((_ int2bv 64) var839) ((_ int2bv 64) var1266)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var855 Int (* var1448 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2360 Bool (isAnonymous/1126038692 var2034)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var2360 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2439 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var3641 Int (bv2nat (bvxor ((_ int2bv 64) var855) ((_ int2bv 64) var2439)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3793 Int (* var3641 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var3418 Bool (isExternal/1126038692 var2034)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var3418 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var106 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var3991 Int (bv2nat (bvxor ((_ int2bv 64) var3793) ((_ int2bv 64) var106)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var3326 Int (* var3991 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var3479 String (getId/1126038692 var2034)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3365 Int (hashCode/-467973558 var3479)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1252 Int (bv2nat (bvxor ((_ int2bv 64) var3326) ((_ int2bv 64) var3365)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var3303 Int (* var1252 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var259 var2389 (getParts/1126038692 var2034)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var2251 Int (hashCode/1337417431 var259)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1994 Int (bv2nat (bvxor ((_ int2bv 64) var3303) ((_ int2bv 64) var2251)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1725 Int (* var1994 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var2488 String (getAlternateId/1126038692 var2034)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var2488 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var2050 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var3222 Int (bv2nat (bvxor ((_ int2bv 64) var1725) ((_ int2bv 64) var2050)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var736 Int (* var3222 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var3713 String (getDesc/1126038692 var2034)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var3713 null-String))) ; Cond: $r8 != null 
(define-const var2764 String (getDesc/1126038692 var2034)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var2915 Int (hashCode/-467973558 var2764)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3267 Int (bv2nat (bvxor ((_ int2bv 64) var736) ((_ int2bv 64) var2915)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var3268 Int (* var3267 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var1222 String (getMeaning/1126038692 var2034)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var1222 null-String))) ; Cond: $r10 != null 
(define-const var3483 String (getMeaning/1126038692 var2034)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var1577 Int (hashCode/-467973558 var3483)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2298 Int (bv2nat (bvxor ((_ int2bv 64) var3268) ((_ int2bv 64) var1577)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2786 Int (* var2298 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2686 Bool (isHidden/1126038692 var2034)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var2686 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2803 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var594 Int (bv2nat (bvxor ((_ int2bv 64) var2786) ((_ int2bv 64) var2803)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1471 Int (* var594 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var1277 var3823 (getPlaceholderNameToExampleMap/1126038692 var2034)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var2671 Int (hashCode/-1247371579 var1277)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3773 Int (bv2nat (bvxor ((_ int2bv 64) var1471) ((_ int2bv 64) var2671)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2486 Int (* var3773 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3931 var3823 (getPlaceholderNameToOriginalCodeMap/1126038692 var2034)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3933 Int (hashCode/-1247371579 var3931)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var505 Int (bv2nat (bvxor ((_ int2bv 64) var2486) ((_ int2bv 64) var3933)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3874 Int (* var505 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3027 var648 (jsPlaceholderNames/1126038692 var2034)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var3819 Int (hashCode/1818408063 var3027)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var334 Int (bv2nat (bvxor ((_ int2bv 64) var3874) ((_ int2bv 64) var3819)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var837=com.google.javascript.jscomp.AutoValue_JsMessage, var2034=r0, var2951=$r1, var940=null_type, var838=$i31, var741=$i27, var839=$i28, var1863=$r3, var1266=$i0, var1448=$i29, var855=$i30, var2360=$z0, var2439=$s32, var3641=$i25, var3793=$i26, var3418=$z1, var106=$s33, var3991=$i19, var3326=$i20, var3479=$r4, var3365=$i1, var1252=$i21, var3303=$i22, var2389=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var259=$r5, var2251=$i2, var1994=$i23, var1725=$i24, var2488=$r6, var2050=$i34, var3222=$i17, var736=$i18, var3713=$r8, var2764=$r9, var2915=$i35, var3267=$i15, var3268=$i16, var1222=$r10, var3483=$r11, var1577=$i36, var2298=$i13, var2786=$i14, var2686=$z2, var2803=$s37, var594=$i6, var1471=$i7, var3823=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1277=$r12, var2671=$i3, var3773=$i8, var2486=$i9, var3931=$r13, var3933=$i4, var505=$i10, var3874=$i11, var648=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3027=$r14, var3819=$i5, var334=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var837, r0=var2034, $r1=var2951, null_type=var940, $i31=var838, $i27=var741, $i28=var839, $r3=var1863, $i0=var1266, $i29=var1448, $i30=var855, $z0=var2360, $s32=var2439, $i25=var3641, $i26=var3793, $z1=var3418, $s33=var106, $i19=var3991, $i20=var3326, $r4=var3479, $i1=var3365, $i21=var1252, $i22=var3303, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2389, $r5=var259, $i2=var2251, $i23=var1994, $i24=var1725, $r6=var2488, $i34=var2050, $i17=var3222, $i18=var736, $r8=var3713, $r9=var2764, $i35=var2915, $i15=var3267, $i16=var3268, $r10=var1222, $r11=var3483, $i36=var1577, $i13=var2298, $i14=var2786, $z2=var2686, $s37=var2803, $i6=var594, $i7=var1471, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3823, $r12=var1277, $i3=var2671, $i8=var3773, $i9=var2486, $r13=var3931, $i4=var3933, $i10=var505, $i11=var3874, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var648, $r14=var3027, $i5=var3819, $i12=var334}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15