(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var18 0)
(declare-sort var1074 0)
(declare-sort var3086 0)
(declare-sort var726 0)
(declare-sort var442 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var18) String)
(declare-fun getKey/1126038692 (var18) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var18) Bool)
(declare-fun isExternal/1126038692 (var18) Bool)
(declare-fun getId/1126038692 (var18) String)
(declare-fun getParts/1126038692 (var18) var3086)
(declare-fun hashCode/1337417431 (var3086) Int)
(declare-fun getAlternateId/1126038692 (var18) String)
(declare-fun getDesc/1126038692 (var18) String)
(declare-fun getMeaning/1126038692 (var18) String)
(declare-fun isHidden/1126038692 (var18) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var18) var726)
(declare-fun hashCode/-1247371579 (var726) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var18) var726)
(declare-fun jsPlaceholderNames/1126038692 (var18) var442)
(declare-fun hashCode/1818408063 (var442) Int)
(declare-const null-var18 var18)
(declare-const null-String String)
(declare-const var2808 var18) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2808 null-var18)))
(define-const var2531 String (getSourceName/1126038692 var2808)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var2531 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var2438 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var1769 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2438)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var783 Int (* var1769 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1918 String (getKey/1126038692 var2808)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2375 Int (hashCode/-467973558 var1918)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2290 Int (bv2nat (bvxor ((_ int2bv 64) var783) ((_ int2bv 64) var2375)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1778 Int (* var2290 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var776 Bool (isAnonymous/1126038692 var2808)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var776 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2118 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var3394 Int (bv2nat (bvxor ((_ int2bv 64) var1778) ((_ int2bv 64) var2118)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1519 Int (* var3394 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var3792 Bool (isExternal/1126038692 var2808)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var3792 1 0) 0)) ; Cond: $z1 == 0 
(define-const var619 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var2268 Int (bv2nat (bvxor ((_ int2bv 64) var1519) ((_ int2bv 64) var619)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var3137 Int (* var2268 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var50 String (getId/1126038692 var2808)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1900 Int (hashCode/-467973558 var50)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1153 Int (bv2nat (bvxor ((_ int2bv 64) var3137) ((_ int2bv 64) var1900)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2086 Int (* var1153 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var3878 var3086 (getParts/1126038692 var2808)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1487 Int (hashCode/1337417431 var3878)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1233 Int (bv2nat (bvxor ((_ int2bv 64) var2086) ((_ int2bv 64) var1487)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1981 Int (* var1233 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var2538 String (getAlternateId/1126038692 var2808)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var2538 null-String))) ; Cond: $r6 != null 
(define-const var2811 String (getAlternateId/1126038692 var2808)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var3573 Int (hashCode/-467973558 var2811)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2807 Int (bv2nat (bvxor ((_ int2bv 64) var1981) ((_ int2bv 64) var3573)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3955 Int (* var2807 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var1751 String (getDesc/1126038692 var2808)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var1751 null-String))) ; Cond: $r8 != null 
(define-const var418 String (getDesc/1126038692 var2808)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var1998 Int (hashCode/-467973558 var418)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var436 Int (bv2nat (bvxor ((_ int2bv 64) var3955) ((_ int2bv 64) var1998)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var3211 Int (* var436 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3224 String (getMeaning/1126038692 var2808)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var3224 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var3181 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var864 Int (bv2nat (bvxor ((_ int2bv 64) var3211) ((_ int2bv 64) var3181)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3972 Int (* var864 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var1616 Bool (isHidden/1126038692 var2808)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var1616 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var65 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var1308 Int (bv2nat (bvxor ((_ int2bv 64) var3972) ((_ int2bv 64) var65)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var3984 Int (* var1308 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var159 var726 (getPlaceholderNameToExampleMap/1126038692 var2808)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var70 Int (hashCode/-1247371579 var159)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2895 Int (bv2nat (bvxor ((_ int2bv 64) var3984) ((_ int2bv 64) var70)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var1575 Int (* var2895 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var1430 var726 (getPlaceholderNameToOriginalCodeMap/1126038692 var2808)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1555 Int (hashCode/-1247371579 var1430)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var768 Int (bv2nat (bvxor ((_ int2bv 64) var1575) ((_ int2bv 64) var1555)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3073 Int (* var768 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3693 var442 (jsPlaceholderNames/1126038692 var2808)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2400 Int (hashCode/1818408063 var3693)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var3074 Int (bv2nat (bvxor ((_ int2bv 64) var3073) ((_ int2bv 64) var2400)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var18=com.google.javascript.jscomp.AutoValue_JsMessage, var2808=r0, var2531=$r1, var1074=null_type, var2438=$i31, var1769=$i27, var783=$i28, var1918=$r3, var2375=$i0, var2290=$i29, var1778=$i30, var776=$z0, var2118=$s32, var3394=$i25, var1519=$i26, var3792=$z1, var619=$s33, var2268=$i19, var3137=$i20, var50=$r4, var1900=$i1, var1153=$i21, var2086=$i22, var3086=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3878=$r5, var1487=$i2, var1233=$i23, var1981=$i24, var2538=$r6, var2811=$r7, var3573=$i34, var2807=$i17, var3955=$i18, var1751=$r8, var418=$r9, var1998=$i35, var436=$i15, var3211=$i16, var3224=$r10, var3181=$i36, var864=$i13, var3972=$i14, var1616=$z2, var65=$s37, var1308=$i6, var3984=$i7, var726=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var159=$r12, var70=$i3, var2895=$i8, var1575=$i9, var1430=$r13, var1555=$i4, var768=$i10, var3073=$i11, var442=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3693=$r14, var2400=$i5, var3074=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var18, r0=var2808, $r1=var2531, null_type=var1074, $i31=var2438, $i27=var1769, $i28=var783, $r3=var1918, $i0=var2375, $i29=var2290, $i30=var1778, $z0=var776, $s32=var2118, $i25=var3394, $i26=var1519, $z1=var3792, $s33=var619, $i19=var2268, $i20=var3137, $r4=var50, $i1=var1900, $i21=var1153, $i22=var2086, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3086, $r5=var3878, $i2=var1487, $i23=var1233, $i24=var1981, $r6=var2538, $r7=var2811, $i34=var3573, $i17=var2807, $i18=var3955, $r8=var1751, $r9=var418, $i35=var1998, $i15=var436, $i16=var3211, $r10=var3224, $i36=var3181, $i13=var864, $i14=var3972, $z2=var1616, $s37=var65, $i6=var1308, $i7=var3984, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var726, $r12=var159, $i3=var70, $i8=var2895, $i9=var1575, $r13=var1430, $i4=var1555, $i10=var768, $i11=var3073, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var442, $r14=var3693, $i5=var2400, $i12=var3074}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15