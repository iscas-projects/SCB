(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1195 0)
(declare-sort var1966 0)
(declare-sort var1460 0)
(declare-sort var1294 0)
(declare-sort var1716 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1195) String)
(declare-fun getKey/1126038692 (var1195) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var1195) Bool)
(declare-fun isExternal/1126038692 (var1195) Bool)
(declare-fun getId/1126038692 (var1195) String)
(declare-fun getParts/1126038692 (var1195) var1460)
(declare-fun hashCode/1337417431 (var1460) Int)
(declare-fun getAlternateId/1126038692 (var1195) String)
(declare-fun getDesc/1126038692 (var1195) String)
(declare-fun getMeaning/1126038692 (var1195) String)
(declare-fun isHidden/1126038692 (var1195) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1195) var1294)
(declare-fun hashCode/-1247371579 (var1294) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1195) var1294)
(declare-fun jsPlaceholderNames/1126038692 (var1195) var1716)
(declare-fun hashCode/1818408063 (var1716) Int)
(declare-const null-var1195 var1195)
(declare-const null-String String)
(declare-const var1205 var1195) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1205 null-var1195)))
(define-const var2985 String (getSourceName/1126038692 var1205)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var2985 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var3580 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var3177 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3580)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1489 Int (* var3177 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2114 String (getKey/1126038692 var1205)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2731 Int (hashCode/-467973558 var2114)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var3479 Int (bv2nat (bvxor ((_ int2bv 64) var1489) ((_ int2bv 64) var2731)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3767 Int (* var3479 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var3046 Bool (isAnonymous/1126038692 var1205)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var3046 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1776 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var398 Int (bv2nat (bvxor ((_ int2bv 64) var3767) ((_ int2bv 64) var1776)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var942 Int (* var398 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2859 Bool (isExternal/1126038692 var1205)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var2859 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2384 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var2560 Int (bv2nat (bvxor ((_ int2bv 64) var942) ((_ int2bv 64) var2384)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2167 Int (* var2560 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var3645 String (getId/1126038692 var1205)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1365 Int (hashCode/-467973558 var3645)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1719 Int (bv2nat (bvxor ((_ int2bv 64) var2167) ((_ int2bv 64) var1365)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var3178 Int (* var1719 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var3685 var1460 (getParts/1126038692 var1205)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var689 Int (hashCode/1337417431 var3685)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1699 Int (bv2nat (bvxor ((_ int2bv 64) var3178) ((_ int2bv 64) var689)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var2044 Int (* var1699 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var658 String (getAlternateId/1126038692 var1205)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var658 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var1558 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var416 Int (bv2nat (bvxor ((_ int2bv 64) var2044) ((_ int2bv 64) var1558)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2074 Int (* var416 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var525 String (getDesc/1126038692 var1205)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var525 null-String))) ; Cond: $r8 != null 
(define-const var2418 String (getDesc/1126038692 var1205)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var2208 Int (hashCode/-467973558 var2418)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2890 Int (bv2nat (bvxor ((_ int2bv 64) var2074) ((_ int2bv 64) var2208)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1124 Int (* var2890 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3012 String (getMeaning/1126038692 var1205)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var3012 null-String))) ; Cond: $r10 != null 
(define-const var421 String (getMeaning/1126038692 var1205)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var1853 Int (hashCode/-467973558 var421)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1058 Int (bv2nat (bvxor ((_ int2bv 64) var1124) ((_ int2bv 64) var1853)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var1027 Int (* var1058 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3211 Bool (isHidden/1126038692 var1205)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var3211 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3901 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var511 Int (bv2nat (bvxor ((_ int2bv 64) var1027) ((_ int2bv 64) var3901)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var3188 Int (* var511 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var364 var1294 (getPlaceholderNameToExampleMap/1126038692 var1205)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1803 Int (hashCode/-1247371579 var364)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2910 Int (bv2nat (bvxor ((_ int2bv 64) var3188) ((_ int2bv 64) var1803)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var957 Int (* var2910 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var1714 var1294 (getPlaceholderNameToOriginalCodeMap/1126038692 var1205)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var2799 Int (hashCode/-1247371579 var1714)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var914 Int (bv2nat (bvxor ((_ int2bv 64) var957) ((_ int2bv 64) var2799)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var2747 Int (* var914 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3445 var1716 (jsPlaceholderNames/1126038692 var1205)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var3047 Int (hashCode/1818408063 var3445)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var2988 Int (bv2nat (bvxor ((_ int2bv 64) var2747) ((_ int2bv 64) var3047)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1195=com.google.javascript.jscomp.AutoValue_JsMessage, var1205=r0, var2985=$r1, var1966=null_type, var3580=$i31, var3177=$i27, var1489=$i28, var2114=$r3, var2731=$i0, var3479=$i29, var3767=$i30, var3046=$z0, var1776=$s32, var398=$i25, var942=$i26, var2859=$z1, var2384=$s33, var2560=$i19, var2167=$i20, var3645=$r4, var1365=$i1, var1719=$i21, var3178=$i22, var1460=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3685=$r5, var689=$i2, var1699=$i23, var2044=$i24, var658=$r6, var1558=$i34, var416=$i17, var2074=$i18, var525=$r8, var2418=$r9, var2208=$i35, var2890=$i15, var1124=$i16, var3012=$r10, var421=$r11, var1853=$i36, var1058=$i13, var1027=$i14, var3211=$z2, var3901=$s37, var511=$i6, var3188=$i7, var1294=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var364=$r12, var1803=$i3, var2910=$i8, var957=$i9, var1714=$r13, var2799=$i4, var914=$i10, var2747=$i11, var1716=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3445=$r14, var3047=$i5, var2988=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1195, r0=var1205, $r1=var2985, null_type=var1966, $i31=var3580, $i27=var3177, $i28=var1489, $r3=var2114, $i0=var2731, $i29=var3479, $i30=var3767, $z0=var3046, $s32=var1776, $i25=var398, $i26=var942, $z1=var2859, $s33=var2384, $i19=var2560, $i20=var2167, $r4=var3645, $i1=var1365, $i21=var1719, $i22=var3178, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1460, $r5=var3685, $i2=var689, $i23=var1699, $i24=var2044, $r6=var658, $i34=var1558, $i17=var416, $i18=var2074, $r8=var525, $r9=var2418, $i35=var2208, $i15=var2890, $i16=var1124, $r10=var3012, $r11=var421, $i36=var1853, $i13=var1058, $i14=var1027, $z2=var3211, $s37=var3901, $i6=var511, $i7=var3188, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1294, $r12=var364, $i3=var1803, $i8=var2910, $i9=var957, $r13=var1714, $i4=var2799, $i10=var914, $i11=var2747, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1716, $r14=var3445, $i5=var3047, $i12=var2988}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15