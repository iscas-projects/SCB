(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1366 0)
(declare-sort var1821 0)
(declare-sort var537 0)
(declare-sort var562 0)
(declare-sort var2165 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1366) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var1366) String)
(declare-fun isAnonymous/1126038692 (var1366) Bool)
(declare-fun isExternal/1126038692 (var1366) Bool)
(declare-fun getId/1126038692 (var1366) String)
(declare-fun getParts/1126038692 (var1366) var537)
(declare-fun hashCode/1337417431 (var537) Int)
(declare-fun getAlternateId/1126038692 (var1366) String)
(declare-fun getDesc/1126038692 (var1366) String)
(declare-fun getMeaning/1126038692 (var1366) String)
(declare-fun isHidden/1126038692 (var1366) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1366) var562)
(declare-fun hashCode/-1247371579 (var562) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1366) var562)
(declare-fun jsPlaceholderNames/1126038692 (var1366) var2165)
(declare-fun hashCode/1818408063 (var2165) Int)
(declare-const null-var1366 var1366)
(declare-const null-String String)
(declare-const var2343 var1366) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2343 null-var1366)))
(define-const var3339 String (getSourceName/1126038692 var2343)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var3339 null-String))) ; Cond: $r1 != null 
(define-const var2672 String (getSourceName/1126038692 var2343)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var2191 Int (hashCode/-467973558 var2672)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3502 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2191)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1769 Int (* var3502 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1127 String (getKey/1126038692 var2343)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2068 Int (hashCode/-467973558 var1127)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var658 Int (bv2nat (bvxor ((_ int2bv 64) var1769) ((_ int2bv 64) var2068)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var2246 Int (* var658 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var3372 Bool (isAnonymous/1126038692 var2343)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var3372 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2515 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var2192 Int (bv2nat (bvxor ((_ int2bv 64) var2246) ((_ int2bv 64) var2515)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var775 Int (* var2192 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var1121 Bool (isExternal/1126038692 var2343)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var1121 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1504 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var2094 Int (bv2nat (bvxor ((_ int2bv 64) var775) ((_ int2bv 64) var1504)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2124 Int (* var2094 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var3447 String (getId/1126038692 var2343)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var370 Int (hashCode/-467973558 var3447)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2090 Int (bv2nat (bvxor ((_ int2bv 64) var2124) ((_ int2bv 64) var370)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2125 Int (* var2090 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1675 var537 (getParts/1126038692 var2343)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var378 Int (hashCode/1337417431 var1675)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var958 Int (bv2nat (bvxor ((_ int2bv 64) var2125) ((_ int2bv 64) var378)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var2678 Int (* var958 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var153 String (getAlternateId/1126038692 var2343)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var153 null-String))) ; Cond: $r6 != null 
(define-const var2508 String (getAlternateId/1126038692 var2343)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var2647 Int (hashCode/-467973558 var2508)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3596 Int (bv2nat (bvxor ((_ int2bv 64) var2678) ((_ int2bv 64) var2647)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var142 Int (* var3596 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var2350 String (getDesc/1126038692 var2343)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var2350 null-String))) ; Cond: $r8 != null 
(define-const var314 String (getDesc/1126038692 var2343)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var3673 Int (hashCode/-467973558 var314)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3220 Int (bv2nat (bvxor ((_ int2bv 64) var142) ((_ int2bv 64) var3673)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1576 Int (* var3220 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var1664 String (getMeaning/1126038692 var2343)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var1664 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var161 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var2263 Int (bv2nat (bvxor ((_ int2bv 64) var1576) ((_ int2bv 64) var161)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3724 Int (* var2263 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var157 Bool (isHidden/1126038692 var2343)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var157 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var191 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var732 Int (bv2nat (bvxor ((_ int2bv 64) var3724) ((_ int2bv 64) var191)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1661 Int (* var732 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2188 var562 (getPlaceholderNameToExampleMap/1126038692 var2343)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var700 Int (hashCode/-1247371579 var2188)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3139 Int (bv2nat (bvxor ((_ int2bv 64) var1661) ((_ int2bv 64) var700)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2782 Int (* var3139 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var2258 var562 (getPlaceholderNameToOriginalCodeMap/1126038692 var2343)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var2015 Int (hashCode/-1247371579 var2258)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var149 Int (bv2nat (bvxor ((_ int2bv 64) var2782) ((_ int2bv 64) var2015)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3335 Int (* var149 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3934 var2165 (jsPlaceholderNames/1126038692 var2343)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var3895 Int (hashCode/1818408063 var3934)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1350 Int (bv2nat (bvxor ((_ int2bv 64) var3335) ((_ int2bv 64) var3895)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1366=com.google.javascript.jscomp.AutoValue_JsMessage, var2343=r0, var3339=$r1, var1821=null_type, var2672=$r2, var2191=$i31, var3502=$i27, var1769=$i28, var1127=$r3, var2068=$i0, var658=$i29, var2246=$i30, var3372=$z0, var2515=$s32, var2192=$i25, var775=$i26, var1121=$z1, var1504=$s33, var2094=$i19, var2124=$i20, var3447=$r4, var370=$i1, var2090=$i21, var2125=$i22, var537=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1675=$r5, var378=$i2, var958=$i23, var2678=$i24, var153=$r6, var2508=$r7, var2647=$i34, var3596=$i17, var142=$i18, var2350=$r8, var314=$r9, var3673=$i35, var3220=$i15, var1576=$i16, var1664=$r10, var161=$i36, var2263=$i13, var3724=$i14, var157=$z2, var191=$s37, var732=$i6, var1661=$i7, var562=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2188=$r12, var700=$i3, var3139=$i8, var2782=$i9, var2258=$r13, var2015=$i4, var149=$i10, var3335=$i11, var2165=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3934=$r14, var3895=$i5, var1350=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1366, r0=var2343, $r1=var3339, null_type=var1821, $r2=var2672, $i31=var2191, $i27=var3502, $i28=var1769, $r3=var1127, $i0=var2068, $i29=var658, $i30=var2246, $z0=var3372, $s32=var2515, $i25=var2192, $i26=var775, $z1=var1121, $s33=var1504, $i19=var2094, $i20=var2124, $r4=var3447, $i1=var370, $i21=var2090, $i22=var2125, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var537, $r5=var1675, $i2=var378, $i23=var958, $i24=var2678, $r6=var153, $r7=var2508, $i34=var2647, $i17=var3596, $i18=var142, $r8=var2350, $r9=var314, $i35=var3673, $i15=var3220, $i16=var1576, $r10=var1664, $i36=var161, $i13=var2263, $i14=var3724, $z2=var157, $s37=var191, $i6=var732, $i7=var1661, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var562, $r12=var2188, $i3=var700, $i8=var3139, $i9=var2782, $r13=var2258, $i4=var2015, $i10=var149, $i11=var3335, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2165, $r14=var3934, $i5=var3895, $i12=var1350}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15