(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1374 0)
(declare-sort var1564 0)
(declare-sort var303 0)
(declare-sort var1834 0)
(declare-sort var2043 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1374) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var1374) String)
(declare-fun isAnonymous/1126038692 (var1374) Bool)
(declare-fun isExternal/1126038692 (var1374) Bool)
(declare-fun getId/1126038692 (var1374) String)
(declare-fun getParts/1126038692 (var1374) var303)
(declare-fun hashCode/1337417431 (var303) Int)
(declare-fun getAlternateId/1126038692 (var1374) String)
(declare-fun getDesc/1126038692 (var1374) String)
(declare-fun getMeaning/1126038692 (var1374) String)
(declare-fun isHidden/1126038692 (var1374) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1374) var1834)
(declare-fun hashCode/-1247371579 (var1834) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1374) var1834)
(declare-fun jsPlaceholderNames/1126038692 (var1374) var2043)
(declare-fun hashCode/1818408063 (var2043) Int)
(declare-const null-var1374 var1374)
(declare-const null-String String)
(declare-const var2887 var1374) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2887 null-var1374)))
(define-const var2227 String (getSourceName/1126038692 var2887)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var2227 null-String))) ; Cond: $r1 != null 
(define-const var83 String (getSourceName/1126038692 var2887)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var514 Int (hashCode/-467973558 var83)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var67 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var514)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var211 Int (* var67 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2960 String (getKey/1126038692 var2887)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var781 Int (hashCode/-467973558 var2960)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var575 Int (bv2nat (bvxor ((_ int2bv 64) var211) ((_ int2bv 64) var781)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var2116 Int (* var575 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var31 Bool (isAnonymous/1126038692 var2887)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var31 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1933 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var71 Int (bv2nat (bvxor ((_ int2bv 64) var2116) ((_ int2bv 64) var1933)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1371 Int (* var71 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var3638 Bool (isExternal/1126038692 var2887)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var3638 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1578 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var2573 Int (bv2nat (bvxor ((_ int2bv 64) var1371) ((_ int2bv 64) var1578)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2234 Int (* var2573 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var735 String (getId/1126038692 var2887)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1192 Int (hashCode/-467973558 var735)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3547 Int (bv2nat (bvxor ((_ int2bv 64) var2234) ((_ int2bv 64) var1192)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1391 Int (* var3547 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2039 var303 (getParts/1126038692 var2887)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var84 Int (hashCode/1337417431 var2039)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3828 Int (bv2nat (bvxor ((_ int2bv 64) var1391) ((_ int2bv 64) var84)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3359 Int (* var3828 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var81 String (getAlternateId/1126038692 var2887)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var81 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var1960 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var3168 Int (bv2nat (bvxor ((_ int2bv 64) var3359) ((_ int2bv 64) var1960)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3749 Int (* var3168 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var2065 String (getDesc/1126038692 var2887)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var2065 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var762 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var505 Int (bv2nat (bvxor ((_ int2bv 64) var3749) ((_ int2bv 64) var762)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1694 Int (* var505 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var1677 String (getMeaning/1126038692 var2887)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var1677 null-String))) ; Cond: $r10 != null 
(define-const var140 String (getMeaning/1126038692 var2887)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var3048 Int (hashCode/-467973558 var140)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3047 Int (bv2nat (bvxor ((_ int2bv 64) var1694) ((_ int2bv 64) var3048)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var1535 Int (* var3047 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3289 Bool (isHidden/1126038692 var2887)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var3289 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3282 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var1237 Int (bv2nat (bvxor ((_ int2bv 64) var1535) ((_ int2bv 64) var3282)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var3715 Int (* var1237 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2916 var1834 (getPlaceholderNameToExampleMap/1126038692 var2887)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var106 Int (hashCode/-1247371579 var2916)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2658 Int (bv2nat (bvxor ((_ int2bv 64) var3715) ((_ int2bv 64) var106)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var1598 Int (* var2658 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var2139 var1834 (getPlaceholderNameToOriginalCodeMap/1126038692 var2887)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3484 Int (hashCode/-1247371579 var2139)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3078 Int (bv2nat (bvxor ((_ int2bv 64) var1598) ((_ int2bv 64) var3484)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var1642 Int (* var3078 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3981 var2043 (jsPlaceholderNames/1126038692 var2887)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1716 Int (hashCode/1818408063 var3981)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var2171 Int (bv2nat (bvxor ((_ int2bv 64) var1642) ((_ int2bv 64) var1716)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1374=com.google.javascript.jscomp.AutoValue_JsMessage, var2887=r0, var2227=$r1, var1564=null_type, var83=$r2, var514=$i31, var67=$i27, var211=$i28, var2960=$r3, var781=$i0, var575=$i29, var2116=$i30, var31=$z0, var1933=$s32, var71=$i25, var1371=$i26, var3638=$z1, var1578=$s33, var2573=$i19, var2234=$i20, var735=$r4, var1192=$i1, var3547=$i21, var1391=$i22, var303=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2039=$r5, var84=$i2, var3828=$i23, var3359=$i24, var81=$r6, var1960=$i34, var3168=$i17, var3749=$i18, var2065=$r8, var762=$i35, var505=$i15, var1694=$i16, var1677=$r10, var140=$r11, var3048=$i36, var3047=$i13, var1535=$i14, var3289=$z2, var3282=$s37, var1237=$i6, var3715=$i7, var1834=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2916=$r12, var106=$i3, var2658=$i8, var1598=$i9, var2139=$r13, var3484=$i4, var3078=$i10, var1642=$i11, var2043=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3981=$r14, var1716=$i5, var2171=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1374, r0=var2887, $r1=var2227, null_type=var1564, $r2=var83, $i31=var514, $i27=var67, $i28=var211, $r3=var2960, $i0=var781, $i29=var575, $i30=var2116, $z0=var31, $s32=var1933, $i25=var71, $i26=var1371, $z1=var3638, $s33=var1578, $i19=var2573, $i20=var2234, $r4=var735, $i1=var1192, $i21=var3547, $i22=var1391, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var303, $r5=var2039, $i2=var84, $i23=var3828, $i24=var3359, $r6=var81, $i34=var1960, $i17=var3168, $i18=var3749, $r8=var2065, $i35=var762, $i15=var505, $i16=var1694, $r10=var1677, $r11=var140, $i36=var3048, $i13=var3047, $i14=var1535, $z2=var3289, $s37=var3282, $i6=var1237, $i7=var3715, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1834, $r12=var2916, $i3=var106, $i8=var2658, $i9=var1598, $r13=var2139, $i4=var3484, $i10=var3078, $i11=var1642, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2043, $r14=var3981, $i5=var1716, $i12=var2171}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15