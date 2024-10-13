(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1537 0)
(declare-sort var2316 0)
(declare-sort var3955 0)
(declare-sort var3422 0)
(declare-sort var1920 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1537) String)
(declare-fun getKey/1126038692 (var1537) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var1537) Bool)
(declare-fun isExternal/1126038692 (var1537) Bool)
(declare-fun getId/1126038692 (var1537) String)
(declare-fun getParts/1126038692 (var1537) var3955)
(declare-fun hashCode/1337417431 (var3955) Int)
(declare-fun getAlternateId/1126038692 (var1537) String)
(declare-fun getDesc/1126038692 (var1537) String)
(declare-fun getMeaning/1126038692 (var1537) String)
(declare-fun isHidden/1126038692 (var1537) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1537) var3422)
(declare-fun hashCode/-1247371579 (var3422) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1537) var3422)
(declare-fun jsPlaceholderNames/1126038692 (var1537) var1920)
(declare-fun hashCode/1818408063 (var1920) Int)
(declare-const null-var1537 var1537)
(declare-const null-String String)
(declare-const var2846 var1537) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2846 null-var1537)))
(define-const var3839 String (getSourceName/1126038692 var2846)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var3839 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var2820 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var2293 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2820)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var3565 Int (* var2293 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var690 String (getKey/1126038692 var2846)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2775 Int (hashCode/-467973558 var690)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var3473 Int (bv2nat (bvxor ((_ int2bv 64) var3565) ((_ int2bv 64) var2775)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1168 Int (* var3473 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1474 Bool (isAnonymous/1126038692 var2846)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var1474 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3595 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var1842 Int (bv2nat (bvxor ((_ int2bv 64) var1168) ((_ int2bv 64) var3595)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1334 Int (* var1842 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var1478 Bool (isExternal/1126038692 var2846)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var1478 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3451 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var2415 Int (bv2nat (bvxor ((_ int2bv 64) var1334) ((_ int2bv 64) var3451)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var3306 Int (* var2415 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1173 String (getId/1126038692 var2846)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3126 Int (hashCode/-467973558 var1173)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3283 Int (bv2nat (bvxor ((_ int2bv 64) var3306) ((_ int2bv 64) var3126)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2638 Int (* var3283 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1946 var3955 (getParts/1126038692 var2846)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1037 Int (hashCode/1337417431 var1946)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var904 Int (bv2nat (bvxor ((_ int2bv 64) var2638) ((_ int2bv 64) var1037)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1702 Int (* var904 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var184 String (getAlternateId/1126038692 var2846)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var184 null-String))) ; Cond: $r6 != null 
(define-const var3516 String (getAlternateId/1126038692 var2846)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var3919 Int (hashCode/-467973558 var3516)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3582 Int (bv2nat (bvxor ((_ int2bv 64) var1702) ((_ int2bv 64) var3919)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var1415 Int (* var3582 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var3207 String (getDesc/1126038692 var2846)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var3207 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var871 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var3135 Int (bv2nat (bvxor ((_ int2bv 64) var1415) ((_ int2bv 64) var871)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var678 Int (* var3135 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var1711 String (getMeaning/1126038692 var2846)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var1711 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var2751 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var3690 Int (bv2nat (bvxor ((_ int2bv 64) var678) ((_ int2bv 64) var2751)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var882 Int (* var3690 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var1861 Bool (isHidden/1126038692 var2846)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var1861 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2557 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var2522 Int (bv2nat (bvxor ((_ int2bv 64) var882) ((_ int2bv 64) var2557)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var514 Int (* var2522 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var1970 var3422 (getPlaceholderNameToExampleMap/1126038692 var2846)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1471 Int (hashCode/-1247371579 var1970)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var505 Int (bv2nat (bvxor ((_ int2bv 64) var514) ((_ int2bv 64) var1471)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2706 Int (* var505 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var1539 var3422 (getPlaceholderNameToOriginalCodeMap/1126038692 var2846)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var2276 Int (hashCode/-1247371579 var1539)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3031 Int (bv2nat (bvxor ((_ int2bv 64) var2706) ((_ int2bv 64) var2276)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var2042 Int (* var3031 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2496 var1920 (jsPlaceholderNames/1126038692 var2846)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var47 Int (hashCode/1818408063 var2496)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1700 Int (bv2nat (bvxor ((_ int2bv 64) var2042) ((_ int2bv 64) var47)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1537=com.google.javascript.jscomp.AutoValue_JsMessage, var2846=r0, var3839=$r1, var2316=null_type, var2820=$i31, var2293=$i27, var3565=$i28, var690=$r3, var2775=$i0, var3473=$i29, var1168=$i30, var1474=$z0, var3595=$s32, var1842=$i25, var1334=$i26, var1478=$z1, var3451=$s33, var2415=$i19, var3306=$i20, var1173=$r4, var3126=$i1, var3283=$i21, var2638=$i22, var3955=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1946=$r5, var1037=$i2, var904=$i23, var1702=$i24, var184=$r6, var3516=$r7, var3919=$i34, var3582=$i17, var1415=$i18, var3207=$r8, var871=$i35, var3135=$i15, var678=$i16, var1711=$r10, var2751=$i36, var3690=$i13, var882=$i14, var1861=$z2, var2557=$s37, var2522=$i6, var514=$i7, var3422=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1970=$r12, var1471=$i3, var505=$i8, var2706=$i9, var1539=$r13, var2276=$i4, var3031=$i10, var2042=$i11, var1920=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2496=$r14, var47=$i5, var1700=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1537, r0=var2846, $r1=var3839, null_type=var2316, $i31=var2820, $i27=var2293, $i28=var3565, $r3=var690, $i0=var2775, $i29=var3473, $i30=var1168, $z0=var1474, $s32=var3595, $i25=var1842, $i26=var1334, $z1=var1478, $s33=var3451, $i19=var2415, $i20=var3306, $r4=var1173, $i1=var3126, $i21=var3283, $i22=var2638, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3955, $r5=var1946, $i2=var1037, $i23=var904, $i24=var1702, $r6=var184, $r7=var3516, $i34=var3919, $i17=var3582, $i18=var1415, $r8=var3207, $i35=var871, $i15=var3135, $i16=var678, $r10=var1711, $i36=var2751, $i13=var3690, $i14=var882, $z2=var1861, $s37=var2557, $i6=var2522, $i7=var514, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3422, $r12=var1970, $i3=var1471, $i8=var505, $i9=var2706, $r13=var1539, $i4=var2276, $i10=var3031, $i11=var2042, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1920, $r14=var2496, $i5=var47, $i12=var1700}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15