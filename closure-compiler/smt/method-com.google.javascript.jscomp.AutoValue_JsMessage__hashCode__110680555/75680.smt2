(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2613 0)
(declare-sort var2010 0)
(declare-sort var1301 0)
(declare-sort var2985 0)
(declare-sort var2311 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var2613) String)
(declare-fun getKey/1126038692 (var2613) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var2613) Bool)
(declare-fun isExternal/1126038692 (var2613) Bool)
(declare-fun getId/1126038692 (var2613) String)
(declare-fun getParts/1126038692 (var2613) var1301)
(declare-fun hashCode/1337417431 (var1301) Int)
(declare-fun getAlternateId/1126038692 (var2613) String)
(declare-fun getDesc/1126038692 (var2613) String)
(declare-fun getMeaning/1126038692 (var2613) String)
(declare-fun isHidden/1126038692 (var2613) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var2613) var2985)
(declare-fun hashCode/-1247371579 (var2985) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var2613) var2985)
(declare-fun jsPlaceholderNames/1126038692 (var2613) var2311)
(declare-fun hashCode/1818408063 (var2311) Int)
(declare-const null-var2613 var2613)
(declare-const null-String String)
(declare-const var2427 var2613) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2427 null-var2613)))
(define-const var3656 String (getSourceName/1126038692 var2427)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var3656 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var683 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var2415 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var683)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1197 Int (* var2415 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var3517 String (getKey/1126038692 var2427)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var3323 Int (hashCode/-467973558 var3517)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var987 Int (bv2nat (bvxor ((_ int2bv 64) var1197) ((_ int2bv 64) var3323)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var834 Int (* var987 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2032 Bool (isAnonymous/1126038692 var2427)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var2032 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var2958 Int (bv2nat (bvxor ((_ int2bv 64) var834) ((_ int2bv 64) var1)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1523 Int (* var2958 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var606 Bool (isExternal/1126038692 var2427)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var606 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2319 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var3203 Int (bv2nat (bvxor ((_ int2bv 64) var1523) ((_ int2bv 64) var2319)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2242 Int (* var3203 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var3918 String (getId/1126038692 var2427)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1047 Int (hashCode/-467973558 var3918)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2714 Int (bv2nat (bvxor ((_ int2bv 64) var2242) ((_ int2bv 64) var1047)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2386 Int (* var2714 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2796 var1301 (getParts/1126038692 var2427)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var3524 Int (hashCode/1337417431 var2796)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1156 Int (bv2nat (bvxor ((_ int2bv 64) var2386) ((_ int2bv 64) var3524)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3461 Int (* var1156 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1696 String (getAlternateId/1126038692 var2427)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var1696 null-String))) ; Cond: $r6 != null 
(define-const var1415 String (getAlternateId/1126038692 var2427)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var3013 Int (hashCode/-467973558 var1415)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var50 Int (bv2nat (bvxor ((_ int2bv 64) var3461) ((_ int2bv 64) var3013)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3581 Int (* var50 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var2814 String (getDesc/1126038692 var2427)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var2814 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var3740 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var2913 Int (bv2nat (bvxor ((_ int2bv 64) var3581) ((_ int2bv 64) var3740)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var3100 Int (* var2913 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3119 String (getMeaning/1126038692 var2427)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var3119 null-String))) ; Cond: $r10 != null 
(define-const var713 String (getMeaning/1126038692 var2427)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var3210 Int (hashCode/-467973558 var713)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2261 Int (bv2nat (bvxor ((_ int2bv 64) var3100) ((_ int2bv 64) var3210)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var686 Int (* var2261 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3064 Bool (isHidden/1126038692 var2427)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var3064 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2182 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var103 Int (bv2nat (bvxor ((_ int2bv 64) var686) ((_ int2bv 64) var2182)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var3794 Int (* var103 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var1489 var2985 (getPlaceholderNameToExampleMap/1126038692 var2427)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1132 Int (hashCode/-1247371579 var1489)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1585 Int (bv2nat (bvxor ((_ int2bv 64) var3794) ((_ int2bv 64) var1132)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2766 Int (* var1585 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var482 var2985 (getPlaceholderNameToOriginalCodeMap/1126038692 var2427)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1693 Int (hashCode/-1247371579 var482)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3880 Int (bv2nat (bvxor ((_ int2bv 64) var2766) ((_ int2bv 64) var1693)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var125 Int (* var3880 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3451 var2311 (jsPlaceholderNames/1126038692 var2427)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2833 Int (hashCode/1818408063 var3451)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1082 Int (bv2nat (bvxor ((_ int2bv 64) var125) ((_ int2bv 64) var2833)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var2613=com.google.javascript.jscomp.AutoValue_JsMessage, var2427=r0, var3656=$r1, var2010=null_type, var683=$i31, var2415=$i27, var1197=$i28, var3517=$r3, var3323=$i0, var987=$i29, var834=$i30, var2032=$z0, var1=$s32, var2958=$i25, var1523=$i26, var606=$z1, var2319=$s33, var3203=$i19, var2242=$i20, var3918=$r4, var1047=$i1, var2714=$i21, var2386=$i22, var1301=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2796=$r5, var3524=$i2, var1156=$i23, var3461=$i24, var1696=$r6, var1415=$r7, var3013=$i34, var50=$i17, var3581=$i18, var2814=$r8, var3740=$i35, var2913=$i15, var3100=$i16, var3119=$r10, var713=$r11, var3210=$i36, var2261=$i13, var686=$i14, var3064=$z2, var2182=$s37, var103=$i6, var3794=$i7, var2985=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1489=$r12, var1132=$i3, var1585=$i8, var2766=$i9, var482=$r13, var1693=$i4, var3880=$i10, var125=$i11, var2311=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3451=$r14, var2833=$i5, var1082=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var2613, r0=var2427, $r1=var3656, null_type=var2010, $i31=var683, $i27=var2415, $i28=var1197, $r3=var3517, $i0=var3323, $i29=var987, $i30=var834, $z0=var2032, $s32=var1, $i25=var2958, $i26=var1523, $z1=var606, $s33=var2319, $i19=var3203, $i20=var2242, $r4=var3918, $i1=var1047, $i21=var2714, $i22=var2386, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1301, $r5=var2796, $i2=var3524, $i23=var1156, $i24=var3461, $r6=var1696, $r7=var1415, $i34=var3013, $i17=var50, $i18=var3581, $r8=var2814, $i35=var3740, $i15=var2913, $i16=var3100, $r10=var3119, $r11=var713, $i36=var3210, $i13=var2261, $i14=var686, $z2=var3064, $s37=var2182, $i6=var103, $i7=var3794, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2985, $r12=var1489, $i3=var1132, $i8=var1585, $i9=var2766, $r13=var482, $i4=var1693, $i10=var3880, $i11=var125, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2311, $r14=var3451, $i5=var2833, $i12=var1082}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15