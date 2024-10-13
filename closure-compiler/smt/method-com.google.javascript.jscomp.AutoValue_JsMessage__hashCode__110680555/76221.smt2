(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1628 0)
(declare-sort var1806 0)
(declare-sort var128 0)
(declare-sort var2789 0)
(declare-sort var2978 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1628) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var1628) String)
(declare-fun isAnonymous/1126038692 (var1628) Bool)
(declare-fun isExternal/1126038692 (var1628) Bool)
(declare-fun getId/1126038692 (var1628) String)
(declare-fun getParts/1126038692 (var1628) var128)
(declare-fun hashCode/1337417431 (var128) Int)
(declare-fun getAlternateId/1126038692 (var1628) String)
(declare-fun getDesc/1126038692 (var1628) String)
(declare-fun getMeaning/1126038692 (var1628) String)
(declare-fun isHidden/1126038692 (var1628) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1628) var2789)
(declare-fun hashCode/-1247371579 (var2789) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1628) var2789)
(declare-fun jsPlaceholderNames/1126038692 (var1628) var2978)
(declare-fun hashCode/1818408063 (var2978) Int)
(declare-const null-var1628 var1628)
(declare-const null-String String)
(declare-const var3804 var1628) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3804 null-var1628)))
(define-const var2985 String (getSourceName/1126038692 var3804)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var2985 null-String))) ; Cond: $r1 != null 
(define-const var345 String (getSourceName/1126038692 var3804)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var3195 Int (hashCode/-467973558 var345)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3356 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3195)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var2255 Int (* var3356 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1144 String (getKey/1126038692 var3804)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2909 Int (hashCode/-467973558 var1144)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2065 Int (bv2nat (bvxor ((_ int2bv 64) var2255) ((_ int2bv 64) var2909)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3961 Int (* var2065 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1306 Bool (isAnonymous/1126038692 var3804)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var1306 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var415 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var3116 Int (bv2nat (bvxor ((_ int2bv 64) var3961) ((_ int2bv 64) var415)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3670 Int (* var3116 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2149 Bool (isExternal/1126038692 var3804)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var2149 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var908 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var414 Int (bv2nat (bvxor ((_ int2bv 64) var3670) ((_ int2bv 64) var908)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1116 Int (* var414 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var2619 String (getId/1126038692 var3804)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var369 Int (hashCode/-467973558 var2619)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2705 Int (bv2nat (bvxor ((_ int2bv 64) var1116) ((_ int2bv 64) var369)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2926 Int (* var2705 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var3060 var128 (getParts/1126038692 var3804)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1563 Int (hashCode/1337417431 var3060)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1092 Int (bv2nat (bvxor ((_ int2bv 64) var2926) ((_ int2bv 64) var1563)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var372 Int (* var1092 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var2604 String (getAlternateId/1126038692 var3804)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var2604 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var25 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var3249 Int (bv2nat (bvxor ((_ int2bv 64) var372) ((_ int2bv 64) var25)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3110 Int (* var3249 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var790 String (getDesc/1126038692 var3804)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var790 null-String))) ; Cond: $r8 != null 
(define-const var308 String (getDesc/1126038692 var3804)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var3033 Int (hashCode/-467973558 var308)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var320 Int (bv2nat (bvxor ((_ int2bv 64) var3110) ((_ int2bv 64) var3033)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var288 Int (* var320 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var11 String (getMeaning/1126038692 var3804)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var11 null-String))) ; Cond: $r10 != null 
(define-const var911 String (getMeaning/1126038692 var3804)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var677 Int (hashCode/-467973558 var911)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2646 Int (bv2nat (bvxor ((_ int2bv 64) var288) ((_ int2bv 64) var677)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3331 Int (* var2646 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3128 Bool (isHidden/1126038692 var3804)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var3128 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3953 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var3261 Int (bv2nat (bvxor ((_ int2bv 64) var3331) ((_ int2bv 64) var3953)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var990 Int (* var3261 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2725 var2789 (getPlaceholderNameToExampleMap/1126038692 var3804)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var474 Int (hashCode/-1247371579 var2725)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1987 Int (bv2nat (bvxor ((_ int2bv 64) var990) ((_ int2bv 64) var474)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2613 Int (* var1987 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var2699 var2789 (getPlaceholderNameToOriginalCodeMap/1126038692 var3804)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var2474 Int (hashCode/-1247371579 var2699)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3703 Int (bv2nat (bvxor ((_ int2bv 64) var2613) ((_ int2bv 64) var2474)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var1514 Int (* var3703 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3414 var2978 (jsPlaceholderNames/1126038692 var3804)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var509 Int (hashCode/1818408063 var3414)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var914 Int (bv2nat (bvxor ((_ int2bv 64) var1514) ((_ int2bv 64) var509)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1628=com.google.javascript.jscomp.AutoValue_JsMessage, var3804=r0, var2985=$r1, var1806=null_type, var345=$r2, var3195=$i31, var3356=$i27, var2255=$i28, var1144=$r3, var2909=$i0, var2065=$i29, var3961=$i30, var1306=$z0, var415=$s32, var3116=$i25, var3670=$i26, var2149=$z1, var908=$s33, var414=$i19, var1116=$i20, var2619=$r4, var369=$i1, var2705=$i21, var2926=$i22, var128=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3060=$r5, var1563=$i2, var1092=$i23, var372=$i24, var2604=$r6, var25=$i34, var3249=$i17, var3110=$i18, var790=$r8, var308=$r9, var3033=$i35, var320=$i15, var288=$i16, var11=$r10, var911=$r11, var677=$i36, var2646=$i13, var3331=$i14, var3128=$z2, var3953=$s37, var3261=$i6, var990=$i7, var2789=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2725=$r12, var474=$i3, var1987=$i8, var2613=$i9, var2699=$r13, var2474=$i4, var3703=$i10, var1514=$i11, var2978=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3414=$r14, var509=$i5, var914=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1628, r0=var3804, $r1=var2985, null_type=var1806, $r2=var345, $i31=var3195, $i27=var3356, $i28=var2255, $r3=var1144, $i0=var2909, $i29=var2065, $i30=var3961, $z0=var1306, $s32=var415, $i25=var3116, $i26=var3670, $z1=var2149, $s33=var908, $i19=var414, $i20=var1116, $r4=var2619, $i1=var369, $i21=var2705, $i22=var2926, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var128, $r5=var3060, $i2=var1563, $i23=var1092, $i24=var372, $r6=var2604, $i34=var25, $i17=var3249, $i18=var3110, $r8=var790, $r9=var308, $i35=var3033, $i15=var320, $i16=var288, $r10=var11, $r11=var911, $i36=var677, $i13=var2646, $i14=var3331, $z2=var3128, $s37=var3953, $i6=var3261, $i7=var990, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2789, $r12=var2725, $i3=var474, $i8=var1987, $i9=var2613, $r13=var2699, $i4=var2474, $i10=var3703, $i11=var1514, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2978, $r14=var3414, $i5=var509, $i12=var914}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15