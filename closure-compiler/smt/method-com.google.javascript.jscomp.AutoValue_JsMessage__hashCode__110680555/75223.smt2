(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1819 0)
(declare-sort var2688 0)
(declare-sort var3929 0)
(declare-sort var1801 0)
(declare-sort var1199 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1819) String)
(declare-fun getKey/1126038692 (var1819) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var1819) Bool)
(declare-fun isExternal/1126038692 (var1819) Bool)
(declare-fun getId/1126038692 (var1819) String)
(declare-fun getParts/1126038692 (var1819) var3929)
(declare-fun hashCode/1337417431 (var3929) Int)
(declare-fun getAlternateId/1126038692 (var1819) String)
(declare-fun getDesc/1126038692 (var1819) String)
(declare-fun getMeaning/1126038692 (var1819) String)
(declare-fun isHidden/1126038692 (var1819) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1819) var1801)
(declare-fun hashCode/-1247371579 (var1801) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1819) var1801)
(declare-fun jsPlaceholderNames/1126038692 (var1819) var1199)
(declare-fun hashCode/1818408063 (var1199) Int)
(declare-const null-var1819 var1819)
(declare-const null-String String)
(declare-const var3486 var1819) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3486 null-var1819)))
(define-const var1335 String (getSourceName/1126038692 var3486)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var1335 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var3775 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var305 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3775)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var3185 Int (* var305 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1539 String (getKey/1126038692 var3486)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var462 Int (hashCode/-467973558 var1539)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1587 Int (bv2nat (bvxor ((_ int2bv 64) var3185) ((_ int2bv 64) var462)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1368 Int (* var1587 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1647 Bool (isAnonymous/1126038692 var3486)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var1647 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2116 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var2393 Int (bv2nat (bvxor ((_ int2bv 64) var1368) ((_ int2bv 64) var2116)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var2661 Int (* var2393 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2933 Bool (isExternal/1126038692 var3486)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var2933 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1058 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var2985 Int (bv2nat (bvxor ((_ int2bv 64) var2661) ((_ int2bv 64) var1058)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var3254 Int (* var2985 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var2618 String (getId/1126038692 var3486)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3506 Int (hashCode/-467973558 var2618)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1495 Int (bv2nat (bvxor ((_ int2bv 64) var3254) ((_ int2bv 64) var3506)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1806 Int (* var1495 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1387 var3929 (getParts/1126038692 var3486)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1425 Int (hashCode/1337417431 var1387)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3273 Int (bv2nat (bvxor ((_ int2bv 64) var1806) ((_ int2bv 64) var1425)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var2625 Int (* var3273 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var149 String (getAlternateId/1126038692 var3486)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var149 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var142 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var1446 Int (bv2nat (bvxor ((_ int2bv 64) var2625) ((_ int2bv 64) var142)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2503 Int (* var1446 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var729 String (getDesc/1126038692 var3486)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var729 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var2060 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var3334 Int (bv2nat (bvxor ((_ int2bv 64) var2503) ((_ int2bv 64) var2060)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var154 Int (* var3334 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3062 String (getMeaning/1126038692 var3486)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var3062 null-String))) ; Cond: $r10 != null 
(define-const var1861 String (getMeaning/1126038692 var3486)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var2822 Int (hashCode/-467973558 var1861)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2434 Int (bv2nat (bvxor ((_ int2bv 64) var154) ((_ int2bv 64) var2822)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2915 Int (* var2434 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var893 Bool (isHidden/1126038692 var3486)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var893 1 0) 0)) ; Cond: $z2 == 0 
(define-const var507 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var1488 Int (bv2nat (bvxor ((_ int2bv 64) var2915) ((_ int2bv 64) var507)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1312 Int (* var1488 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var1148 var1801 (getPlaceholderNameToExampleMap/1126038692 var3486)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3631 Int (hashCode/-1247371579 var1148)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var469 Int (bv2nat (bvxor ((_ int2bv 64) var1312) ((_ int2bv 64) var3631)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var468 Int (* var469 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3889 var1801 (getPlaceholderNameToOriginalCodeMap/1126038692 var3486)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1968 Int (hashCode/-1247371579 var3889)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1899 Int (bv2nat (bvxor ((_ int2bv 64) var468) ((_ int2bv 64) var1968)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var509 Int (* var1899 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2398 var1199 (jsPlaceholderNames/1126038692 var3486)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var3216 Int (hashCode/1818408063 var2398)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1858 Int (bv2nat (bvxor ((_ int2bv 64) var509) ((_ int2bv 64) var3216)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1819=com.google.javascript.jscomp.AutoValue_JsMessage, var3486=r0, var1335=$r1, var2688=null_type, var3775=$i31, var305=$i27, var3185=$i28, var1539=$r3, var462=$i0, var1587=$i29, var1368=$i30, var1647=$z0, var2116=$s32, var2393=$i25, var2661=$i26, var2933=$z1, var1058=$s33, var2985=$i19, var3254=$i20, var2618=$r4, var3506=$i1, var1495=$i21, var1806=$i22, var3929=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1387=$r5, var1425=$i2, var3273=$i23, var2625=$i24, var149=$r6, var142=$i34, var1446=$i17, var2503=$i18, var729=$r8, var2060=$i35, var3334=$i15, var154=$i16, var3062=$r10, var1861=$r11, var2822=$i36, var2434=$i13, var2915=$i14, var893=$z2, var507=$s37, var1488=$i6, var1312=$i7, var1801=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1148=$r12, var3631=$i3, var469=$i8, var468=$i9, var3889=$r13, var1968=$i4, var1899=$i10, var509=$i11, var1199=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2398=$r14, var3216=$i5, var1858=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1819, r0=var3486, $r1=var1335, null_type=var2688, $i31=var3775, $i27=var305, $i28=var3185, $r3=var1539, $i0=var462, $i29=var1587, $i30=var1368, $z0=var1647, $s32=var2116, $i25=var2393, $i26=var2661, $z1=var2933, $s33=var1058, $i19=var2985, $i20=var3254, $r4=var2618, $i1=var3506, $i21=var1495, $i22=var1806, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3929, $r5=var1387, $i2=var1425, $i23=var3273, $i24=var2625, $r6=var149, $i34=var142, $i17=var1446, $i18=var2503, $r8=var729, $i35=var2060, $i15=var3334, $i16=var154, $r10=var3062, $r11=var1861, $i36=var2822, $i13=var2434, $i14=var2915, $z2=var893, $s37=var507, $i6=var1488, $i7=var1312, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1801, $r12=var1148, $i3=var3631, $i8=var469, $i9=var468, $r13=var3889, $i4=var1968, $i10=var1899, $i11=var509, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1199, $r14=var2398, $i5=var3216, $i12=var1858}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15