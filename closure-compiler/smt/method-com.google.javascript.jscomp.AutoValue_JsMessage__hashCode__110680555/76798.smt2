(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2391 0)
(declare-sort var3391 0)
(declare-sort var3863 0)
(declare-sort var1640 0)
(declare-sort var3656 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var2391) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var2391) String)
(declare-fun isAnonymous/1126038692 (var2391) Bool)
(declare-fun isExternal/1126038692 (var2391) Bool)
(declare-fun getId/1126038692 (var2391) String)
(declare-fun getParts/1126038692 (var2391) var3863)
(declare-fun hashCode/1337417431 (var3863) Int)
(declare-fun getAlternateId/1126038692 (var2391) String)
(declare-fun getDesc/1126038692 (var2391) String)
(declare-fun getMeaning/1126038692 (var2391) String)
(declare-fun isHidden/1126038692 (var2391) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var2391) var1640)
(declare-fun hashCode/-1247371579 (var1640) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var2391) var1640)
(declare-fun jsPlaceholderNames/1126038692 (var2391) var3656)
(declare-fun hashCode/1818408063 (var3656) Int)
(declare-const null-var2391 var2391)
(declare-const null-String String)
(declare-const var2119 var2391) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2119 null-var2391)))
(define-const var619 String (getSourceName/1126038692 var2119)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var619 null-String))) ; Cond: $r1 != null 
(define-const var2169 String (getSourceName/1126038692 var2119)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var3111 Int (hashCode/-467973558 var2169)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1262 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3111)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var316 Int (* var1262 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1368 String (getKey/1126038692 var2119)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2518 Int (hashCode/-467973558 var1368)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2305 Int (bv2nat (bvxor ((_ int2bv 64) var316) ((_ int2bv 64) var2518)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1330 Int (* var2305 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var3253 Bool (isAnonymous/1126038692 var2119)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var3253 1 0) 0)) ; Cond: $z0 == 0 
(define-const var985 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var1927 Int (bv2nat (bvxor ((_ int2bv 64) var1330) ((_ int2bv 64) var985)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var121 Int (* var1927 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2538 Bool (isExternal/1126038692 var2119)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var2538 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3251 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var369 Int (bv2nat (bvxor ((_ int2bv 64) var121) ((_ int2bv 64) var3251)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2106 Int (* var369 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1678 String (getId/1126038692 var2119)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var2091 Int (hashCode/-467973558 var1678)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var409 Int (bv2nat (bvxor ((_ int2bv 64) var2106) ((_ int2bv 64) var2091)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var315 Int (* var409 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var593 var3863 (getParts/1126038692 var2119)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var3352 Int (hashCode/1337417431 var593)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var632 Int (bv2nat (bvxor ((_ int2bv 64) var315) ((_ int2bv 64) var3352)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var2078 Int (* var632 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var2825 String (getAlternateId/1126038692 var2119)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var2825 null-String))) ; Cond: $r6 != null 
(define-const var3430 String (getAlternateId/1126038692 var2119)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var107 Int (hashCode/-467973558 var3430)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2978 Int (bv2nat (bvxor ((_ int2bv 64) var2078) ((_ int2bv 64) var107)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3762 Int (* var2978 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var3967 String (getDesc/1126038692 var2119)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var3967 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var2377 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var2813 Int (bv2nat (bvxor ((_ int2bv 64) var3762) ((_ int2bv 64) var2377)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2239 Int (* var2813 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var244 String (getMeaning/1126038692 var2119)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var244 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var716 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var2297 Int (bv2nat (bvxor ((_ int2bv 64) var2239) ((_ int2bv 64) var716)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var1730 Int (* var2297 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var663 Bool (isHidden/1126038692 var2119)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var663 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3847 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var37 Int (bv2nat (bvxor ((_ int2bv 64) var1730) ((_ int2bv 64) var3847)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var910 Int (* var37 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2322 var1640 (getPlaceholderNameToExampleMap/1126038692 var2119)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var31 Int (hashCode/-1247371579 var2322)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1264 Int (bv2nat (bvxor ((_ int2bv 64) var910) ((_ int2bv 64) var31)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var610 Int (* var1264 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var2202 var1640 (getPlaceholderNameToOriginalCodeMap/1126038692 var2119)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3759 Int (hashCode/-1247371579 var2202)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var390 Int (bv2nat (bvxor ((_ int2bv 64) var610) ((_ int2bv 64) var3759)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var1561 Int (* var390 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3499 var3656 (jsPlaceholderNames/1126038692 var2119)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1186 Int (hashCode/1818408063 var3499)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var2743 Int (bv2nat (bvxor ((_ int2bv 64) var1561) ((_ int2bv 64) var1186)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var2391=com.google.javascript.jscomp.AutoValue_JsMessage, var2119=r0, var619=$r1, var3391=null_type, var2169=$r2, var3111=$i31, var1262=$i27, var316=$i28, var1368=$r3, var2518=$i0, var2305=$i29, var1330=$i30, var3253=$z0, var985=$s32, var1927=$i25, var121=$i26, var2538=$z1, var3251=$s33, var369=$i19, var2106=$i20, var1678=$r4, var2091=$i1, var409=$i21, var315=$i22, var3863=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var593=$r5, var3352=$i2, var632=$i23, var2078=$i24, var2825=$r6, var3430=$r7, var107=$i34, var2978=$i17, var3762=$i18, var3967=$r8, var2377=$i35, var2813=$i15, var2239=$i16, var244=$r10, var716=$i36, var2297=$i13, var1730=$i14, var663=$z2, var3847=$s37, var37=$i6, var910=$i7, var1640=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2322=$r12, var31=$i3, var1264=$i8, var610=$i9, var2202=$r13, var3759=$i4, var390=$i10, var1561=$i11, var3656=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3499=$r14, var1186=$i5, var2743=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var2391, r0=var2119, $r1=var619, null_type=var3391, $r2=var2169, $i31=var3111, $i27=var1262, $i28=var316, $r3=var1368, $i0=var2518, $i29=var2305, $i30=var1330, $z0=var3253, $s32=var985, $i25=var1927, $i26=var121, $z1=var2538, $s33=var3251, $i19=var369, $i20=var2106, $r4=var1678, $i1=var2091, $i21=var409, $i22=var315, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3863, $r5=var593, $i2=var3352, $i23=var632, $i24=var2078, $r6=var2825, $r7=var3430, $i34=var107, $i17=var2978, $i18=var3762, $r8=var3967, $i35=var2377, $i15=var2813, $i16=var2239, $r10=var244, $i36=var716, $i13=var2297, $i14=var1730, $z2=var663, $s37=var3847, $i6=var37, $i7=var910, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1640, $r12=var2322, $i3=var31, $i8=var1264, $i9=var610, $r13=var2202, $i4=var3759, $i10=var390, $i11=var1561, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3656, $r14=var3499, $i5=var1186, $i12=var2743}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15