(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1880 0)
(declare-sort var2030 0)
(declare-sort var2135 0)
(declare-sort var3291 0)
(declare-sort var2136 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1880) String)
(declare-fun getKey/1126038692 (var1880) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var1880) Bool)
(declare-fun isExternal/1126038692 (var1880) Bool)
(declare-fun getId/1126038692 (var1880) String)
(declare-fun getParts/1126038692 (var1880) var2135)
(declare-fun hashCode/1337417431 (var2135) Int)
(declare-fun getAlternateId/1126038692 (var1880) String)
(declare-fun getDesc/1126038692 (var1880) String)
(declare-fun getMeaning/1126038692 (var1880) String)
(declare-fun isHidden/1126038692 (var1880) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1880) var3291)
(declare-fun hashCode/-1247371579 (var3291) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1880) var3291)
(declare-fun jsPlaceholderNames/1126038692 (var1880) var2136)
(declare-fun hashCode/1818408063 (var2136) Int)
(declare-const null-var1880 var1880)
(declare-const null-String String)
(declare-const var3083 var1880) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3083 null-var1880)))
(define-const var1360 String (getSourceName/1126038692 var3083)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var1360 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var387 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var657 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var387)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var575 Int (* var657 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2961 String (getKey/1126038692 var3083)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var966 Int (hashCode/-467973558 var2961)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1500 Int (bv2nat (bvxor ((_ int2bv 64) var575) ((_ int2bv 64) var966)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3167 Int (* var1500 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var415 Bool (isAnonymous/1126038692 var3083)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var415 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var481 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var972 Int (bv2nat (bvxor ((_ int2bv 64) var3167) ((_ int2bv 64) var481)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1870 Int (* var972 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var967 Bool (isExternal/1126038692 var3083)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var967 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2852 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var2736 Int (bv2nat (bvxor ((_ int2bv 64) var1870) ((_ int2bv 64) var2852)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2992 Int (* var2736 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var3563 String (getId/1126038692 var3083)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var484 Int (hashCode/-467973558 var3563)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3968 Int (bv2nat (bvxor ((_ int2bv 64) var2992) ((_ int2bv 64) var484)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1122 Int (* var3968 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2819 var2135 (getParts/1126038692 var3083)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var2721 Int (hashCode/1337417431 var2819)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var508 Int (bv2nat (bvxor ((_ int2bv 64) var1122) ((_ int2bv 64) var2721)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3099 Int (* var508 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1001 String (getAlternateId/1126038692 var3083)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var1001 null-String))) ; Cond: $r6 != null 
(define-const var2830 String (getAlternateId/1126038692 var3083)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var76 Int (hashCode/-467973558 var2830)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3776 Int (bv2nat (bvxor ((_ int2bv 64) var3099) ((_ int2bv 64) var76)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var128 Int (* var3776 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var2837 String (getDesc/1126038692 var3083)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var2837 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var3019 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var907 Int (bv2nat (bvxor ((_ int2bv 64) var128) ((_ int2bv 64) var3019)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1043 Int (* var907 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3600 String (getMeaning/1126038692 var3083)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var3600 null-String))) ; Cond: $r10 != null 
(define-const var2013 String (getMeaning/1126038692 var3083)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var692 Int (hashCode/-467973558 var2013)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var310 Int (bv2nat (bvxor ((_ int2bv 64) var1043) ((_ int2bv 64) var692)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2536 Int (* var310 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3303 Bool (isHidden/1126038692 var3083)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var3303 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3157 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var3788 Int (bv2nat (bvxor ((_ int2bv 64) var2536) ((_ int2bv 64) var3157)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var951 Int (* var3788 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2161 var3291 (getPlaceholderNameToExampleMap/1126038692 var3083)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var145 Int (hashCode/-1247371579 var2161)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2413 Int (bv2nat (bvxor ((_ int2bv 64) var951) ((_ int2bv 64) var145)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3681 Int (* var2413 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var1974 var3291 (getPlaceholderNameToOriginalCodeMap/1126038692 var3083)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3660 Int (hashCode/-1247371579 var1974)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var851 Int (bv2nat (bvxor ((_ int2bv 64) var3681) ((_ int2bv 64) var3660)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var1887 Int (* var851 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2855 var2136 (jsPlaceholderNames/1126038692 var3083)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2878 Int (hashCode/1818408063 var2855)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var2085 Int (bv2nat (bvxor ((_ int2bv 64) var1887) ((_ int2bv 64) var2878)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1880=com.google.javascript.jscomp.AutoValue_JsMessage, var3083=r0, var1360=$r1, var2030=null_type, var387=$i31, var657=$i27, var575=$i28, var2961=$r3, var966=$i0, var1500=$i29, var3167=$i30, var415=$z0, var481=$s32, var972=$i25, var1870=$i26, var967=$z1, var2852=$s33, var2736=$i19, var2992=$i20, var3563=$r4, var484=$i1, var3968=$i21, var1122=$i22, var2135=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2819=$r5, var2721=$i2, var508=$i23, var3099=$i24, var1001=$r6, var2830=$r7, var76=$i34, var3776=$i17, var128=$i18, var2837=$r8, var3019=$i35, var907=$i15, var1043=$i16, var3600=$r10, var2013=$r11, var692=$i36, var310=$i13, var2536=$i14, var3303=$z2, var3157=$s37, var3788=$i6, var951=$i7, var3291=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2161=$r12, var145=$i3, var2413=$i8, var3681=$i9, var1974=$r13, var3660=$i4, var851=$i10, var1887=$i11, var2136=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2855=$r14, var2878=$i5, var2085=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1880, r0=var3083, $r1=var1360, null_type=var2030, $i31=var387, $i27=var657, $i28=var575, $r3=var2961, $i0=var966, $i29=var1500, $i30=var3167, $z0=var415, $s32=var481, $i25=var972, $i26=var1870, $z1=var967, $s33=var2852, $i19=var2736, $i20=var2992, $r4=var3563, $i1=var484, $i21=var3968, $i22=var1122, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2135, $r5=var2819, $i2=var2721, $i23=var508, $i24=var3099, $r6=var1001, $r7=var2830, $i34=var76, $i17=var3776, $i18=var128, $r8=var2837, $i35=var3019, $i15=var907, $i16=var1043, $r10=var3600, $r11=var2013, $i36=var692, $i13=var310, $i14=var2536, $z2=var3303, $s37=var3157, $i6=var3788, $i7=var951, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3291, $r12=var2161, $i3=var145, $i8=var2413, $i9=var3681, $r13=var1974, $i4=var3660, $i10=var851, $i11=var1887, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2136, $r14=var2855, $i5=var2878, $i12=var2085}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15