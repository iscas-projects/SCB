(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3788 0)
(declare-sort var2441 0)
(declare-sort var3996 0)
(declare-sort var3337 0)
(declare-sort var1617 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3788) String)
(declare-fun getKey/1126038692 (var3788) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var3788) Bool)
(declare-fun isExternal/1126038692 (var3788) Bool)
(declare-fun getId/1126038692 (var3788) String)
(declare-fun getParts/1126038692 (var3788) var3996)
(declare-fun hashCode/1337417431 (var3996) Int)
(declare-fun getAlternateId/1126038692 (var3788) String)
(declare-fun getDesc/1126038692 (var3788) String)
(declare-fun getMeaning/1126038692 (var3788) String)
(declare-fun isHidden/1126038692 (var3788) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3788) var3337)
(declare-fun hashCode/-1247371579 (var3337) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3788) var3337)
(declare-fun jsPlaceholderNames/1126038692 (var3788) var1617)
(declare-fun hashCode/1818408063 (var1617) Int)
(declare-const null-var3788 var3788)
(declare-const null-String String)
(declare-const var3405 var3788) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3405 null-var3788)))
(define-const var355 String (getSourceName/1126038692 var3405)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var355 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var3162 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var836 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3162)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var2039 Int (* var836 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var221 String (getKey/1126038692 var3405)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var87 Int (hashCode/-467973558 var221)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1876 Int (bv2nat (bvxor ((_ int2bv 64) var2039) ((_ int2bv 64) var87)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var2886 Int (* var1876 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var3359 Bool (isAnonymous/1126038692 var3405)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var3359 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2278 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var2557 Int (bv2nat (bvxor ((_ int2bv 64) var2886) ((_ int2bv 64) var2278)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3849 Int (* var2557 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2980 Bool (isExternal/1126038692 var3405)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var2980 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var541 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var1368 Int (bv2nat (bvxor ((_ int2bv 64) var3849) ((_ int2bv 64) var541)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var248 Int (* var1368 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var2591 String (getId/1126038692 var3405)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var599 Int (hashCode/-467973558 var2591)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var526 Int (bv2nat (bvxor ((_ int2bv 64) var248) ((_ int2bv 64) var599)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var3247 Int (* var526 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2739 var3996 (getParts/1126038692 var3405)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var26 Int (hashCode/1337417431 var2739)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var28 Int (bv2nat (bvxor ((_ int2bv 64) var3247) ((_ int2bv 64) var26)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var452 Int (* var28 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1484 String (getAlternateId/1126038692 var3405)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var1484 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var1509 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var3022 Int (bv2nat (bvxor ((_ int2bv 64) var452) ((_ int2bv 64) var1509)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2466 Int (* var3022 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var3571 String (getDesc/1126038692 var3405)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var3571 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var651 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var3330 Int (bv2nat (bvxor ((_ int2bv 64) var2466) ((_ int2bv 64) var651)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2316 Int (* var3330 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var1140 String (getMeaning/1126038692 var3405)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var1140 null-String))) ; Cond: $r10 != null 
(define-const var1794 String (getMeaning/1126038692 var3405)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var2461 Int (hashCode/-467973558 var1794)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1047 Int (bv2nat (bvxor ((_ int2bv 64) var2316) ((_ int2bv 64) var2461)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var869 Int (* var1047 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var918 Bool (isHidden/1126038692 var3405)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var918 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1871 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var1343 Int (bv2nat (bvxor ((_ int2bv 64) var869) ((_ int2bv 64) var1871)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var3877 Int (* var1343 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var517 var3337 (getPlaceholderNameToExampleMap/1126038692 var3405)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1137 Int (hashCode/-1247371579 var517)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2769 Int (bv2nat (bvxor ((_ int2bv 64) var3877) ((_ int2bv 64) var1137)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var1106 Int (* var2769 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var481 var3337 (getPlaceholderNameToOriginalCodeMap/1126038692 var3405)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var157 Int (hashCode/-1247371579 var481)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1664 Int (bv2nat (bvxor ((_ int2bv 64) var1106) ((_ int2bv 64) var157)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3499 Int (* var1664 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2693 var1617 (jsPlaceholderNames/1126038692 var3405)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2303 Int (hashCode/1818408063 var2693)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var3414 Int (bv2nat (bvxor ((_ int2bv 64) var3499) ((_ int2bv 64) var2303)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3788=com.google.javascript.jscomp.AutoValue_JsMessage, var3405=r0, var355=$r1, var2441=null_type, var3162=$i31, var836=$i27, var2039=$i28, var221=$r3, var87=$i0, var1876=$i29, var2886=$i30, var3359=$z0, var2278=$s32, var2557=$i25, var3849=$i26, var2980=$z1, var541=$s33, var1368=$i19, var248=$i20, var2591=$r4, var599=$i1, var526=$i21, var3247=$i22, var3996=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2739=$r5, var26=$i2, var28=$i23, var452=$i24, var1484=$r6, var1509=$i34, var3022=$i17, var2466=$i18, var3571=$r8, var651=$i35, var3330=$i15, var2316=$i16, var1140=$r10, var1794=$r11, var2461=$i36, var1047=$i13, var869=$i14, var918=$z2, var1871=$s37, var1343=$i6, var3877=$i7, var3337=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var517=$r12, var1137=$i3, var2769=$i8, var1106=$i9, var481=$r13, var157=$i4, var1664=$i10, var3499=$i11, var1617=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2693=$r14, var2303=$i5, var3414=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3788, r0=var3405, $r1=var355, null_type=var2441, $i31=var3162, $i27=var836, $i28=var2039, $r3=var221, $i0=var87, $i29=var1876, $i30=var2886, $z0=var3359, $s32=var2278, $i25=var2557, $i26=var3849, $z1=var2980, $s33=var541, $i19=var1368, $i20=var248, $r4=var2591, $i1=var599, $i21=var526, $i22=var3247, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3996, $r5=var2739, $i2=var26, $i23=var28, $i24=var452, $r6=var1484, $i34=var1509, $i17=var3022, $i18=var2466, $r8=var3571, $i35=var651, $i15=var3330, $i16=var2316, $r10=var1140, $r11=var1794, $i36=var2461, $i13=var1047, $i14=var869, $z2=var918, $s37=var1871, $i6=var1343, $i7=var3877, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3337, $r12=var517, $i3=var1137, $i8=var2769, $i9=var1106, $r13=var481, $i4=var157, $i10=var1664, $i11=var3499, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1617, $r14=var2693, $i5=var2303, $i12=var3414}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15