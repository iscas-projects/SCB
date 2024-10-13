(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var796 0)
(declare-sort var765 0)
(declare-sort var3923 0)
(declare-sort var3858 0)
(declare-sort var792 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var796) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var796) String)
(declare-fun isAnonymous/1126038692 (var796) Bool)
(declare-fun isExternal/1126038692 (var796) Bool)
(declare-fun getId/1126038692 (var796) String)
(declare-fun getParts/1126038692 (var796) var3923)
(declare-fun hashCode/1337417431 (var3923) Int)
(declare-fun getAlternateId/1126038692 (var796) String)
(declare-fun getDesc/1126038692 (var796) String)
(declare-fun getMeaning/1126038692 (var796) String)
(declare-fun isHidden/1126038692 (var796) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var796) var3858)
(declare-fun hashCode/-1247371579 (var3858) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var796) var3858)
(declare-fun jsPlaceholderNames/1126038692 (var796) var792)
(declare-fun hashCode/1818408063 (var792) Int)
(declare-const null-var796 var796)
(declare-const null-String String)
(declare-const var1282 var796) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1282 null-var796)))
(define-const var789 String (getSourceName/1126038692 var1282)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var789 null-String))) ; Cond: $r1 != null 
(define-const var3451 String (getSourceName/1126038692 var1282)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var3750 Int (hashCode/-467973558 var3451)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3594 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3750)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var2258 Int (* var3594 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var3699 String (getKey/1126038692 var1282)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var296 Int (hashCode/-467973558 var3699)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var411 Int (bv2nat (bvxor ((_ int2bv 64) var2258) ((_ int2bv 64) var296)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1299 Int (* var411 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var3852 Bool (isAnonymous/1126038692 var1282)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var3852 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3919 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var250 Int (bv2nat (bvxor ((_ int2bv 64) var1299) ((_ int2bv 64) var3919)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var2590 Int (* var250 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var75 Bool (isExternal/1126038692 var1282)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var75 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3512 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var1098 Int (bv2nat (bvxor ((_ int2bv 64) var2590) ((_ int2bv 64) var3512)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var3405 Int (* var1098 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var3477 String (getId/1126038692 var1282)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1082 Int (hashCode/-467973558 var3477)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2290 Int (bv2nat (bvxor ((_ int2bv 64) var3405) ((_ int2bv 64) var1082)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1561 Int (* var2290 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var527 var3923 (getParts/1126038692 var1282)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var3587 Int (hashCode/1337417431 var527)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2677 Int (bv2nat (bvxor ((_ int2bv 64) var1561) ((_ int2bv 64) var3587)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1311 Int (* var2677 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var2421 String (getAlternateId/1126038692 var1282)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var2421 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var1238 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var785 Int (bv2nat (bvxor ((_ int2bv 64) var1311) ((_ int2bv 64) var1238)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var400 Int (* var785 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var32 String (getDesc/1126038692 var1282)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var32 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var3771 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var2726 Int (bv2nat (bvxor ((_ int2bv 64) var400) ((_ int2bv 64) var3771)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var3854 Int (* var2726 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var719 String (getMeaning/1126038692 var1282)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var719 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var3784 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var1223 Int (bv2nat (bvxor ((_ int2bv 64) var3854) ((_ int2bv 64) var3784)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3721 Int (* var1223 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var1892 Bool (isHidden/1126038692 var1282)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var1892 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var754 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var2114 Int (bv2nat (bvxor ((_ int2bv 64) var3721) ((_ int2bv 64) var754)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var362 Int (* var2114 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var1644 var3858 (getPlaceholderNameToExampleMap/1126038692 var1282)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1971 Int (hashCode/-1247371579 var1644)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1722 Int (bv2nat (bvxor ((_ int2bv 64) var362) ((_ int2bv 64) var1971)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3194 Int (* var1722 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3063 var3858 (getPlaceholderNameToOriginalCodeMap/1126038692 var1282)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1166 Int (hashCode/-1247371579 var3063)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2818 Int (bv2nat (bvxor ((_ int2bv 64) var3194) ((_ int2bv 64) var1166)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3666 Int (* var2818 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var413 var792 (jsPlaceholderNames/1126038692 var1282)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var3466 Int (hashCode/1818408063 var413)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var3270 Int (bv2nat (bvxor ((_ int2bv 64) var3666) ((_ int2bv 64) var3466)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var796=com.google.javascript.jscomp.AutoValue_JsMessage, var1282=r0, var789=$r1, var765=null_type, var3451=$r2, var3750=$i31, var3594=$i27, var2258=$i28, var3699=$r3, var296=$i0, var411=$i29, var1299=$i30, var3852=$z0, var3919=$s32, var250=$i25, var2590=$i26, var75=$z1, var3512=$s33, var1098=$i19, var3405=$i20, var3477=$r4, var1082=$i1, var2290=$i21, var1561=$i22, var3923=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var527=$r5, var3587=$i2, var2677=$i23, var1311=$i24, var2421=$r6, var1238=$i34, var785=$i17, var400=$i18, var32=$r8, var3771=$i35, var2726=$i15, var3854=$i16, var719=$r10, var3784=$i36, var1223=$i13, var3721=$i14, var1892=$z2, var754=$s37, var2114=$i6, var362=$i7, var3858=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1644=$r12, var1971=$i3, var1722=$i8, var3194=$i9, var3063=$r13, var1166=$i4, var2818=$i10, var3666=$i11, var792=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var413=$r14, var3466=$i5, var3270=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var796, r0=var1282, $r1=var789, null_type=var765, $r2=var3451, $i31=var3750, $i27=var3594, $i28=var2258, $r3=var3699, $i0=var296, $i29=var411, $i30=var1299, $z0=var3852, $s32=var3919, $i25=var250, $i26=var2590, $z1=var75, $s33=var3512, $i19=var1098, $i20=var3405, $r4=var3477, $i1=var1082, $i21=var2290, $i22=var1561, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3923, $r5=var527, $i2=var3587, $i23=var2677, $i24=var1311, $r6=var2421, $i34=var1238, $i17=var785, $i18=var400, $r8=var32, $i35=var3771, $i15=var2726, $i16=var3854, $r10=var719, $i36=var3784, $i13=var1223, $i14=var3721, $z2=var1892, $s37=var754, $i6=var2114, $i7=var362, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3858, $r12=var1644, $i3=var1971, $i8=var1722, $i9=var3194, $r13=var3063, $i4=var1166, $i10=var2818, $i11=var3666, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var792, $r14=var413, $i5=var3466, $i12=var3270}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15