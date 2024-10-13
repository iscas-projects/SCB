(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1904 0)
(declare-sort var3114 0)
(declare-sort var1193 0)
(declare-sort var3987 0)
(declare-sort var3434 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1904) String)
(declare-fun getKey/1126038692 (var1904) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var1904) Bool)
(declare-fun isExternal/1126038692 (var1904) Bool)
(declare-fun getId/1126038692 (var1904) String)
(declare-fun getParts/1126038692 (var1904) var1193)
(declare-fun hashCode/1337417431 (var1193) Int)
(declare-fun getAlternateId/1126038692 (var1904) String)
(declare-fun getDesc/1126038692 (var1904) String)
(declare-fun getMeaning/1126038692 (var1904) String)
(declare-fun isHidden/1126038692 (var1904) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1904) var3987)
(declare-fun hashCode/-1247371579 (var3987) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1904) var3987)
(declare-fun jsPlaceholderNames/1126038692 (var1904) var3434)
(declare-fun hashCode/1818408063 (var3434) Int)
(declare-const null-var1904 var1904)
(declare-const null-String String)
(declare-const var330 var1904) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var330 null-var1904)))
(define-const var1977 String (getSourceName/1126038692 var330)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var1977 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var2065 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var3246 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2065)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var3643 Int (* var3246 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1184 String (getKey/1126038692 var330)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1760 Int (hashCode/-467973558 var1184)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2816 Int (bv2nat (bvxor ((_ int2bv 64) var3643) ((_ int2bv 64) var1760)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3960 Int (* var2816 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1263 Bool (isAnonymous/1126038692 var330)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var1263 1 0) 0)) ; Cond: $z0 == 0 
(define-const var728 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var773 Int (bv2nat (bvxor ((_ int2bv 64) var3960) ((_ int2bv 64) var728)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3901 Int (* var773 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var3163 Bool (isExternal/1126038692 var330)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var3163 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3459 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var3600 Int (bv2nat (bvxor ((_ int2bv 64) var3901) ((_ int2bv 64) var3459)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var113 Int (* var3600 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var725 String (getId/1126038692 var330)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var757 Int (hashCode/-467973558 var725)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3319 Int (bv2nat (bvxor ((_ int2bv 64) var113) ((_ int2bv 64) var757)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1186 Int (* var3319 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var3156 var1193 (getParts/1126038692 var330)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var2071 Int (hashCode/1337417431 var3156)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var167 Int (bv2nat (bvxor ((_ int2bv 64) var1186) ((_ int2bv 64) var2071)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3243 Int (* var167 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var3984 String (getAlternateId/1126038692 var330)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var3984 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var272 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var1281 Int (bv2nat (bvxor ((_ int2bv 64) var3243) ((_ int2bv 64) var272)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2338 Int (* var1281 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var775 String (getDesc/1126038692 var330)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var775 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var3709 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var3339 Int (bv2nat (bvxor ((_ int2bv 64) var2338) ((_ int2bv 64) var3709)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var3746 Int (* var3339 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2767 String (getMeaning/1126038692 var330)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var2767 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var1625 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var872 Int (bv2nat (bvxor ((_ int2bv 64) var3746) ((_ int2bv 64) var1625)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2271 Int (* var872 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3401 Bool (isHidden/1126038692 var330)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var3401 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1665 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var778 Int (bv2nat (bvxor ((_ int2bv 64) var2271) ((_ int2bv 64) var1665)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1652 Int (* var778 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2472 var3987 (getPlaceholderNameToExampleMap/1126038692 var330)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3099 Int (hashCode/-1247371579 var2472)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3572 Int (bv2nat (bvxor ((_ int2bv 64) var1652) ((_ int2bv 64) var3099)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2147 Int (* var3572 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var836 var3987 (getPlaceholderNameToOriginalCodeMap/1126038692 var330)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3533 Int (hashCode/-1247371579 var836)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var364 Int (bv2nat (bvxor ((_ int2bv 64) var2147) ((_ int2bv 64) var3533)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var2160 Int (* var364 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2372 var3434 (jsPlaceholderNames/1126038692 var330)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var751 Int (hashCode/1818408063 var2372)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var4 Int (bv2nat (bvxor ((_ int2bv 64) var2160) ((_ int2bv 64) var751)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1904=com.google.javascript.jscomp.AutoValue_JsMessage, var330=r0, var1977=$r1, var3114=null_type, var2065=$i31, var3246=$i27, var3643=$i28, var1184=$r3, var1760=$i0, var2816=$i29, var3960=$i30, var1263=$z0, var728=$s32, var773=$i25, var3901=$i26, var3163=$z1, var3459=$s33, var3600=$i19, var113=$i20, var725=$r4, var757=$i1, var3319=$i21, var1186=$i22, var1193=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3156=$r5, var2071=$i2, var167=$i23, var3243=$i24, var3984=$r6, var272=$i34, var1281=$i17, var2338=$i18, var775=$r8, var3709=$i35, var3339=$i15, var3746=$i16, var2767=$r10, var1625=$i36, var872=$i13, var2271=$i14, var3401=$z2, var1665=$s37, var778=$i6, var1652=$i7, var3987=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2472=$r12, var3099=$i3, var3572=$i8, var2147=$i9, var836=$r13, var3533=$i4, var364=$i10, var2160=$i11, var3434=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2372=$r14, var751=$i5, var4=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1904, r0=var330, $r1=var1977, null_type=var3114, $i31=var2065, $i27=var3246, $i28=var3643, $r3=var1184, $i0=var1760, $i29=var2816, $i30=var3960, $z0=var1263, $s32=var728, $i25=var773, $i26=var3901, $z1=var3163, $s33=var3459, $i19=var3600, $i20=var113, $r4=var725, $i1=var757, $i21=var3319, $i22=var1186, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1193, $r5=var3156, $i2=var2071, $i23=var167, $i24=var3243, $r6=var3984, $i34=var272, $i17=var1281, $i18=var2338, $r8=var775, $i35=var3709, $i15=var3339, $i16=var3746, $r10=var2767, $i36=var1625, $i13=var872, $i14=var2271, $z2=var3401, $s37=var1665, $i6=var778, $i7=var1652, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3987, $r12=var2472, $i3=var3099, $i8=var3572, $i9=var2147, $r13=var836, $i4=var3533, $i10=var364, $i11=var2160, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3434, $r14=var2372, $i5=var751, $i12=var4}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15