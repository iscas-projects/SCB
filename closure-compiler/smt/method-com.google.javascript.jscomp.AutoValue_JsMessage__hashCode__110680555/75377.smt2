(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3280 0)
(declare-sort var294 0)
(declare-sort var3327 0)
(declare-sort var2129 0)
(declare-sort var3116 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3280) String)
(declare-fun getKey/1126038692 (var3280) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var3280) Bool)
(declare-fun isExternal/1126038692 (var3280) Bool)
(declare-fun getId/1126038692 (var3280) String)
(declare-fun getParts/1126038692 (var3280) var3327)
(declare-fun hashCode/1337417431 (var3327) Int)
(declare-fun getAlternateId/1126038692 (var3280) String)
(declare-fun getDesc/1126038692 (var3280) String)
(declare-fun getMeaning/1126038692 (var3280) String)
(declare-fun isHidden/1126038692 (var3280) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3280) var2129)
(declare-fun hashCode/-1247371579 (var2129) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3280) var2129)
(declare-fun jsPlaceholderNames/1126038692 (var3280) var3116)
(declare-fun hashCode/1818408063 (var3116) Int)
(declare-const null-var3280 var3280)
(declare-const null-String String)
(declare-const var439 var3280) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var439 null-var3280)))
(define-const var2509 String (getSourceName/1126038692 var439)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var2509 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var1824 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var3558 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1824)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var3445 Int (* var3558 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2374 String (getKey/1126038692 var439)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2176 Int (hashCode/-467973558 var2374)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var649 Int (bv2nat (bvxor ((_ int2bv 64) var3445) ((_ int2bv 64) var2176)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var2525 Int (* var649 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var796 Bool (isAnonymous/1126038692 var439)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var796 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1864 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var2967 Int (bv2nat (bvxor ((_ int2bv 64) var2525) ((_ int2bv 64) var1864)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3713 Int (* var2967 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var3016 Bool (isExternal/1126038692 var439)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var3016 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2908 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var873 Int (bv2nat (bvxor ((_ int2bv 64) var3713) ((_ int2bv 64) var2908)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var758 Int (* var873 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1210 String (getId/1126038692 var439)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var2599 Int (hashCode/-467973558 var1210)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2252 Int (bv2nat (bvxor ((_ int2bv 64) var758) ((_ int2bv 64) var2599)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1288 Int (* var2252 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1520 var3327 (getParts/1126038692 var439)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1299 Int (hashCode/1337417431 var1520)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var364 Int (bv2nat (bvxor ((_ int2bv 64) var1288) ((_ int2bv 64) var1299)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var2541 Int (* var364 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var726 String (getAlternateId/1126038692 var439)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var726 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var3753 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var3482 Int (bv2nat (bvxor ((_ int2bv 64) var2541) ((_ int2bv 64) var3753)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2984 Int (* var3482 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var648 String (getDesc/1126038692 var439)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var648 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var2003 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var1217 Int (bv2nat (bvxor ((_ int2bv 64) var2984) ((_ int2bv 64) var2003)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2983 Int (* var1217 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3077 String (getMeaning/1126038692 var439)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var3077 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var1917 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var2056 Int (bv2nat (bvxor ((_ int2bv 64) var2983) ((_ int2bv 64) var1917)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3565 Int (* var2056 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2506 Bool (isHidden/1126038692 var439)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var2506 1 0) 0)) ; Cond: $z2 == 0 
(define-const var816 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var445 Int (bv2nat (bvxor ((_ int2bv 64) var3565) ((_ int2bv 64) var816)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var3599 Int (* var445 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2700 var2129 (getPlaceholderNameToExampleMap/1126038692 var439)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1658 Int (hashCode/-1247371579 var2700)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3702 Int (bv2nat (bvxor ((_ int2bv 64) var3599) ((_ int2bv 64) var1658)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2945 Int (* var3702 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var667 var2129 (getPlaceholderNameToOriginalCodeMap/1126038692 var439)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3746 Int (hashCode/-1247371579 var667)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2394 Int (bv2nat (bvxor ((_ int2bv 64) var2945) ((_ int2bv 64) var3746)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3214 Int (* var2394 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var898 var3116 (jsPlaceholderNames/1126038692 var439)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2843 Int (hashCode/1818408063 var898)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var151 Int (bv2nat (bvxor ((_ int2bv 64) var3214) ((_ int2bv 64) var2843)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3280=com.google.javascript.jscomp.AutoValue_JsMessage, var439=r0, var2509=$r1, var294=null_type, var1824=$i31, var3558=$i27, var3445=$i28, var2374=$r3, var2176=$i0, var649=$i29, var2525=$i30, var796=$z0, var1864=$s32, var2967=$i25, var3713=$i26, var3016=$z1, var2908=$s33, var873=$i19, var758=$i20, var1210=$r4, var2599=$i1, var2252=$i21, var1288=$i22, var3327=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1520=$r5, var1299=$i2, var364=$i23, var2541=$i24, var726=$r6, var3753=$i34, var3482=$i17, var2984=$i18, var648=$r8, var2003=$i35, var1217=$i15, var2983=$i16, var3077=$r10, var1917=$i36, var2056=$i13, var3565=$i14, var2506=$z2, var816=$s37, var445=$i6, var3599=$i7, var2129=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2700=$r12, var1658=$i3, var3702=$i8, var2945=$i9, var667=$r13, var3746=$i4, var2394=$i10, var3214=$i11, var3116=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var898=$r14, var2843=$i5, var151=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3280, r0=var439, $r1=var2509, null_type=var294, $i31=var1824, $i27=var3558, $i28=var3445, $r3=var2374, $i0=var2176, $i29=var649, $i30=var2525, $z0=var796, $s32=var1864, $i25=var2967, $i26=var3713, $z1=var3016, $s33=var2908, $i19=var873, $i20=var758, $r4=var1210, $i1=var2599, $i21=var2252, $i22=var1288, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3327, $r5=var1520, $i2=var1299, $i23=var364, $i24=var2541, $r6=var726, $i34=var3753, $i17=var3482, $i18=var2984, $r8=var648, $i35=var2003, $i15=var1217, $i16=var2983, $r10=var3077, $i36=var1917, $i13=var2056, $i14=var3565, $z2=var2506, $s37=var816, $i6=var445, $i7=var3599, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2129, $r12=var2700, $i3=var1658, $i8=var3702, $i9=var2945, $r13=var667, $i4=var3746, $i10=var2394, $i11=var3214, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3116, $r14=var898, $i5=var2843, $i12=var151}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15