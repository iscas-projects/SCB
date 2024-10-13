(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3372 0)
(declare-sort var2953 0)
(declare-sort var2310 0)
(declare-sort var3729 0)
(declare-sort var3980 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3372) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var3372) String)
(declare-fun isAnonymous/1126038692 (var3372) Bool)
(declare-fun isExternal/1126038692 (var3372) Bool)
(declare-fun getId/1126038692 (var3372) String)
(declare-fun getParts/1126038692 (var3372) var2310)
(declare-fun hashCode/1337417431 (var2310) Int)
(declare-fun getAlternateId/1126038692 (var3372) String)
(declare-fun getDesc/1126038692 (var3372) String)
(declare-fun getMeaning/1126038692 (var3372) String)
(declare-fun isHidden/1126038692 (var3372) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3372) var3729)
(declare-fun hashCode/-1247371579 (var3729) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3372) var3729)
(declare-fun jsPlaceholderNames/1126038692 (var3372) var3980)
(declare-fun hashCode/1818408063 (var3980) Int)
(declare-const null-var3372 var3372)
(declare-const null-String String)
(declare-const var3405 var3372) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3405 null-var3372)))
(define-const var900 String (getSourceName/1126038692 var3405)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var900 null-String))) ; Cond: $r1 != null 
(define-const var2794 String (getSourceName/1126038692 var3405)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var759 Int (hashCode/-467973558 var2794)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var200 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var759)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var3551 Int (* var200 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var3316 String (getKey/1126038692 var3405)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var3672 Int (hashCode/-467973558 var3316)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var185 Int (bv2nat (bvxor ((_ int2bv 64) var3551) ((_ int2bv 64) var3672)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var2701 Int (* var185 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1036 Bool (isAnonymous/1126038692 var3405)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var1036 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2227 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var124 Int (bv2nat (bvxor ((_ int2bv 64) var2701) ((_ int2bv 64) var2227)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var84 Int (* var124 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2241 Bool (isExternal/1126038692 var3405)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var2241 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3018 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var691 Int (bv2nat (bvxor ((_ int2bv 64) var84) ((_ int2bv 64) var3018)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1396 Int (* var691 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var424 String (getId/1126038692 var3405)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var2257 Int (hashCode/-467973558 var424)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3821 Int (bv2nat (bvxor ((_ int2bv 64) var1396) ((_ int2bv 64) var2257)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2992 Int (* var3821 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2432 var2310 (getParts/1126038692 var3405)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var2377 Int (hashCode/1337417431 var2432)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1454 Int (bv2nat (bvxor ((_ int2bv 64) var2992) ((_ int2bv 64) var2377)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var2648 Int (* var1454 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1800 String (getAlternateId/1126038692 var3405)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var1800 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var3565 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var2978 Int (bv2nat (bvxor ((_ int2bv 64) var2648) ((_ int2bv 64) var3565)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var1888 Int (* var2978 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var2539 String (getDesc/1126038692 var3405)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var2539 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var921 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var3100 Int (bv2nat (bvxor ((_ int2bv 64) var1888) ((_ int2bv 64) var921)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1319 Int (* var3100 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2993 String (getMeaning/1126038692 var3405)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var2993 null-String))) ; Cond: $r10 != null 
(define-const var730 String (getMeaning/1126038692 var3405)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var3897 Int (hashCode/-467973558 var730)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var842 Int (bv2nat (bvxor ((_ int2bv 64) var1319) ((_ int2bv 64) var3897)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2194 Int (* var842 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3923 Bool (isHidden/1126038692 var3405)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var3923 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1679 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var1301 Int (bv2nat (bvxor ((_ int2bv 64) var2194) ((_ int2bv 64) var1679)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var2755 Int (* var1301 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var1104 var3729 (getPlaceholderNameToExampleMap/1126038692 var3405)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var92 Int (hashCode/-1247371579 var1104)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3178 Int (bv2nat (bvxor ((_ int2bv 64) var2755) ((_ int2bv 64) var92)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2838 Int (* var3178 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3695 var3729 (getPlaceholderNameToOriginalCodeMap/1126038692 var3405)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1803 Int (hashCode/-1247371579 var3695)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2811 Int (bv2nat (bvxor ((_ int2bv 64) var2838) ((_ int2bv 64) var1803)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var1311 Int (* var2811 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var683 var3980 (jsPlaceholderNames/1126038692 var3405)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1893 Int (hashCode/1818408063 var683)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var2148 Int (bv2nat (bvxor ((_ int2bv 64) var1311) ((_ int2bv 64) var1893)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3372=com.google.javascript.jscomp.AutoValue_JsMessage, var3405=r0, var900=$r1, var2953=null_type, var2794=$r2, var759=$i31, var200=$i27, var3551=$i28, var3316=$r3, var3672=$i0, var185=$i29, var2701=$i30, var1036=$z0, var2227=$s32, var124=$i25, var84=$i26, var2241=$z1, var3018=$s33, var691=$i19, var1396=$i20, var424=$r4, var2257=$i1, var3821=$i21, var2992=$i22, var2310=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2432=$r5, var2377=$i2, var1454=$i23, var2648=$i24, var1800=$r6, var3565=$i34, var2978=$i17, var1888=$i18, var2539=$r8, var921=$i35, var3100=$i15, var1319=$i16, var2993=$r10, var730=$r11, var3897=$i36, var842=$i13, var2194=$i14, var3923=$z2, var1679=$s37, var1301=$i6, var2755=$i7, var3729=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1104=$r12, var92=$i3, var3178=$i8, var2838=$i9, var3695=$r13, var1803=$i4, var2811=$i10, var1311=$i11, var3980=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var683=$r14, var1893=$i5, var2148=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3372, r0=var3405, $r1=var900, null_type=var2953, $r2=var2794, $i31=var759, $i27=var200, $i28=var3551, $r3=var3316, $i0=var3672, $i29=var185, $i30=var2701, $z0=var1036, $s32=var2227, $i25=var124, $i26=var84, $z1=var2241, $s33=var3018, $i19=var691, $i20=var1396, $r4=var424, $i1=var2257, $i21=var3821, $i22=var2992, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2310, $r5=var2432, $i2=var2377, $i23=var1454, $i24=var2648, $r6=var1800, $i34=var3565, $i17=var2978, $i18=var1888, $r8=var2539, $i35=var921, $i15=var3100, $i16=var1319, $r10=var2993, $r11=var730, $i36=var3897, $i13=var842, $i14=var2194, $z2=var3923, $s37=var1679, $i6=var1301, $i7=var2755, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3729, $r12=var1104, $i3=var92, $i8=var3178, $i9=var2838, $r13=var3695, $i4=var1803, $i10=var2811, $i11=var1311, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3980, $r14=var683, $i5=var1893, $i12=var2148}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15