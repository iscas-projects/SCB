(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1037 0)
(declare-sort var2043 0)
(declare-sort var818 0)
(declare-sort var459 0)
(declare-sort var3637 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1037) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var1037) String)
(declare-fun isAnonymous/1126038692 (var1037) Bool)
(declare-fun isExternal/1126038692 (var1037) Bool)
(declare-fun getId/1126038692 (var1037) String)
(declare-fun getParts/1126038692 (var1037) var818)
(declare-fun hashCode/1337417431 (var818) Int)
(declare-fun getAlternateId/1126038692 (var1037) String)
(declare-fun getDesc/1126038692 (var1037) String)
(declare-fun getMeaning/1126038692 (var1037) String)
(declare-fun isHidden/1126038692 (var1037) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1037) var459)
(declare-fun hashCode/-1247371579 (var459) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1037) var459)
(declare-fun jsPlaceholderNames/1126038692 (var1037) var3637)
(declare-fun hashCode/1818408063 (var3637) Int)
(declare-const null-var1037 var1037)
(declare-const null-String String)
(declare-const var1504 var1037) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1504 null-var1037)))
(define-const var552 String (getSourceName/1126038692 var1504)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var552 null-String))) ; Cond: $r1 != null 
(define-const var107 String (getSourceName/1126038692 var1504)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var3825 Int (hashCode/-467973558 var107)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2254 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3825)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var3754 Int (* var2254 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2045 String (getKey/1126038692 var1504)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2555 Int (hashCode/-467973558 var2045)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2664 Int (bv2nat (bvxor ((_ int2bv 64) var3754) ((_ int2bv 64) var2555)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var2165 Int (* var2664 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2945 Bool (isAnonymous/1126038692 var1504)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var2945 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2008 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var2995 Int (bv2nat (bvxor ((_ int2bv 64) var2165) ((_ int2bv 64) var2008)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3602 Int (* var2995 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2524 Bool (isExternal/1126038692 var1504)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var2524 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2831 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var1999 Int (bv2nat (bvxor ((_ int2bv 64) var3602) ((_ int2bv 64) var2831)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2790 Int (* var1999 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var440 String (getId/1126038692 var1504)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3055 Int (hashCode/-467973558 var440)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var8 Int (bv2nat (bvxor ((_ int2bv 64) var2790) ((_ int2bv 64) var3055)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var778 Int (* var8 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var864 var818 (getParts/1126038692 var1504)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1130 Int (hashCode/1337417431 var864)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2161 Int (bv2nat (bvxor ((_ int2bv 64) var778) ((_ int2bv 64) var1130)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3672 Int (* var2161 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1776 String (getAlternateId/1126038692 var1504)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var1776 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var2940 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var28 Int (bv2nat (bvxor ((_ int2bv 64) var3672) ((_ int2bv 64) var2940)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var1554 Int (* var28 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var3975 String (getDesc/1126038692 var1504)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var3975 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var3724 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var3710 Int (bv2nat (bvxor ((_ int2bv 64) var1554) ((_ int2bv 64) var3724)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2468 Int (* var3710 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2693 String (getMeaning/1126038692 var1504)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var2693 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var3140 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var1101 Int (bv2nat (bvxor ((_ int2bv 64) var2468) ((_ int2bv 64) var3140)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2021 Int (* var1101 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var1839 Bool (isHidden/1126038692 var1504)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var1839 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3104 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var2167 Int (bv2nat (bvxor ((_ int2bv 64) var2021) ((_ int2bv 64) var3104)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var752 Int (* var2167 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3783 var459 (getPlaceholderNameToExampleMap/1126038692 var1504)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3266 Int (hashCode/-1247371579 var3783)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2713 Int (bv2nat (bvxor ((_ int2bv 64) var752) ((_ int2bv 64) var3266)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var1159 Int (* var2713 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var2739 var459 (getPlaceholderNameToOriginalCodeMap/1126038692 var1504)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var2938 Int (hashCode/-1247371579 var2739)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2644 Int (bv2nat (bvxor ((_ int2bv 64) var1159) ((_ int2bv 64) var2938)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3286 Int (* var2644 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var1118 var3637 (jsPlaceholderNames/1126038692 var1504)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var3449 Int (hashCode/1818408063 var1118)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var3452 Int (bv2nat (bvxor ((_ int2bv 64) var3286) ((_ int2bv 64) var3449)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1037=com.google.javascript.jscomp.AutoValue_JsMessage, var1504=r0, var552=$r1, var2043=null_type, var107=$r2, var3825=$i31, var2254=$i27, var3754=$i28, var2045=$r3, var2555=$i0, var2664=$i29, var2165=$i30, var2945=$z0, var2008=$s32, var2995=$i25, var3602=$i26, var2524=$z1, var2831=$s33, var1999=$i19, var2790=$i20, var440=$r4, var3055=$i1, var8=$i21, var778=$i22, var818=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var864=$r5, var1130=$i2, var2161=$i23, var3672=$i24, var1776=$r6, var2940=$i34, var28=$i17, var1554=$i18, var3975=$r8, var3724=$i35, var3710=$i15, var2468=$i16, var2693=$r10, var3140=$i36, var1101=$i13, var2021=$i14, var1839=$z2, var3104=$s37, var2167=$i6, var752=$i7, var459=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3783=$r12, var3266=$i3, var2713=$i8, var1159=$i9, var2739=$r13, var2938=$i4, var2644=$i10, var3286=$i11, var3637=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var1118=$r14, var3449=$i5, var3452=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1037, r0=var1504, $r1=var552, null_type=var2043, $r2=var107, $i31=var3825, $i27=var2254, $i28=var3754, $r3=var2045, $i0=var2555, $i29=var2664, $i30=var2165, $z0=var2945, $s32=var2008, $i25=var2995, $i26=var3602, $z1=var2524, $s33=var2831, $i19=var1999, $i20=var2790, $r4=var440, $i1=var3055, $i21=var8, $i22=var778, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var818, $r5=var864, $i2=var1130, $i23=var2161, $i24=var3672, $r6=var1776, $i34=var2940, $i17=var28, $i18=var1554, $r8=var3975, $i35=var3724, $i15=var3710, $i16=var2468, $r10=var2693, $i36=var3140, $i13=var1101, $i14=var2021, $z2=var1839, $s37=var3104, $i6=var2167, $i7=var752, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var459, $r12=var3783, $i3=var3266, $i8=var2713, $i9=var1159, $r13=var2739, $i4=var2938, $i10=var2644, $i11=var3286, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3637, $r14=var1118, $i5=var3449, $i12=var3452}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15