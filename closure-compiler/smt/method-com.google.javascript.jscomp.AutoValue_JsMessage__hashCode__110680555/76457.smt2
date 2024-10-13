(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1176 0)
(declare-sort var2944 0)
(declare-sort var2323 0)
(declare-sort var686 0)
(declare-sort var3110 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1176) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var1176) String)
(declare-fun isAnonymous/1126038692 (var1176) Bool)
(declare-fun isExternal/1126038692 (var1176) Bool)
(declare-fun getId/1126038692 (var1176) String)
(declare-fun getParts/1126038692 (var1176) var2323)
(declare-fun hashCode/1337417431 (var2323) Int)
(declare-fun getAlternateId/1126038692 (var1176) String)
(declare-fun getDesc/1126038692 (var1176) String)
(declare-fun getMeaning/1126038692 (var1176) String)
(declare-fun isHidden/1126038692 (var1176) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1176) var686)
(declare-fun hashCode/-1247371579 (var686) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1176) var686)
(declare-fun jsPlaceholderNames/1126038692 (var1176) var3110)
(declare-fun hashCode/1818408063 (var3110) Int)
(declare-const null-var1176 var1176)
(declare-const null-String String)
(declare-const var3361 var1176) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3361 null-var1176)))
(define-const var2025 String (getSourceName/1126038692 var3361)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var2025 null-String))) ; Cond: $r1 != null 
(define-const var2331 String (getSourceName/1126038692 var3361)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var2886 Int (hashCode/-467973558 var2331)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2767 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2886)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var3951 Int (* var2767 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var656 String (getKey/1126038692 var3361)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var3094 Int (hashCode/-467973558 var656)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1459 Int (bv2nat (bvxor ((_ int2bv 64) var3951) ((_ int2bv 64) var3094)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var370 Int (* var1459 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var701 Bool (isAnonymous/1126038692 var3361)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var701 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3502 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var3630 Int (bv2nat (bvxor ((_ int2bv 64) var370) ((_ int2bv 64) var3502)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3792 Int (* var3630 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var459 Bool (isExternal/1126038692 var3361)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var459 1 0) 0)) ; Cond: $z1 == 0 
(define-const var136 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var3886 Int (bv2nat (bvxor ((_ int2bv 64) var3792) ((_ int2bv 64) var136)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2041 Int (* var3886 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var318 String (getId/1126038692 var3361)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var2947 Int (hashCode/-467973558 var318)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3841 Int (bv2nat (bvxor ((_ int2bv 64) var2041) ((_ int2bv 64) var2947)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var3101 Int (* var3841 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1010 var2323 (getParts/1126038692 var3361)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var3056 Int (hashCode/1337417431 var1010)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var480 Int (bv2nat (bvxor ((_ int2bv 64) var3101) ((_ int2bv 64) var3056)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3161 Int (* var480 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1911 String (getAlternateId/1126038692 var3361)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var1911 null-String))) ; Cond: $r6 != null 
(define-const var592 String (getAlternateId/1126038692 var3361)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var1347 Int (hashCode/-467973558 var592)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3207 Int (bv2nat (bvxor ((_ int2bv 64) var3161) ((_ int2bv 64) var1347)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3311 Int (* var3207 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var1261 String (getDesc/1126038692 var3361)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var1261 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var2371 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var991 Int (bv2nat (bvxor ((_ int2bv 64) var3311) ((_ int2bv 64) var2371)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var3366 Int (* var991 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3253 String (getMeaning/1126038692 var3361)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var3253 null-String))) ; Cond: $r10 != null 
(define-const var945 String (getMeaning/1126038692 var3361)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var1609 Int (hashCode/-467973558 var945)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2492 Int (bv2nat (bvxor ((_ int2bv 64) var3366) ((_ int2bv 64) var1609)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var535 Int (* var2492 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3390 Bool (isHidden/1126038692 var3361)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var3390 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2900 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var3897 Int (bv2nat (bvxor ((_ int2bv 64) var535) ((_ int2bv 64) var2900)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var289 Int (* var3897 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2599 var686 (getPlaceholderNameToExampleMap/1126038692 var3361)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var398 Int (hashCode/-1247371579 var2599)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var595 Int (bv2nat (bvxor ((_ int2bv 64) var289) ((_ int2bv 64) var398)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2460 Int (* var595 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var1223 var686 (getPlaceholderNameToOriginalCodeMap/1126038692 var3361)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var205 Int (hashCode/-1247371579 var1223)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var688 Int (bv2nat (bvxor ((_ int2bv 64) var2460) ((_ int2bv 64) var205)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3168 Int (* var688 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2666 var3110 (jsPlaceholderNames/1126038692 var3361)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1326 Int (hashCode/1818408063 var2666)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var824 Int (bv2nat (bvxor ((_ int2bv 64) var3168) ((_ int2bv 64) var1326)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1176=com.google.javascript.jscomp.AutoValue_JsMessage, var3361=r0, var2025=$r1, var2944=null_type, var2331=$r2, var2886=$i31, var2767=$i27, var3951=$i28, var656=$r3, var3094=$i0, var1459=$i29, var370=$i30, var701=$z0, var3502=$s32, var3630=$i25, var3792=$i26, var459=$z1, var136=$s33, var3886=$i19, var2041=$i20, var318=$r4, var2947=$i1, var3841=$i21, var3101=$i22, var2323=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1010=$r5, var3056=$i2, var480=$i23, var3161=$i24, var1911=$r6, var592=$r7, var1347=$i34, var3207=$i17, var3311=$i18, var1261=$r8, var2371=$i35, var991=$i15, var3366=$i16, var3253=$r10, var945=$r11, var1609=$i36, var2492=$i13, var535=$i14, var3390=$z2, var2900=$s37, var3897=$i6, var289=$i7, var686=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2599=$r12, var398=$i3, var595=$i8, var2460=$i9, var1223=$r13, var205=$i4, var688=$i10, var3168=$i11, var3110=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2666=$r14, var1326=$i5, var824=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1176, r0=var3361, $r1=var2025, null_type=var2944, $r2=var2331, $i31=var2886, $i27=var2767, $i28=var3951, $r3=var656, $i0=var3094, $i29=var1459, $i30=var370, $z0=var701, $s32=var3502, $i25=var3630, $i26=var3792, $z1=var459, $s33=var136, $i19=var3886, $i20=var2041, $r4=var318, $i1=var2947, $i21=var3841, $i22=var3101, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2323, $r5=var1010, $i2=var3056, $i23=var480, $i24=var3161, $r6=var1911, $r7=var592, $i34=var1347, $i17=var3207, $i18=var3311, $r8=var1261, $i35=var2371, $i15=var991, $i16=var3366, $r10=var3253, $r11=var945, $i36=var1609, $i13=var2492, $i14=var535, $z2=var3390, $s37=var2900, $i6=var3897, $i7=var289, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var686, $r12=var2599, $i3=var398, $i8=var595, $i9=var2460, $r13=var1223, $i4=var205, $i10=var688, $i11=var3168, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3110, $r14=var2666, $i5=var1326, $i12=var824}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15