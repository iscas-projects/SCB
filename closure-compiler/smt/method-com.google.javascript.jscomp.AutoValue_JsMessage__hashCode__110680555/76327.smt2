(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var591 0)
(declare-sort var3325 0)
(declare-sort var2043 0)
(declare-sort var2624 0)
(declare-sort var813 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var591) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var591) String)
(declare-fun isAnonymous/1126038692 (var591) Bool)
(declare-fun isExternal/1126038692 (var591) Bool)
(declare-fun getId/1126038692 (var591) String)
(declare-fun getParts/1126038692 (var591) var2043)
(declare-fun hashCode/1337417431 (var2043) Int)
(declare-fun getAlternateId/1126038692 (var591) String)
(declare-fun getDesc/1126038692 (var591) String)
(declare-fun getMeaning/1126038692 (var591) String)
(declare-fun isHidden/1126038692 (var591) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var591) var2624)
(declare-fun hashCode/-1247371579 (var2624) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var591) var2624)
(declare-fun jsPlaceholderNames/1126038692 (var591) var813)
(declare-fun hashCode/1818408063 (var813) Int)
(declare-const null-var591 var591)
(declare-const null-String String)
(declare-const var161 var591) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var161 null-var591)))
(define-const var3094 String (getSourceName/1126038692 var161)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var3094 null-String))) ; Cond: $r1 != null 
(define-const var635 String (getSourceName/1126038692 var161)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var3791 Int (hashCode/-467973558 var635)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3706 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3791)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var2885 Int (* var3706 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var415 String (getKey/1126038692 var161)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1180 Int (hashCode/-467973558 var415)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var755 Int (bv2nat (bvxor ((_ int2bv 64) var2885) ((_ int2bv 64) var1180)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3887 Int (* var755 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1932 Bool (isAnonymous/1126038692 var161)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var1932 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2883 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var1303 Int (bv2nat (bvxor ((_ int2bv 64) var3887) ((_ int2bv 64) var2883)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3567 Int (* var1303 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var633 Bool (isExternal/1126038692 var161)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var633 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2217 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var1264 Int (bv2nat (bvxor ((_ int2bv 64) var3567) ((_ int2bv 64) var2217)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1565 Int (* var1264 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1532 String (getId/1126038692 var161)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1840 Int (hashCode/-467973558 var1532)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2702 Int (bv2nat (bvxor ((_ int2bv 64) var1565) ((_ int2bv 64) var1840)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1382 Int (* var2702 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2153 var2043 (getParts/1126038692 var161)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var3919 Int (hashCode/1337417431 var2153)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1049 Int (bv2nat (bvxor ((_ int2bv 64) var1382) ((_ int2bv 64) var3919)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3243 Int (* var1049 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var951 String (getAlternateId/1126038692 var161)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var951 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var3960 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var141 Int (bv2nat (bvxor ((_ int2bv 64) var3243) ((_ int2bv 64) var3960)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var878 Int (* var141 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var220 String (getDesc/1126038692 var161)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var220 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var779 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var3320 Int (bv2nat (bvxor ((_ int2bv 64) var878) ((_ int2bv 64) var779)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2084 Int (* var3320 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var566 String (getMeaning/1126038692 var161)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var566 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var3074 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var1733 Int (bv2nat (bvxor ((_ int2bv 64) var2084) ((_ int2bv 64) var3074)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var1638 Int (* var1733 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2498 Bool (isHidden/1126038692 var161)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var2498 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3684 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var2914 Int (bv2nat (bvxor ((_ int2bv 64) var1638) ((_ int2bv 64) var3684)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var473 Int (* var2914 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var1418 var2624 (getPlaceholderNameToExampleMap/1126038692 var161)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1186 Int (hashCode/-1247371579 var1418)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3284 Int (bv2nat (bvxor ((_ int2bv 64) var473) ((_ int2bv 64) var1186)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3797 Int (* var3284 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var345 var2624 (getPlaceholderNameToOriginalCodeMap/1126038692 var161)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var2169 Int (hashCode/-1247371579 var345)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3210 Int (bv2nat (bvxor ((_ int2bv 64) var3797) ((_ int2bv 64) var2169)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3335 Int (* var3210 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var597 var813 (jsPlaceholderNames/1126038692 var161)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1930 Int (hashCode/1818408063 var597)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var2691 Int (bv2nat (bvxor ((_ int2bv 64) var3335) ((_ int2bv 64) var1930)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var591=com.google.javascript.jscomp.AutoValue_JsMessage, var161=r0, var3094=$r1, var3325=null_type, var635=$r2, var3791=$i31, var3706=$i27, var2885=$i28, var415=$r3, var1180=$i0, var755=$i29, var3887=$i30, var1932=$z0, var2883=$s32, var1303=$i25, var3567=$i26, var633=$z1, var2217=$s33, var1264=$i19, var1565=$i20, var1532=$r4, var1840=$i1, var2702=$i21, var1382=$i22, var2043=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2153=$r5, var3919=$i2, var1049=$i23, var3243=$i24, var951=$r6, var3960=$i34, var141=$i17, var878=$i18, var220=$r8, var779=$i35, var3320=$i15, var2084=$i16, var566=$r10, var3074=$i36, var1733=$i13, var1638=$i14, var2498=$z2, var3684=$s37, var2914=$i6, var473=$i7, var2624=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1418=$r12, var1186=$i3, var3284=$i8, var3797=$i9, var345=$r13, var2169=$i4, var3210=$i10, var3335=$i11, var813=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var597=$r14, var1930=$i5, var2691=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var591, r0=var161, $r1=var3094, null_type=var3325, $r2=var635, $i31=var3791, $i27=var3706, $i28=var2885, $r3=var415, $i0=var1180, $i29=var755, $i30=var3887, $z0=var1932, $s32=var2883, $i25=var1303, $i26=var3567, $z1=var633, $s33=var2217, $i19=var1264, $i20=var1565, $r4=var1532, $i1=var1840, $i21=var2702, $i22=var1382, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2043, $r5=var2153, $i2=var3919, $i23=var1049, $i24=var3243, $r6=var951, $i34=var3960, $i17=var141, $i18=var878, $r8=var220, $i35=var779, $i15=var3320, $i16=var2084, $r10=var566, $i36=var3074, $i13=var1733, $i14=var1638, $z2=var2498, $s37=var3684, $i6=var2914, $i7=var473, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2624, $r12=var1418, $i3=var1186, $i8=var3284, $i9=var3797, $r13=var345, $i4=var2169, $i10=var3210, $i11=var3335, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var813, $r14=var597, $i5=var1930, $i12=var2691}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15