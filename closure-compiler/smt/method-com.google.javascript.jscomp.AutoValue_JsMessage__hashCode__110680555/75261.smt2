(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3518 0)
(declare-sort var2313 0)
(declare-sort var2753 0)
(declare-sort var889 0)
(declare-sort var1038 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3518) String)
(declare-fun getKey/1126038692 (var3518) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var3518) Bool)
(declare-fun isExternal/1126038692 (var3518) Bool)
(declare-fun getId/1126038692 (var3518) String)
(declare-fun getParts/1126038692 (var3518) var2753)
(declare-fun hashCode/1337417431 (var2753) Int)
(declare-fun getAlternateId/1126038692 (var3518) String)
(declare-fun getDesc/1126038692 (var3518) String)
(declare-fun getMeaning/1126038692 (var3518) String)
(declare-fun isHidden/1126038692 (var3518) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3518) var889)
(declare-fun hashCode/-1247371579 (var889) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3518) var889)
(declare-fun jsPlaceholderNames/1126038692 (var3518) var1038)
(declare-fun hashCode/1818408063 (var1038) Int)
(declare-const null-var3518 var3518)
(declare-const null-String String)
(declare-const var1776 var3518) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1776 null-var3518)))
(define-const var1437 String (getSourceName/1126038692 var1776)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var1437 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var492 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var2048 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var492)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var2659 Int (* var2048 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1139 String (getKey/1126038692 var1776)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var3637 Int (hashCode/-467973558 var1139)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var3987 Int (bv2nat (bvxor ((_ int2bv 64) var2659) ((_ int2bv 64) var3637)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1830 Int (* var3987 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1634 Bool (isAnonymous/1126038692 var1776)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var1634 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2847 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var1755 Int (bv2nat (bvxor ((_ int2bv 64) var1830) ((_ int2bv 64) var2847)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3488 Int (* var1755 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var3173 Bool (isExternal/1126038692 var1776)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var3173 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1517 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var1147 Int (bv2nat (bvxor ((_ int2bv 64) var3488) ((_ int2bv 64) var1517)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var94 Int (* var1147 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var3555 String (getId/1126038692 var1776)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var818 Int (hashCode/-467973558 var3555)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var637 Int (bv2nat (bvxor ((_ int2bv 64) var94) ((_ int2bv 64) var818)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var3062 Int (* var637 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1096 var2753 (getParts/1126038692 var1776)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var3960 Int (hashCode/1337417431 var1096)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1655 Int (bv2nat (bvxor ((_ int2bv 64) var3062) ((_ int2bv 64) var3960)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var857 Int (* var1655 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1688 String (getAlternateId/1126038692 var1776)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var1688 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var446 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var3392 Int (bv2nat (bvxor ((_ int2bv 64) var857) ((_ int2bv 64) var446)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var620 Int (* var3392 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var2949 String (getDesc/1126038692 var1776)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var2949 null-String))) ; Cond: $r8 != null 
(define-const var781 String (getDesc/1126038692 var1776)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var258 Int (hashCode/-467973558 var781)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3091 Int (bv2nat (bvxor ((_ int2bv 64) var620) ((_ int2bv 64) var258)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2034 Int (* var3091 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var1467 String (getMeaning/1126038692 var1776)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var1467 null-String))) ; Cond: $r10 != null 
(define-const var2746 String (getMeaning/1126038692 var1776)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var2935 Int (hashCode/-467973558 var2746)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2762 Int (bv2nat (bvxor ((_ int2bv 64) var2034) ((_ int2bv 64) var2935)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2975 Int (* var2762 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var652 Bool (isHidden/1126038692 var1776)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var652 1 0) 0)) ; Cond: $z2 == 0 
(define-const var348 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var447 Int (bv2nat (bvxor ((_ int2bv 64) var2975) ((_ int2bv 64) var348)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1535 Int (* var447 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var735 var889 (getPlaceholderNameToExampleMap/1126038692 var1776)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1736 Int (hashCode/-1247371579 var735)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var893 Int (bv2nat (bvxor ((_ int2bv 64) var1535) ((_ int2bv 64) var1736)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var1075 Int (* var893 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var925 var889 (getPlaceholderNameToOriginalCodeMap/1126038692 var1776)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1735 Int (hashCode/-1247371579 var925)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var369 Int (bv2nat (bvxor ((_ int2bv 64) var1075) ((_ int2bv 64) var1735)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var238 Int (* var369 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2105 var1038 (jsPlaceholderNames/1126038692 var1776)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var3640 Int (hashCode/1818408063 var2105)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1959 Int (bv2nat (bvxor ((_ int2bv 64) var238) ((_ int2bv 64) var3640)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3518=com.google.javascript.jscomp.AutoValue_JsMessage, var1776=r0, var1437=$r1, var2313=null_type, var492=$i31, var2048=$i27, var2659=$i28, var1139=$r3, var3637=$i0, var3987=$i29, var1830=$i30, var1634=$z0, var2847=$s32, var1755=$i25, var3488=$i26, var3173=$z1, var1517=$s33, var1147=$i19, var94=$i20, var3555=$r4, var818=$i1, var637=$i21, var3062=$i22, var2753=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1096=$r5, var3960=$i2, var1655=$i23, var857=$i24, var1688=$r6, var446=$i34, var3392=$i17, var620=$i18, var2949=$r8, var781=$r9, var258=$i35, var3091=$i15, var2034=$i16, var1467=$r10, var2746=$r11, var2935=$i36, var2762=$i13, var2975=$i14, var652=$z2, var348=$s37, var447=$i6, var1535=$i7, var889=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var735=$r12, var1736=$i3, var893=$i8, var1075=$i9, var925=$r13, var1735=$i4, var369=$i10, var238=$i11, var1038=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2105=$r14, var3640=$i5, var1959=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3518, r0=var1776, $r1=var1437, null_type=var2313, $i31=var492, $i27=var2048, $i28=var2659, $r3=var1139, $i0=var3637, $i29=var3987, $i30=var1830, $z0=var1634, $s32=var2847, $i25=var1755, $i26=var3488, $z1=var3173, $s33=var1517, $i19=var1147, $i20=var94, $r4=var3555, $i1=var818, $i21=var637, $i22=var3062, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2753, $r5=var1096, $i2=var3960, $i23=var1655, $i24=var857, $r6=var1688, $i34=var446, $i17=var3392, $i18=var620, $r8=var2949, $r9=var781, $i35=var258, $i15=var3091, $i16=var2034, $r10=var1467, $r11=var2746, $i36=var2935, $i13=var2762, $i14=var2975, $z2=var652, $s37=var348, $i6=var447, $i7=var1535, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var889, $r12=var735, $i3=var1736, $i8=var893, $i9=var1075, $r13=var925, $i4=var1735, $i10=var369, $i11=var238, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1038, $r14=var2105, $i5=var3640, $i12=var1959}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15