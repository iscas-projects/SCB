(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var121 0)
(declare-sort var524 0)
(declare-sort var3697 0)
(declare-sort var3338 0)
(declare-sort var1461 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var121) String)
(declare-fun getKey/1126038692 (var121) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var121) Bool)
(declare-fun isExternal/1126038692 (var121) Bool)
(declare-fun getId/1126038692 (var121) String)
(declare-fun getParts/1126038692 (var121) var3697)
(declare-fun hashCode/1337417431 (var3697) Int)
(declare-fun getAlternateId/1126038692 (var121) String)
(declare-fun getDesc/1126038692 (var121) String)
(declare-fun getMeaning/1126038692 (var121) String)
(declare-fun isHidden/1126038692 (var121) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var121) var3338)
(declare-fun hashCode/-1247371579 (var3338) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var121) var3338)
(declare-fun jsPlaceholderNames/1126038692 (var121) var1461)
(declare-fun hashCode/1818408063 (var1461) Int)
(declare-const null-var121 var121)
(declare-const null-String String)
(declare-const var1901 var121) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1901 null-var121)))
(define-const var2707 String (getSourceName/1126038692 var1901)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var2707 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var2323 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var2262 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2323)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var3862 Int (* var2262 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2847 String (getKey/1126038692 var1901)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var3460 Int (hashCode/-467973558 var2847)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var356 Int (bv2nat (bvxor ((_ int2bv 64) var3862) ((_ int2bv 64) var3460)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var2946 Int (* var356 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1675 Bool (isAnonymous/1126038692 var1901)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var1675 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3823 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var1830 Int (bv2nat (bvxor ((_ int2bv 64) var2946) ((_ int2bv 64) var3823)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3952 Int (* var1830 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var157 Bool (isExternal/1126038692 var1901)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var157 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2687 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var3805 Int (bv2nat (bvxor ((_ int2bv 64) var3952) ((_ int2bv 64) var2687)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1817 Int (* var3805 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var417 String (getId/1126038692 var1901)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3685 Int (hashCode/-467973558 var417)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2712 Int (bv2nat (bvxor ((_ int2bv 64) var1817) ((_ int2bv 64) var3685)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2443 Int (* var2712 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var3071 var3697 (getParts/1126038692 var1901)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var228 Int (hashCode/1337417431 var3071)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1709 Int (bv2nat (bvxor ((_ int2bv 64) var2443) ((_ int2bv 64) var228)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3317 Int (* var1709 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1816 String (getAlternateId/1126038692 var1901)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var1816 null-String))) ; Cond: $r6 != null 
(define-const var2938 String (getAlternateId/1126038692 var1901)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var3829 Int (hashCode/-467973558 var2938)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var970 Int (bv2nat (bvxor ((_ int2bv 64) var3317) ((_ int2bv 64) var3829)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3367 Int (* var970 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var2383 String (getDesc/1126038692 var1901)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var2383 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var856 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var2903 Int (bv2nat (bvxor ((_ int2bv 64) var3367) ((_ int2bv 64) var856)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1839 Int (* var2903 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var229 String (getMeaning/1126038692 var1901)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var229 null-String))) ; Cond: $r10 != null 
(define-const var634 String (getMeaning/1126038692 var1901)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var3734 Int (hashCode/-467973558 var634)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2543 Int (bv2nat (bvxor ((_ int2bv 64) var1839) ((_ int2bv 64) var3734)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var608 Int (* var2543 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var193 Bool (isHidden/1126038692 var1901)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var193 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1980 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var3927 Int (bv2nat (bvxor ((_ int2bv 64) var608) ((_ int2bv 64) var1980)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var11 Int (* var3927 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var808 var3338 (getPlaceholderNameToExampleMap/1126038692 var1901)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3416 Int (hashCode/-1247371579 var808)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var641 Int (bv2nat (bvxor ((_ int2bv 64) var11) ((_ int2bv 64) var3416)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3106 Int (* var641 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var2079 var3338 (getPlaceholderNameToOriginalCodeMap/1126038692 var1901)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1054 Int (hashCode/-1247371579 var2079)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3765 Int (bv2nat (bvxor ((_ int2bv 64) var3106) ((_ int2bv 64) var1054)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3816 Int (* var3765 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var469 var1461 (jsPlaceholderNames/1126038692 var1901)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1339 Int (hashCode/1818408063 var469)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var3562 Int (bv2nat (bvxor ((_ int2bv 64) var3816) ((_ int2bv 64) var1339)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var121=com.google.javascript.jscomp.AutoValue_JsMessage, var1901=r0, var2707=$r1, var524=null_type, var2323=$i31, var2262=$i27, var3862=$i28, var2847=$r3, var3460=$i0, var356=$i29, var2946=$i30, var1675=$z0, var3823=$s32, var1830=$i25, var3952=$i26, var157=$z1, var2687=$s33, var3805=$i19, var1817=$i20, var417=$r4, var3685=$i1, var2712=$i21, var2443=$i22, var3697=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3071=$r5, var228=$i2, var1709=$i23, var3317=$i24, var1816=$r6, var2938=$r7, var3829=$i34, var970=$i17, var3367=$i18, var2383=$r8, var856=$i35, var2903=$i15, var1839=$i16, var229=$r10, var634=$r11, var3734=$i36, var2543=$i13, var608=$i14, var193=$z2, var1980=$s37, var3927=$i6, var11=$i7, var3338=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var808=$r12, var3416=$i3, var641=$i8, var3106=$i9, var2079=$r13, var1054=$i4, var3765=$i10, var3816=$i11, var1461=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var469=$r14, var1339=$i5, var3562=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var121, r0=var1901, $r1=var2707, null_type=var524, $i31=var2323, $i27=var2262, $i28=var3862, $r3=var2847, $i0=var3460, $i29=var356, $i30=var2946, $z0=var1675, $s32=var3823, $i25=var1830, $i26=var3952, $z1=var157, $s33=var2687, $i19=var3805, $i20=var1817, $r4=var417, $i1=var3685, $i21=var2712, $i22=var2443, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3697, $r5=var3071, $i2=var228, $i23=var1709, $i24=var3317, $r6=var1816, $r7=var2938, $i34=var3829, $i17=var970, $i18=var3367, $r8=var2383, $i35=var856, $i15=var2903, $i16=var1839, $r10=var229, $r11=var634, $i36=var3734, $i13=var2543, $i14=var608, $z2=var193, $s37=var1980, $i6=var3927, $i7=var11, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3338, $r12=var808, $i3=var3416, $i8=var641, $i9=var3106, $r13=var2079, $i4=var1054, $i10=var3765, $i11=var3816, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1461, $r14=var469, $i5=var1339, $i12=var3562}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15