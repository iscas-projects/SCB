(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1568 0)
(declare-sort var1865 0)
(declare-sort var1044 0)
(declare-sort var3302 0)
(declare-sort var1320 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1568) String)
(declare-fun getKey/1126038692 (var1568) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var1568) Bool)
(declare-fun isExternal/1126038692 (var1568) Bool)
(declare-fun getId/1126038692 (var1568) String)
(declare-fun getParts/1126038692 (var1568) var1044)
(declare-fun hashCode/1337417431 (var1044) Int)
(declare-fun getAlternateId/1126038692 (var1568) String)
(declare-fun getDesc/1126038692 (var1568) String)
(declare-fun getMeaning/1126038692 (var1568) String)
(declare-fun isHidden/1126038692 (var1568) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1568) var3302)
(declare-fun hashCode/-1247371579 (var3302) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1568) var3302)
(declare-fun jsPlaceholderNames/1126038692 (var1568) var1320)
(declare-fun hashCode/1818408063 (var1320) Int)
(declare-const null-var1568 var1568)
(declare-const null-String String)
(declare-const var3519 var1568) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3519 null-var1568)))
(define-const var196 String (getSourceName/1126038692 var3519)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var196 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var2099 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var2714 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2099)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var396 Int (* var2714 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1064 String (getKey/1126038692 var3519)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1267 Int (hashCode/-467973558 var1064)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var648 Int (bv2nat (bvxor ((_ int2bv 64) var396) ((_ int2bv 64) var1267)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3395 Int (* var648 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2303 Bool (isAnonymous/1126038692 var3519)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var2303 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1839 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var2896 Int (bv2nat (bvxor ((_ int2bv 64) var3395) ((_ int2bv 64) var1839)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var2010 Int (* var2896 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var1819 Bool (isExternal/1126038692 var3519)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var1819 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1575 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var2927 Int (bv2nat (bvxor ((_ int2bv 64) var2010) ((_ int2bv 64) var1575)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1970 Int (* var2927 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1316 String (getId/1126038692 var3519)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var510 Int (hashCode/-467973558 var1316)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3858 Int (bv2nat (bvxor ((_ int2bv 64) var1970) ((_ int2bv 64) var510)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var200 Int (* var3858 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var3492 var1044 (getParts/1126038692 var3519)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var40 Int (hashCode/1337417431 var3492)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3828 Int (bv2nat (bvxor ((_ int2bv 64) var200) ((_ int2bv 64) var40)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3587 Int (* var3828 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var2646 String (getAlternateId/1126038692 var3519)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var2646 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var3223 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var3562 Int (bv2nat (bvxor ((_ int2bv 64) var3587) ((_ int2bv 64) var3223)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var1926 Int (* var3562 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var978 String (getDesc/1126038692 var3519)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var978 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var2278 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var2187 Int (bv2nat (bvxor ((_ int2bv 64) var1926) ((_ int2bv 64) var2278)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1957 Int (* var2187 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3782 String (getMeaning/1126038692 var3519)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var3782 null-String))) ; Cond: $r10 != null 
(define-const var1376 String (getMeaning/1126038692 var3519)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var3473 Int (hashCode/-467973558 var1376)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2846 Int (bv2nat (bvxor ((_ int2bv 64) var1957) ((_ int2bv 64) var3473)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2124 Int (* var2846 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2873 Bool (isHidden/1126038692 var3519)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var2873 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1255 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var438 Int (bv2nat (bvxor ((_ int2bv 64) var2124) ((_ int2bv 64) var1255)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var2702 Int (* var438 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2490 var3302 (getPlaceholderNameToExampleMap/1126038692 var3519)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var2683 Int (hashCode/-1247371579 var2490)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3653 Int (bv2nat (bvxor ((_ int2bv 64) var2702) ((_ int2bv 64) var2683)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var1193 Int (* var3653 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var1105 var3302 (getPlaceholderNameToOriginalCodeMap/1126038692 var3519)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3563 Int (hashCode/-1247371579 var1105)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2171 Int (bv2nat (bvxor ((_ int2bv 64) var1193) ((_ int2bv 64) var3563)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3028 Int (* var2171 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var368 var1320 (jsPlaceholderNames/1126038692 var3519)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1598 Int (hashCode/1818408063 var368)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var3197 Int (bv2nat (bvxor ((_ int2bv 64) var3028) ((_ int2bv 64) var1598)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1568=com.google.javascript.jscomp.AutoValue_JsMessage, var3519=r0, var196=$r1, var1865=null_type, var2099=$i31, var2714=$i27, var396=$i28, var1064=$r3, var1267=$i0, var648=$i29, var3395=$i30, var2303=$z0, var1839=$s32, var2896=$i25, var2010=$i26, var1819=$z1, var1575=$s33, var2927=$i19, var1970=$i20, var1316=$r4, var510=$i1, var3858=$i21, var200=$i22, var1044=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3492=$r5, var40=$i2, var3828=$i23, var3587=$i24, var2646=$r6, var3223=$i34, var3562=$i17, var1926=$i18, var978=$r8, var2278=$i35, var2187=$i15, var1957=$i16, var3782=$r10, var1376=$r11, var3473=$i36, var2846=$i13, var2124=$i14, var2873=$z2, var1255=$s37, var438=$i6, var2702=$i7, var3302=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2490=$r12, var2683=$i3, var3653=$i8, var1193=$i9, var1105=$r13, var3563=$i4, var2171=$i10, var3028=$i11, var1320=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var368=$r14, var1598=$i5, var3197=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1568, r0=var3519, $r1=var196, null_type=var1865, $i31=var2099, $i27=var2714, $i28=var396, $r3=var1064, $i0=var1267, $i29=var648, $i30=var3395, $z0=var2303, $s32=var1839, $i25=var2896, $i26=var2010, $z1=var1819, $s33=var1575, $i19=var2927, $i20=var1970, $r4=var1316, $i1=var510, $i21=var3858, $i22=var200, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1044, $r5=var3492, $i2=var40, $i23=var3828, $i24=var3587, $r6=var2646, $i34=var3223, $i17=var3562, $i18=var1926, $r8=var978, $i35=var2278, $i15=var2187, $i16=var1957, $r10=var3782, $r11=var1376, $i36=var3473, $i13=var2846, $i14=var2124, $z2=var2873, $s37=var1255, $i6=var438, $i7=var2702, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3302, $r12=var2490, $i3=var2683, $i8=var3653, $i9=var1193, $r13=var1105, $i4=var3563, $i10=var2171, $i11=var3028, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1320, $r14=var368, $i5=var1598, $i12=var3197}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15