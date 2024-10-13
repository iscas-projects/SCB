(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var307 0)
(declare-sort var1860 0)
(declare-sort var3809 0)
(declare-sort var1736 0)
(declare-sort var2775 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var307) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var307) String)
(declare-fun isAnonymous/1126038692 (var307) Bool)
(declare-fun isExternal/1126038692 (var307) Bool)
(declare-fun getId/1126038692 (var307) String)
(declare-fun getParts/1126038692 (var307) var3809)
(declare-fun hashCode/1337417431 (var3809) Int)
(declare-fun getAlternateId/1126038692 (var307) String)
(declare-fun getDesc/1126038692 (var307) String)
(declare-fun getMeaning/1126038692 (var307) String)
(declare-fun isHidden/1126038692 (var307) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var307) var1736)
(declare-fun hashCode/-1247371579 (var1736) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var307) var1736)
(declare-fun jsPlaceholderNames/1126038692 (var307) var2775)
(declare-fun hashCode/1818408063 (var2775) Int)
(declare-const null-var307 var307)
(declare-const null-String String)
(declare-const var1018 var307) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1018 null-var307)))
(define-const var3189 String (getSourceName/1126038692 var1018)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var3189 null-String))) ; Cond: $r1 != null 
(define-const var2581 String (getSourceName/1126038692 var1018)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var2417 Int (hashCode/-467973558 var2581)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3444 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2417)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var989 Int (* var3444 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var3964 String (getKey/1126038692 var1018)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2706 Int (hashCode/-467973558 var3964)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2624 Int (bv2nat (bvxor ((_ int2bv 64) var989) ((_ int2bv 64) var2706)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3290 Int (* var2624 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2040 Bool (isAnonymous/1126038692 var1018)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var2040 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3737 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var733 Int (bv2nat (bvxor ((_ int2bv 64) var3290) ((_ int2bv 64) var3737)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var2878 Int (* var733 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2470 Bool (isExternal/1126038692 var1018)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var2470 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2380 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var50 Int (bv2nat (bvxor ((_ int2bv 64) var2878) ((_ int2bv 64) var2380)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2591 Int (* var50 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var2459 String (getId/1126038692 var1018)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var686 Int (hashCode/-467973558 var2459)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3332 Int (bv2nat (bvxor ((_ int2bv 64) var2591) ((_ int2bv 64) var686)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var323 Int (* var3332 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var3428 var3809 (getParts/1126038692 var1018)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1218 Int (hashCode/1337417431 var3428)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var970 Int (bv2nat (bvxor ((_ int2bv 64) var323) ((_ int2bv 64) var1218)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var2468 Int (* var970 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1521 String (getAlternateId/1126038692 var1018)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var1521 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var1064 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var1931 Int (bv2nat (bvxor ((_ int2bv 64) var2468) ((_ int2bv 64) var1064)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var1761 Int (* var1931 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var3172 String (getDesc/1126038692 var1018)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var3172 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var1386 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var1543 Int (bv2nat (bvxor ((_ int2bv 64) var1761) ((_ int2bv 64) var1386)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var3659 Int (* var1543 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var27 String (getMeaning/1126038692 var1018)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var27 null-String))) ; Cond: $r10 != null 
(define-const var281 String (getMeaning/1126038692 var1018)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var2945 Int (hashCode/-467973558 var281)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2375 Int (bv2nat (bvxor ((_ int2bv 64) var3659) ((_ int2bv 64) var2945)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var188 Int (* var2375 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var1666 Bool (isHidden/1126038692 var1018)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var1666 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2162 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var2902 Int (bv2nat (bvxor ((_ int2bv 64) var188) ((_ int2bv 64) var2162)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var2179 Int (* var2902 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var1174 var1736 (getPlaceholderNameToExampleMap/1126038692 var1018)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var2523 Int (hashCode/-1247371579 var1174)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var982 Int (bv2nat (bvxor ((_ int2bv 64) var2179) ((_ int2bv 64) var2523)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var532 Int (* var982 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3220 var1736 (getPlaceholderNameToOriginalCodeMap/1126038692 var1018)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var2628 Int (hashCode/-1247371579 var3220)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3595 Int (bv2nat (bvxor ((_ int2bv 64) var532) ((_ int2bv 64) var2628)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3320 Int (* var3595 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var861 var2775 (jsPlaceholderNames/1126038692 var1018)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1549 Int (hashCode/1818408063 var861)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var2385 Int (bv2nat (bvxor ((_ int2bv 64) var3320) ((_ int2bv 64) var1549)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var307=com.google.javascript.jscomp.AutoValue_JsMessage, var1018=r0, var3189=$r1, var1860=null_type, var2581=$r2, var2417=$i31, var3444=$i27, var989=$i28, var3964=$r3, var2706=$i0, var2624=$i29, var3290=$i30, var2040=$z0, var3737=$s32, var733=$i25, var2878=$i26, var2470=$z1, var2380=$s33, var50=$i19, var2591=$i20, var2459=$r4, var686=$i1, var3332=$i21, var323=$i22, var3809=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3428=$r5, var1218=$i2, var970=$i23, var2468=$i24, var1521=$r6, var1064=$i34, var1931=$i17, var1761=$i18, var3172=$r8, var1386=$i35, var1543=$i15, var3659=$i16, var27=$r10, var281=$r11, var2945=$i36, var2375=$i13, var188=$i14, var1666=$z2, var2162=$s37, var2902=$i6, var2179=$i7, var1736=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1174=$r12, var2523=$i3, var982=$i8, var532=$i9, var3220=$r13, var2628=$i4, var3595=$i10, var3320=$i11, var2775=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var861=$r14, var1549=$i5, var2385=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var307, r0=var1018, $r1=var3189, null_type=var1860, $r2=var2581, $i31=var2417, $i27=var3444, $i28=var989, $r3=var3964, $i0=var2706, $i29=var2624, $i30=var3290, $z0=var2040, $s32=var3737, $i25=var733, $i26=var2878, $z1=var2470, $s33=var2380, $i19=var50, $i20=var2591, $r4=var2459, $i1=var686, $i21=var3332, $i22=var323, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3809, $r5=var3428, $i2=var1218, $i23=var970, $i24=var2468, $r6=var1521, $i34=var1064, $i17=var1931, $i18=var1761, $r8=var3172, $i35=var1386, $i15=var1543, $i16=var3659, $r10=var27, $r11=var281, $i36=var2945, $i13=var2375, $i14=var188, $z2=var1666, $s37=var2162, $i6=var2902, $i7=var2179, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1736, $r12=var1174, $i3=var2523, $i8=var982, $i9=var532, $r13=var3220, $i4=var2628, $i10=var3595, $i11=var3320, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2775, $r14=var861, $i5=var1549, $i12=var2385}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15