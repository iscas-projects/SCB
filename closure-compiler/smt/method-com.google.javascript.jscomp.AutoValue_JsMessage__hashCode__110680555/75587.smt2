(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1534 0)
(declare-sort var917 0)
(declare-sort var1073 0)
(declare-sort var3523 0)
(declare-sort var2331 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1534) String)
(declare-fun getKey/1126038692 (var1534) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var1534) Bool)
(declare-fun isExternal/1126038692 (var1534) Bool)
(declare-fun getId/1126038692 (var1534) String)
(declare-fun getParts/1126038692 (var1534) var1073)
(declare-fun hashCode/1337417431 (var1073) Int)
(declare-fun getAlternateId/1126038692 (var1534) String)
(declare-fun getDesc/1126038692 (var1534) String)
(declare-fun getMeaning/1126038692 (var1534) String)
(declare-fun isHidden/1126038692 (var1534) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1534) var3523)
(declare-fun hashCode/-1247371579 (var3523) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1534) var3523)
(declare-fun jsPlaceholderNames/1126038692 (var1534) var2331)
(declare-fun hashCode/1818408063 (var2331) Int)
(declare-const null-var1534 var1534)
(declare-const null-String String)
(declare-const var1493 var1534) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1493 null-var1534)))
(define-const var1332 String (getSourceName/1126038692 var1493)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var1332 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var2442 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var3037 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2442)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var3655 Int (* var3037 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1440 String (getKey/1126038692 var1493)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1795 Int (hashCode/-467973558 var1440)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2502 Int (bv2nat (bvxor ((_ int2bv 64) var3655) ((_ int2bv 64) var1795)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var701 Int (* var2502 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2715 Bool (isAnonymous/1126038692 var1493)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var2715 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2247 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var464 Int (bv2nat (bvxor ((_ int2bv 64) var701) ((_ int2bv 64) var2247)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var2370 Int (* var464 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var1630 Bool (isExternal/1126038692 var1493)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var1630 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1504 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var2468 Int (bv2nat (bvxor ((_ int2bv 64) var2370) ((_ int2bv 64) var1504)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1247 Int (* var2468 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var3600 String (getId/1126038692 var1493)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3617 Int (hashCode/-467973558 var3600)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2043 Int (bv2nat (bvxor ((_ int2bv 64) var1247) ((_ int2bv 64) var3617)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1052 Int (* var2043 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2541 var1073 (getParts/1126038692 var1493)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var2252 Int (hashCode/1337417431 var2541)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var571 Int (bv2nat (bvxor ((_ int2bv 64) var1052) ((_ int2bv 64) var2252)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3328 Int (* var571 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var151 String (getAlternateId/1126038692 var1493)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var151 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var2825 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var466 Int (bv2nat (bvxor ((_ int2bv 64) var3328) ((_ int2bv 64) var2825)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var1172 Int (* var466 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var642 String (getDesc/1126038692 var1493)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var642 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var1106 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var197 Int (bv2nat (bvxor ((_ int2bv 64) var1172) ((_ int2bv 64) var1106)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1509 Int (* var197 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2788 String (getMeaning/1126038692 var1493)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var2788 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var3402 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var676 Int (bv2nat (bvxor ((_ int2bv 64) var1509) ((_ int2bv 64) var3402)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var327 Int (* var676 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var625 Bool (isHidden/1126038692 var1493)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var625 1 0) 0)) ; Cond: $z2 == 0 
(define-const var250 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var1072 Int (bv2nat (bvxor ((_ int2bv 64) var327) ((_ int2bv 64) var250)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var778 Int (* var1072 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2784 var3523 (getPlaceholderNameToExampleMap/1126038692 var1493)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1447 Int (hashCode/-1247371579 var2784)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1578 Int (bv2nat (bvxor ((_ int2bv 64) var778) ((_ int2bv 64) var1447)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var1016 Int (* var1578 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var335 var3523 (getPlaceholderNameToOriginalCodeMap/1126038692 var1493)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var2117 Int (hashCode/-1247371579 var335)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var16 Int (bv2nat (bvxor ((_ int2bv 64) var1016) ((_ int2bv 64) var2117)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3796 Int (* var16 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var1205 var2331 (jsPlaceholderNames/1126038692 var1493)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var3881 Int (hashCode/1818408063 var1205)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var772 Int (bv2nat (bvxor ((_ int2bv 64) var3796) ((_ int2bv 64) var3881)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1534=com.google.javascript.jscomp.AutoValue_JsMessage, var1493=r0, var1332=$r1, var917=null_type, var2442=$i31, var3037=$i27, var3655=$i28, var1440=$r3, var1795=$i0, var2502=$i29, var701=$i30, var2715=$z0, var2247=$s32, var464=$i25, var2370=$i26, var1630=$z1, var1504=$s33, var2468=$i19, var1247=$i20, var3600=$r4, var3617=$i1, var2043=$i21, var1052=$i22, var1073=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2541=$r5, var2252=$i2, var571=$i23, var3328=$i24, var151=$r6, var2825=$i34, var466=$i17, var1172=$i18, var642=$r8, var1106=$i35, var197=$i15, var1509=$i16, var2788=$r10, var3402=$i36, var676=$i13, var327=$i14, var625=$z2, var250=$s37, var1072=$i6, var778=$i7, var3523=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2784=$r12, var1447=$i3, var1578=$i8, var1016=$i9, var335=$r13, var2117=$i4, var16=$i10, var3796=$i11, var2331=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var1205=$r14, var3881=$i5, var772=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1534, r0=var1493, $r1=var1332, null_type=var917, $i31=var2442, $i27=var3037, $i28=var3655, $r3=var1440, $i0=var1795, $i29=var2502, $i30=var701, $z0=var2715, $s32=var2247, $i25=var464, $i26=var2370, $z1=var1630, $s33=var1504, $i19=var2468, $i20=var1247, $r4=var3600, $i1=var3617, $i21=var2043, $i22=var1052, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1073, $r5=var2541, $i2=var2252, $i23=var571, $i24=var3328, $r6=var151, $i34=var2825, $i17=var466, $i18=var1172, $r8=var642, $i35=var1106, $i15=var197, $i16=var1509, $r10=var2788, $i36=var3402, $i13=var676, $i14=var327, $z2=var625, $s37=var250, $i6=var1072, $i7=var778, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3523, $r12=var2784, $i3=var1447, $i8=var1578, $i9=var1016, $r13=var335, $i4=var2117, $i10=var16, $i11=var3796, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2331, $r14=var1205, $i5=var3881, $i12=var772}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15