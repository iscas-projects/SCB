(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1191 0)
(declare-sort var308 0)
(declare-sort var2231 0)
(declare-sort var269 0)
(declare-sort var408 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1191) String)
(declare-fun getKey/1126038692 (var1191) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var1191) Bool)
(declare-fun isExternal/1126038692 (var1191) Bool)
(declare-fun getId/1126038692 (var1191) String)
(declare-fun getParts/1126038692 (var1191) var2231)
(declare-fun hashCode/1337417431 (var2231) Int)
(declare-fun getAlternateId/1126038692 (var1191) String)
(declare-fun getDesc/1126038692 (var1191) String)
(declare-fun getMeaning/1126038692 (var1191) String)
(declare-fun isHidden/1126038692 (var1191) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1191) var269)
(declare-fun hashCode/-1247371579 (var269) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1191) var269)
(declare-fun jsPlaceholderNames/1126038692 (var1191) var408)
(declare-fun hashCode/1818408063 (var408) Int)
(declare-const null-var1191 var1191)
(declare-const null-String String)
(declare-const var2436 var1191) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2436 null-var1191)))
(define-const var1088 String (getSourceName/1126038692 var2436)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var1088 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var3021 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var95 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3021)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var190 Int (* var95 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var3165 String (getKey/1126038692 var2436)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2923 Int (hashCode/-467973558 var3165)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var913 Int (bv2nat (bvxor ((_ int2bv 64) var190) ((_ int2bv 64) var2923)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1879 Int (* var913 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var926 Bool (isAnonymous/1126038692 var2436)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var926 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1361 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var2557 Int (bv2nat (bvxor ((_ int2bv 64) var1879) ((_ int2bv 64) var1361)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3512 Int (* var2557 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2635 Bool (isExternal/1126038692 var2436)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var2635 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var214 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var2042 Int (bv2nat (bvxor ((_ int2bv 64) var3512) ((_ int2bv 64) var214)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2024 Int (* var2042 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var3734 String (getId/1126038692 var2436)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3890 Int (hashCode/-467973558 var3734)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3917 Int (bv2nat (bvxor ((_ int2bv 64) var2024) ((_ int2bv 64) var3890)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var3225 Int (* var3917 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1760 var2231 (getParts/1126038692 var2436)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1674 Int (hashCode/1337417431 var1760)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var976 Int (bv2nat (bvxor ((_ int2bv 64) var3225) ((_ int2bv 64) var1674)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var397 Int (* var976 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1686 String (getAlternateId/1126038692 var2436)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var1686 null-String))) ; Cond: $r6 != null 
(define-const var1198 String (getAlternateId/1126038692 var2436)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var3087 Int (hashCode/-467973558 var1198)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2628 Int (bv2nat (bvxor ((_ int2bv 64) var397) ((_ int2bv 64) var3087)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2277 Int (* var2628 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var3776 String (getDesc/1126038692 var2436)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var3776 null-String))) ; Cond: $r8 != null 
(define-const var2618 String (getDesc/1126038692 var2436)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var3420 Int (hashCode/-467973558 var2618)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2428 Int (bv2nat (bvxor ((_ int2bv 64) var2277) ((_ int2bv 64) var3420)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1051 Int (* var2428 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2285 String (getMeaning/1126038692 var2436)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var2285 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var2782 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var2754 Int (bv2nat (bvxor ((_ int2bv 64) var1051) ((_ int2bv 64) var2782)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3257 Int (* var2754 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3809 Bool (isHidden/1126038692 var2436)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var3809 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2002 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var1189 Int (bv2nat (bvxor ((_ int2bv 64) var3257) ((_ int2bv 64) var2002)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1277 Int (* var1189 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3823 var269 (getPlaceholderNameToExampleMap/1126038692 var2436)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3573 Int (hashCode/-1247371579 var3823)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3991 Int (bv2nat (bvxor ((_ int2bv 64) var1277) ((_ int2bv 64) var3573)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var508 Int (* var3991 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3687 var269 (getPlaceholderNameToOriginalCodeMap/1126038692 var2436)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var2852 Int (hashCode/-1247371579 var3687)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3764 Int (bv2nat (bvxor ((_ int2bv 64) var508) ((_ int2bv 64) var2852)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var644 Int (* var3764 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3876 var408 (jsPlaceholderNames/1126038692 var2436)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2254 Int (hashCode/1818408063 var3876)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var2581 Int (bv2nat (bvxor ((_ int2bv 64) var644) ((_ int2bv 64) var2254)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1191=com.google.javascript.jscomp.AutoValue_JsMessage, var2436=r0, var1088=$r1, var308=null_type, var3021=$i31, var95=$i27, var190=$i28, var3165=$r3, var2923=$i0, var913=$i29, var1879=$i30, var926=$z0, var1361=$s32, var2557=$i25, var3512=$i26, var2635=$z1, var214=$s33, var2042=$i19, var2024=$i20, var3734=$r4, var3890=$i1, var3917=$i21, var3225=$i22, var2231=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1760=$r5, var1674=$i2, var976=$i23, var397=$i24, var1686=$r6, var1198=$r7, var3087=$i34, var2628=$i17, var2277=$i18, var3776=$r8, var2618=$r9, var3420=$i35, var2428=$i15, var1051=$i16, var2285=$r10, var2782=$i36, var2754=$i13, var3257=$i14, var3809=$z2, var2002=$s37, var1189=$i6, var1277=$i7, var269=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3823=$r12, var3573=$i3, var3991=$i8, var508=$i9, var3687=$r13, var2852=$i4, var3764=$i10, var644=$i11, var408=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3876=$r14, var2254=$i5, var2581=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1191, r0=var2436, $r1=var1088, null_type=var308, $i31=var3021, $i27=var95, $i28=var190, $r3=var3165, $i0=var2923, $i29=var913, $i30=var1879, $z0=var926, $s32=var1361, $i25=var2557, $i26=var3512, $z1=var2635, $s33=var214, $i19=var2042, $i20=var2024, $r4=var3734, $i1=var3890, $i21=var3917, $i22=var3225, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2231, $r5=var1760, $i2=var1674, $i23=var976, $i24=var397, $r6=var1686, $r7=var1198, $i34=var3087, $i17=var2628, $i18=var2277, $r8=var3776, $r9=var2618, $i35=var3420, $i15=var2428, $i16=var1051, $r10=var2285, $i36=var2782, $i13=var2754, $i14=var3257, $z2=var3809, $s37=var2002, $i6=var1189, $i7=var1277, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var269, $r12=var3823, $i3=var3573, $i8=var3991, $i9=var508, $r13=var3687, $i4=var2852, $i10=var3764, $i11=var644, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var408, $r14=var3876, $i5=var2254, $i12=var2581}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15