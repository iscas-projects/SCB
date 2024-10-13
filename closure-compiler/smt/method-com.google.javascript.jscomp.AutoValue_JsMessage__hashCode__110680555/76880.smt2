(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3752 0)
(declare-sort var2806 0)
(declare-sort var2897 0)
(declare-sort var2202 0)
(declare-sort var1261 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3752) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var3752) String)
(declare-fun isAnonymous/1126038692 (var3752) Bool)
(declare-fun isExternal/1126038692 (var3752) Bool)
(declare-fun getId/1126038692 (var3752) String)
(declare-fun getParts/1126038692 (var3752) var2897)
(declare-fun hashCode/1337417431 (var2897) Int)
(declare-fun getAlternateId/1126038692 (var3752) String)
(declare-fun getDesc/1126038692 (var3752) String)
(declare-fun getMeaning/1126038692 (var3752) String)
(declare-fun isHidden/1126038692 (var3752) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3752) var2202)
(declare-fun hashCode/-1247371579 (var2202) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3752) var2202)
(declare-fun jsPlaceholderNames/1126038692 (var3752) var1261)
(declare-fun hashCode/1818408063 (var1261) Int)
(declare-const null-var3752 var3752)
(declare-const null-String String)
(declare-const var827 var3752) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var827 null-var3752)))
(define-const var2186 String (getSourceName/1126038692 var827)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var2186 null-String))) ; Cond: $r1 != null 
(define-const var2339 String (getSourceName/1126038692 var827)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var882 Int (hashCode/-467973558 var2339)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2493 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var882)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var2985 Int (* var2493 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2069 String (getKey/1126038692 var827)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var3614 Int (hashCode/-467973558 var2069)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2919 Int (bv2nat (bvxor ((_ int2bv 64) var2985) ((_ int2bv 64) var3614)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1228 Int (* var2919 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var297 Bool (isAnonymous/1126038692 var827)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var297 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1097 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var3545 Int (bv2nat (bvxor ((_ int2bv 64) var1228) ((_ int2bv 64) var1097)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var27 Int (* var3545 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2374 Bool (isExternal/1126038692 var827)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var2374 1 0) 0)) ; Cond: $z1 == 0 
(define-const var864 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var3015 Int (bv2nat (bvxor ((_ int2bv 64) var27) ((_ int2bv 64) var864)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1281 Int (* var3015 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1912 String (getId/1126038692 var827)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1072 Int (hashCode/-467973558 var1912)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2938 Int (bv2nat (bvxor ((_ int2bv 64) var1281) ((_ int2bv 64) var1072)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var651 Int (* var2938 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2781 var2897 (getParts/1126038692 var827)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var2268 Int (hashCode/1337417431 var2781)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3558 Int (bv2nat (bvxor ((_ int2bv 64) var651) ((_ int2bv 64) var2268)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var588 Int (* var3558 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1529 String (getAlternateId/1126038692 var827)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var1529 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var2477 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var3427 Int (bv2nat (bvxor ((_ int2bv 64) var588) ((_ int2bv 64) var2477)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3159 Int (* var3427 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var3815 String (getDesc/1126038692 var827)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var3815 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var386 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var3803 Int (bv2nat (bvxor ((_ int2bv 64) var3159) ((_ int2bv 64) var386)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var162 Int (* var3803 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var1602 String (getMeaning/1126038692 var827)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var1602 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var2728 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var1006 Int (bv2nat (bvxor ((_ int2bv 64) var162) ((_ int2bv 64) var2728)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3136 Int (* var1006 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var1643 Bool (isHidden/1126038692 var827)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var1643 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2816 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var1270 Int (bv2nat (bvxor ((_ int2bv 64) var3136) ((_ int2bv 64) var2816)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var2088 Int (* var1270 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3147 var2202 (getPlaceholderNameToExampleMap/1126038692 var827)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3052 Int (hashCode/-1247371579 var3147)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1656 Int (bv2nat (bvxor ((_ int2bv 64) var2088) ((_ int2bv 64) var3052)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var331 Int (* var1656 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var1132 var2202 (getPlaceholderNameToOriginalCodeMap/1126038692 var827)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var569 Int (hashCode/-1247371579 var1132)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3504 Int (bv2nat (bvxor ((_ int2bv 64) var331) ((_ int2bv 64) var569)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var2415 Int (* var3504 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2703 var1261 (jsPlaceholderNames/1126038692 var827)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2462 Int (hashCode/1818408063 var2703)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var3522 Int (bv2nat (bvxor ((_ int2bv 64) var2415) ((_ int2bv 64) var2462)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3752=com.google.javascript.jscomp.AutoValue_JsMessage, var827=r0, var2186=$r1, var2806=null_type, var2339=$r2, var882=$i31, var2493=$i27, var2985=$i28, var2069=$r3, var3614=$i0, var2919=$i29, var1228=$i30, var297=$z0, var1097=$s32, var3545=$i25, var27=$i26, var2374=$z1, var864=$s33, var3015=$i19, var1281=$i20, var1912=$r4, var1072=$i1, var2938=$i21, var651=$i22, var2897=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2781=$r5, var2268=$i2, var3558=$i23, var588=$i24, var1529=$r6, var2477=$i34, var3427=$i17, var3159=$i18, var3815=$r8, var386=$i35, var3803=$i15, var162=$i16, var1602=$r10, var2728=$i36, var1006=$i13, var3136=$i14, var1643=$z2, var2816=$s37, var1270=$i6, var2088=$i7, var2202=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3147=$r12, var3052=$i3, var1656=$i8, var331=$i9, var1132=$r13, var569=$i4, var3504=$i10, var2415=$i11, var1261=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2703=$r14, var2462=$i5, var3522=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3752, r0=var827, $r1=var2186, null_type=var2806, $r2=var2339, $i31=var882, $i27=var2493, $i28=var2985, $r3=var2069, $i0=var3614, $i29=var2919, $i30=var1228, $z0=var297, $s32=var1097, $i25=var3545, $i26=var27, $z1=var2374, $s33=var864, $i19=var3015, $i20=var1281, $r4=var1912, $i1=var1072, $i21=var2938, $i22=var651, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2897, $r5=var2781, $i2=var2268, $i23=var3558, $i24=var588, $r6=var1529, $i34=var2477, $i17=var3427, $i18=var3159, $r8=var3815, $i35=var386, $i15=var3803, $i16=var162, $r10=var1602, $i36=var2728, $i13=var1006, $i14=var3136, $z2=var1643, $s37=var2816, $i6=var1270, $i7=var2088, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2202, $r12=var3147, $i3=var3052, $i8=var1656, $i9=var331, $r13=var1132, $i4=var569, $i10=var3504, $i11=var2415, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1261, $r14=var2703, $i5=var2462, $i12=var3522}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15