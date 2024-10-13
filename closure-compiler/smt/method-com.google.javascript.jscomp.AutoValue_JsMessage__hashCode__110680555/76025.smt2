(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3173 0)
(declare-sort var2543 0)
(declare-sort var2050 0)
(declare-sort var3743 0)
(declare-sort var2159 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3173) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var3173) String)
(declare-fun isAnonymous/1126038692 (var3173) Bool)
(declare-fun isExternal/1126038692 (var3173) Bool)
(declare-fun getId/1126038692 (var3173) String)
(declare-fun getParts/1126038692 (var3173) var2050)
(declare-fun hashCode/1337417431 (var2050) Int)
(declare-fun getAlternateId/1126038692 (var3173) String)
(declare-fun getDesc/1126038692 (var3173) String)
(declare-fun getMeaning/1126038692 (var3173) String)
(declare-fun isHidden/1126038692 (var3173) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3173) var3743)
(declare-fun hashCode/-1247371579 (var3743) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3173) var3743)
(declare-fun jsPlaceholderNames/1126038692 (var3173) var2159)
(declare-fun hashCode/1818408063 (var2159) Int)
(declare-const null-var3173 var3173)
(declare-const null-String String)
(declare-const var860 var3173) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var860 null-var3173)))
(define-const var2201 String (getSourceName/1126038692 var860)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var2201 null-String))) ; Cond: $r1 != null 
(define-const var3921 String (getSourceName/1126038692 var860)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var310 Int (hashCode/-467973558 var3921)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var752 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var310)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1144 Int (* var752 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2696 String (getKey/1126038692 var860)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var667 Int (hashCode/-467973558 var2696)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var3790 Int (bv2nat (bvxor ((_ int2bv 64) var1144) ((_ int2bv 64) var667)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1918 Int (* var3790 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var3850 Bool (isAnonymous/1126038692 var860)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var3850 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2749 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var2619 Int (bv2nat (bvxor ((_ int2bv 64) var1918) ((_ int2bv 64) var2749)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var121 Int (* var2619 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var1222 Bool (isExternal/1126038692 var860)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var1222 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2071 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var521 Int (bv2nat (bvxor ((_ int2bv 64) var121) ((_ int2bv 64) var2071)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var3120 Int (* var521 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1835 String (getId/1126038692 var860)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3303 Int (hashCode/-467973558 var1835)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var486 Int (bv2nat (bvxor ((_ int2bv 64) var3120) ((_ int2bv 64) var3303)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2419 Int (* var486 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2587 var2050 (getParts/1126038692 var860)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var286 Int (hashCode/1337417431 var2587)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3378 Int (bv2nat (bvxor ((_ int2bv 64) var2419) ((_ int2bv 64) var286)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var720 Int (* var3378 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var32 String (getAlternateId/1126038692 var860)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var32 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var1251 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var113 Int (bv2nat (bvxor ((_ int2bv 64) var720) ((_ int2bv 64) var1251)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2322 Int (* var113 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var1054 String (getDesc/1126038692 var860)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var1054 null-String))) ; Cond: $r8 != null 
(define-const var3620 String (getDesc/1126038692 var860)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var3976 Int (hashCode/-467973558 var3620)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var608 Int (bv2nat (bvxor ((_ int2bv 64) var2322) ((_ int2bv 64) var3976)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var3723 Int (* var608 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2973 String (getMeaning/1126038692 var860)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var2973 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var3030 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var22 Int (bv2nat (bvxor ((_ int2bv 64) var3723) ((_ int2bv 64) var3030)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var1830 Int (* var22 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3003 Bool (isHidden/1126038692 var860)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var3003 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3125 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var3924 Int (bv2nat (bvxor ((_ int2bv 64) var1830) ((_ int2bv 64) var3125)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var176 Int (* var3924 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2428 var3743 (getPlaceholderNameToExampleMap/1126038692 var860)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3632 Int (hashCode/-1247371579 var2428)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3358 Int (bv2nat (bvxor ((_ int2bv 64) var176) ((_ int2bv 64) var3632)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3413 Int (* var3358 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var703 var3743 (getPlaceholderNameToOriginalCodeMap/1126038692 var860)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var331 Int (hashCode/-1247371579 var703)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2371 Int (bv2nat (bvxor ((_ int2bv 64) var3413) ((_ int2bv 64) var331)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var2123 Int (* var2371 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3103 var2159 (jsPlaceholderNames/1126038692 var860)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var383 Int (hashCode/1818408063 var3103)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var986 Int (bv2nat (bvxor ((_ int2bv 64) var2123) ((_ int2bv 64) var383)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3173=com.google.javascript.jscomp.AutoValue_JsMessage, var860=r0, var2201=$r1, var2543=null_type, var3921=$r2, var310=$i31, var752=$i27, var1144=$i28, var2696=$r3, var667=$i0, var3790=$i29, var1918=$i30, var3850=$z0, var2749=$s32, var2619=$i25, var121=$i26, var1222=$z1, var2071=$s33, var521=$i19, var3120=$i20, var1835=$r4, var3303=$i1, var486=$i21, var2419=$i22, var2050=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2587=$r5, var286=$i2, var3378=$i23, var720=$i24, var32=$r6, var1251=$i34, var113=$i17, var2322=$i18, var1054=$r8, var3620=$r9, var3976=$i35, var608=$i15, var3723=$i16, var2973=$r10, var3030=$i36, var22=$i13, var1830=$i14, var3003=$z2, var3125=$s37, var3924=$i6, var176=$i7, var3743=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2428=$r12, var3632=$i3, var3358=$i8, var3413=$i9, var703=$r13, var331=$i4, var2371=$i10, var2123=$i11, var2159=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3103=$r14, var383=$i5, var986=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3173, r0=var860, $r1=var2201, null_type=var2543, $r2=var3921, $i31=var310, $i27=var752, $i28=var1144, $r3=var2696, $i0=var667, $i29=var3790, $i30=var1918, $z0=var3850, $s32=var2749, $i25=var2619, $i26=var121, $z1=var1222, $s33=var2071, $i19=var521, $i20=var3120, $r4=var1835, $i1=var3303, $i21=var486, $i22=var2419, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2050, $r5=var2587, $i2=var286, $i23=var3378, $i24=var720, $r6=var32, $i34=var1251, $i17=var113, $i18=var2322, $r8=var1054, $r9=var3620, $i35=var3976, $i15=var608, $i16=var3723, $r10=var2973, $i36=var3030, $i13=var22, $i14=var1830, $z2=var3003, $s37=var3125, $i6=var3924, $i7=var176, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3743, $r12=var2428, $i3=var3632, $i8=var3358, $i9=var3413, $r13=var703, $i4=var331, $i10=var2371, $i11=var2123, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2159, $r14=var3103, $i5=var383, $i12=var986}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15