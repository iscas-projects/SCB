(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var149 0)
(declare-sort var1720 0)
(declare-sort var3727 0)
(declare-sort var2111 0)
(declare-sort var1850 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var149) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var149) String)
(declare-fun isAnonymous/1126038692 (var149) Bool)
(declare-fun isExternal/1126038692 (var149) Bool)
(declare-fun getId/1126038692 (var149) String)
(declare-fun getParts/1126038692 (var149) var3727)
(declare-fun hashCode/1337417431 (var3727) Int)
(declare-fun getAlternateId/1126038692 (var149) String)
(declare-fun getDesc/1126038692 (var149) String)
(declare-fun getMeaning/1126038692 (var149) String)
(declare-fun isHidden/1126038692 (var149) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var149) var2111)
(declare-fun hashCode/-1247371579 (var2111) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var149) var2111)
(declare-fun jsPlaceholderNames/1126038692 (var149) var1850)
(declare-fun hashCode/1818408063 (var1850) Int)
(declare-const null-var149 var149)
(declare-const null-String String)
(declare-const var1693 var149) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1693 null-var149)))
(define-const var660 String (getSourceName/1126038692 var1693)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var660 null-String))) ; Cond: $r1 != null 
(define-const var2430 String (getSourceName/1126038692 var1693)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var3110 Int (hashCode/-467973558 var2430)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var52 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3110)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var791 Int (* var52 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1099 String (getKey/1126038692 var1693)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var419 Int (hashCode/-467973558 var1099)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2014 Int (bv2nat (bvxor ((_ int2bv 64) var791) ((_ int2bv 64) var419)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var838 Int (* var2014 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var969 Bool (isAnonymous/1126038692 var1693)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var969 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3620 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var503 Int (bv2nat (bvxor ((_ int2bv 64) var838) ((_ int2bv 64) var3620)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var641 Int (* var503 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var532 Bool (isExternal/1126038692 var1693)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var532 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2022 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var1191 Int (bv2nat (bvxor ((_ int2bv 64) var641) ((_ int2bv 64) var2022)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var328 Int (* var1191 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var3812 String (getId/1126038692 var1693)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1572 Int (hashCode/-467973558 var3812)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2259 Int (bv2nat (bvxor ((_ int2bv 64) var328) ((_ int2bv 64) var1572)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var657 Int (* var2259 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var3467 var3727 (getParts/1126038692 var1693)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var318 Int (hashCode/1337417431 var3467)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3323 Int (bv2nat (bvxor ((_ int2bv 64) var657) ((_ int2bv 64) var318)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3208 Int (* var3323 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1147 String (getAlternateId/1126038692 var1693)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var1147 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var1449 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var2 Int (bv2nat (bvxor ((_ int2bv 64) var3208) ((_ int2bv 64) var1449)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3580 Int (* var2 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var3001 String (getDesc/1126038692 var1693)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var3001 null-String))) ; Cond: $r8 != null 
(define-const var731 String (getDesc/1126038692 var1693)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var2602 Int (hashCode/-467973558 var731)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2214 Int (bv2nat (bvxor ((_ int2bv 64) var3580) ((_ int2bv 64) var2602)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var458 Int (* var2214 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var127 String (getMeaning/1126038692 var1693)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var127 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var130 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var2978 Int (bv2nat (bvxor ((_ int2bv 64) var458) ((_ int2bv 64) var130)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3595 Int (* var2978 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var226 Bool (isHidden/1126038692 var1693)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var226 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var580 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var1726 Int (bv2nat (bvxor ((_ int2bv 64) var3595) ((_ int2bv 64) var580)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var3026 Int (* var1726 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var1453 var2111 (getPlaceholderNameToExampleMap/1126038692 var1693)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var892 Int (hashCode/-1247371579 var1453)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3513 Int (bv2nat (bvxor ((_ int2bv 64) var3026) ((_ int2bv 64) var892)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3464 Int (* var3513 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var1768 var2111 (getPlaceholderNameToOriginalCodeMap/1126038692 var1693)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var166 Int (hashCode/-1247371579 var1768)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3633 Int (bv2nat (bvxor ((_ int2bv 64) var3464) ((_ int2bv 64) var166)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var65 Int (* var3633 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var327 var1850 (jsPlaceholderNames/1126038692 var1693)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2768 Int (hashCode/1818408063 var327)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1941 Int (bv2nat (bvxor ((_ int2bv 64) var65) ((_ int2bv 64) var2768)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var149=com.google.javascript.jscomp.AutoValue_JsMessage, var1693=r0, var660=$r1, var1720=null_type, var2430=$r2, var3110=$i31, var52=$i27, var791=$i28, var1099=$r3, var419=$i0, var2014=$i29, var838=$i30, var969=$z0, var3620=$s32, var503=$i25, var641=$i26, var532=$z1, var2022=$s33, var1191=$i19, var328=$i20, var3812=$r4, var1572=$i1, var2259=$i21, var657=$i22, var3727=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3467=$r5, var318=$i2, var3323=$i23, var3208=$i24, var1147=$r6, var1449=$i34, var2=$i17, var3580=$i18, var3001=$r8, var731=$r9, var2602=$i35, var2214=$i15, var458=$i16, var127=$r10, var130=$i36, var2978=$i13, var3595=$i14, var226=$z2, var580=$s37, var1726=$i6, var3026=$i7, var2111=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1453=$r12, var892=$i3, var3513=$i8, var3464=$i9, var1768=$r13, var166=$i4, var3633=$i10, var65=$i11, var1850=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var327=$r14, var2768=$i5, var1941=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var149, r0=var1693, $r1=var660, null_type=var1720, $r2=var2430, $i31=var3110, $i27=var52, $i28=var791, $r3=var1099, $i0=var419, $i29=var2014, $i30=var838, $z0=var969, $s32=var3620, $i25=var503, $i26=var641, $z1=var532, $s33=var2022, $i19=var1191, $i20=var328, $r4=var3812, $i1=var1572, $i21=var2259, $i22=var657, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3727, $r5=var3467, $i2=var318, $i23=var3323, $i24=var3208, $r6=var1147, $i34=var1449, $i17=var2, $i18=var3580, $r8=var3001, $r9=var731, $i35=var2602, $i15=var2214, $i16=var458, $r10=var127, $i36=var130, $i13=var2978, $i14=var3595, $z2=var226, $s37=var580, $i6=var1726, $i7=var3026, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2111, $r12=var1453, $i3=var892, $i8=var3513, $i9=var3464, $r13=var1768, $i4=var166, $i10=var3633, $i11=var65, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1850, $r14=var327, $i5=var2768, $i12=var1941}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15