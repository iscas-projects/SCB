(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3558 0)
(declare-sort var3664 0)
(declare-sort var623 0)
(declare-sort var821 0)
(declare-sort var1731 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3558) String)
(declare-fun getKey/1126038692 (var3558) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var3558) Bool)
(declare-fun isExternal/1126038692 (var3558) Bool)
(declare-fun getId/1126038692 (var3558) String)
(declare-fun getParts/1126038692 (var3558) var623)
(declare-fun hashCode/1337417431 (var623) Int)
(declare-fun getAlternateId/1126038692 (var3558) String)
(declare-fun getDesc/1126038692 (var3558) String)
(declare-fun getMeaning/1126038692 (var3558) String)
(declare-fun isHidden/1126038692 (var3558) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3558) var821)
(declare-fun hashCode/-1247371579 (var821) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3558) var821)
(declare-fun jsPlaceholderNames/1126038692 (var3558) var1731)
(declare-fun hashCode/1818408063 (var1731) Int)
(declare-const null-var3558 var3558)
(declare-const null-String String)
(declare-const var1786 var3558) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1786 null-var3558)))
(define-const var314 String (getSourceName/1126038692 var1786)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var314 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var2657 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var721 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2657)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1927 Int (* var721 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1205 String (getKey/1126038692 var1786)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1067 Int (hashCode/-467973558 var1205)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2137 Int (bv2nat (bvxor ((_ int2bv 64) var1927) ((_ int2bv 64) var1067)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3983 Int (* var2137 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1114 Bool (isAnonymous/1126038692 var1786)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var1114 1 0) 0)) ; Cond: $z0 == 0 
(define-const var28 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var2946 Int (bv2nat (bvxor ((_ int2bv 64) var3983) ((_ int2bv 64) var28)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var2025 Int (* var2946 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var1611 Bool (isExternal/1126038692 var1786)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var1611 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3871 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var2682 Int (bv2nat (bvxor ((_ int2bv 64) var2025) ((_ int2bv 64) var3871)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var253 Int (* var2682 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1882 String (getId/1126038692 var1786)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3228 Int (hashCode/-467973558 var1882)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2830 Int (bv2nat (bvxor ((_ int2bv 64) var253) ((_ int2bv 64) var3228)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var3389 Int (* var2830 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1159 var623 (getParts/1126038692 var1786)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var2680 Int (hashCode/1337417431 var1159)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var509 Int (bv2nat (bvxor ((_ int2bv 64) var3389) ((_ int2bv 64) var2680)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3794 Int (* var509 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var2294 String (getAlternateId/1126038692 var1786)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var2294 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var1687 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var712 Int (bv2nat (bvxor ((_ int2bv 64) var3794) ((_ int2bv 64) var1687)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var165 Int (* var712 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var411 String (getDesc/1126038692 var1786)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var411 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var543 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var3864 Int (bv2nat (bvxor ((_ int2bv 64) var165) ((_ int2bv 64) var543)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var11 Int (* var3864 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var300 String (getMeaning/1126038692 var1786)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var300 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var1497 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var161 Int (bv2nat (bvxor ((_ int2bv 64) var11) ((_ int2bv 64) var1497)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var1218 Int (* var161 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3326 Bool (isHidden/1126038692 var1786)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var3326 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2943 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var1903 Int (bv2nat (bvxor ((_ int2bv 64) var1218) ((_ int2bv 64) var2943)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var109 Int (* var1903 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3910 var821 (getPlaceholderNameToExampleMap/1126038692 var1786)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3588 Int (hashCode/-1247371579 var3910)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1449 Int (bv2nat (bvxor ((_ int2bv 64) var109) ((_ int2bv 64) var3588)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3220 Int (* var1449 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var773 var821 (getPlaceholderNameToOriginalCodeMap/1126038692 var1786)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var2346 Int (hashCode/-1247371579 var773)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3380 Int (bv2nat (bvxor ((_ int2bv 64) var3220) ((_ int2bv 64) var2346)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var1809 Int (* var3380 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2439 var1731 (jsPlaceholderNames/1126038692 var1786)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2041 Int (hashCode/1818408063 var2439)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1362 Int (bv2nat (bvxor ((_ int2bv 64) var1809) ((_ int2bv 64) var2041)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3558=com.google.javascript.jscomp.AutoValue_JsMessage, var1786=r0, var314=$r1, var3664=null_type, var2657=$i31, var721=$i27, var1927=$i28, var1205=$r3, var1067=$i0, var2137=$i29, var3983=$i30, var1114=$z0, var28=$s32, var2946=$i25, var2025=$i26, var1611=$z1, var3871=$s33, var2682=$i19, var253=$i20, var1882=$r4, var3228=$i1, var2830=$i21, var3389=$i22, var623=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1159=$r5, var2680=$i2, var509=$i23, var3794=$i24, var2294=$r6, var1687=$i34, var712=$i17, var165=$i18, var411=$r8, var543=$i35, var3864=$i15, var11=$i16, var300=$r10, var1497=$i36, var161=$i13, var1218=$i14, var3326=$z2, var2943=$s37, var1903=$i6, var109=$i7, var821=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3910=$r12, var3588=$i3, var1449=$i8, var3220=$i9, var773=$r13, var2346=$i4, var3380=$i10, var1809=$i11, var1731=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2439=$r14, var2041=$i5, var1362=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3558, r0=var1786, $r1=var314, null_type=var3664, $i31=var2657, $i27=var721, $i28=var1927, $r3=var1205, $i0=var1067, $i29=var2137, $i30=var3983, $z0=var1114, $s32=var28, $i25=var2946, $i26=var2025, $z1=var1611, $s33=var3871, $i19=var2682, $i20=var253, $r4=var1882, $i1=var3228, $i21=var2830, $i22=var3389, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var623, $r5=var1159, $i2=var2680, $i23=var509, $i24=var3794, $r6=var2294, $i34=var1687, $i17=var712, $i18=var165, $r8=var411, $i35=var543, $i15=var3864, $i16=var11, $r10=var300, $i36=var1497, $i13=var161, $i14=var1218, $z2=var3326, $s37=var2943, $i6=var1903, $i7=var109, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var821, $r12=var3910, $i3=var3588, $i8=var1449, $i9=var3220, $r13=var773, $i4=var2346, $i10=var3380, $i11=var1809, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1731, $r14=var2439, $i5=var2041, $i12=var1362}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15