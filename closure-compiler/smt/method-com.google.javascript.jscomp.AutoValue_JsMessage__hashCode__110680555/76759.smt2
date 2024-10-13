(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2513 0)
(declare-sort var3928 0)
(declare-sort var11 0)
(declare-sort var437 0)
(declare-sort var3890 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var2513) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var2513) String)
(declare-fun isAnonymous/1126038692 (var2513) Bool)
(declare-fun isExternal/1126038692 (var2513) Bool)
(declare-fun getId/1126038692 (var2513) String)
(declare-fun getParts/1126038692 (var2513) var11)
(declare-fun hashCode/1337417431 (var11) Int)
(declare-fun getAlternateId/1126038692 (var2513) String)
(declare-fun getDesc/1126038692 (var2513) String)
(declare-fun getMeaning/1126038692 (var2513) String)
(declare-fun isHidden/1126038692 (var2513) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var2513) var437)
(declare-fun hashCode/-1247371579 (var437) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var2513) var437)
(declare-fun jsPlaceholderNames/1126038692 (var2513) var3890)
(declare-fun hashCode/1818408063 (var3890) Int)
(declare-const null-var2513 var2513)
(declare-const null-String String)
(declare-const var3851 var2513) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3851 null-var2513)))
(define-const var3950 String (getSourceName/1126038692 var3851)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var3950 null-String))) ; Cond: $r1 != null 
(define-const var3479 String (getSourceName/1126038692 var3851)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var1701 Int (hashCode/-467973558 var3479)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var353 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1701)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1988 Int (* var353 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var3673 String (getKey/1126038692 var3851)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var3035 Int (hashCode/-467973558 var3673)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var855 Int (bv2nat (bvxor ((_ int2bv 64) var1988) ((_ int2bv 64) var3035)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1836 Int (* var855 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var885 Bool (isAnonymous/1126038692 var3851)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var885 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3899 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var1668 Int (bv2nat (bvxor ((_ int2bv 64) var1836) ((_ int2bv 64) var3899)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3382 Int (* var1668 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2366 Bool (isExternal/1126038692 var3851)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var2366 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2952 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var1688 Int (bv2nat (bvxor ((_ int2bv 64) var3382) ((_ int2bv 64) var2952)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var173 Int (* var1688 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var422 String (getId/1126038692 var3851)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var468 Int (hashCode/-467973558 var422)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3648 Int (bv2nat (bvxor ((_ int2bv 64) var173) ((_ int2bv 64) var468)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var3098 Int (* var3648 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1114 var11 (getParts/1126038692 var3851)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var2842 Int (hashCode/1337417431 var1114)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3400 Int (bv2nat (bvxor ((_ int2bv 64) var3098) ((_ int2bv 64) var2842)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3838 Int (* var3400 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var2709 String (getAlternateId/1126038692 var3851)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var2709 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var1295 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var1766 Int (bv2nat (bvxor ((_ int2bv 64) var3838) ((_ int2bv 64) var1295)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2739 Int (* var1766 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var3114 String (getDesc/1126038692 var3851)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var3114 null-String))) ; Cond: $r8 != null 
(define-const var3081 String (getDesc/1126038692 var3851)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var2307 Int (hashCode/-467973558 var3081)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1530 Int (bv2nat (bvxor ((_ int2bv 64) var2739) ((_ int2bv 64) var2307)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var486 Int (* var1530 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2510 String (getMeaning/1126038692 var3851)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var2510 null-String))) ; Cond: $r10 != null 
(define-const var1348 String (getMeaning/1126038692 var3851)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var1050 Int (hashCode/-467973558 var1348)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2279 Int (bv2nat (bvxor ((_ int2bv 64) var486) ((_ int2bv 64) var1050)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2944 Int (* var2279 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3193 Bool (isHidden/1126038692 var3851)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var3193 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3793 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var3746 Int (bv2nat (bvxor ((_ int2bv 64) var2944) ((_ int2bv 64) var3793)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var272 Int (* var3746 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var1278 var437 (getPlaceholderNameToExampleMap/1126038692 var3851)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3087 Int (hashCode/-1247371579 var1278)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3392 Int (bv2nat (bvxor ((_ int2bv 64) var272) ((_ int2bv 64) var3087)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var875 Int (* var3392 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var263 var437 (getPlaceholderNameToOriginalCodeMap/1126038692 var3851)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3989 Int (hashCode/-1247371579 var263)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var544 Int (bv2nat (bvxor ((_ int2bv 64) var875) ((_ int2bv 64) var3989)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var2698 Int (* var544 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var981 var3890 (jsPlaceholderNames/1126038692 var3851)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2917 Int (hashCode/1818408063 var981)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var2420 Int (bv2nat (bvxor ((_ int2bv 64) var2698) ((_ int2bv 64) var2917)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var2513=com.google.javascript.jscomp.AutoValue_JsMessage, var3851=r0, var3950=$r1, var3928=null_type, var3479=$r2, var1701=$i31, var353=$i27, var1988=$i28, var3673=$r3, var3035=$i0, var855=$i29, var1836=$i30, var885=$z0, var3899=$s32, var1668=$i25, var3382=$i26, var2366=$z1, var2952=$s33, var1688=$i19, var173=$i20, var422=$r4, var468=$i1, var3648=$i21, var3098=$i22, var11=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1114=$r5, var2842=$i2, var3400=$i23, var3838=$i24, var2709=$r6, var1295=$i34, var1766=$i17, var2739=$i18, var3114=$r8, var3081=$r9, var2307=$i35, var1530=$i15, var486=$i16, var2510=$r10, var1348=$r11, var1050=$i36, var2279=$i13, var2944=$i14, var3193=$z2, var3793=$s37, var3746=$i6, var272=$i7, var437=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1278=$r12, var3087=$i3, var3392=$i8, var875=$i9, var263=$r13, var3989=$i4, var544=$i10, var2698=$i11, var3890=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var981=$r14, var2917=$i5, var2420=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var2513, r0=var3851, $r1=var3950, null_type=var3928, $r2=var3479, $i31=var1701, $i27=var353, $i28=var1988, $r3=var3673, $i0=var3035, $i29=var855, $i30=var1836, $z0=var885, $s32=var3899, $i25=var1668, $i26=var3382, $z1=var2366, $s33=var2952, $i19=var1688, $i20=var173, $r4=var422, $i1=var468, $i21=var3648, $i22=var3098, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var11, $r5=var1114, $i2=var2842, $i23=var3400, $i24=var3838, $r6=var2709, $i34=var1295, $i17=var1766, $i18=var2739, $r8=var3114, $r9=var3081, $i35=var2307, $i15=var1530, $i16=var486, $r10=var2510, $r11=var1348, $i36=var1050, $i13=var2279, $i14=var2944, $z2=var3193, $s37=var3793, $i6=var3746, $i7=var272, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var437, $r12=var1278, $i3=var3087, $i8=var3392, $i9=var875, $r13=var263, $i4=var3989, $i10=var544, $i11=var2698, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3890, $r14=var981, $i5=var2917, $i12=var2420}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15