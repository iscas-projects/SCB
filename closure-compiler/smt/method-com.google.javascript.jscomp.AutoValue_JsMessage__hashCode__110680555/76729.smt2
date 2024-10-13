(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var731 0)
(declare-sort var1240 0)
(declare-sort var845 0)
(declare-sort var2885 0)
(declare-sort var3371 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var731) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var731) String)
(declare-fun isAnonymous/1126038692 (var731) Bool)
(declare-fun isExternal/1126038692 (var731) Bool)
(declare-fun getId/1126038692 (var731) String)
(declare-fun getParts/1126038692 (var731) var845)
(declare-fun hashCode/1337417431 (var845) Int)
(declare-fun getAlternateId/1126038692 (var731) String)
(declare-fun getDesc/1126038692 (var731) String)
(declare-fun getMeaning/1126038692 (var731) String)
(declare-fun isHidden/1126038692 (var731) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var731) var2885)
(declare-fun hashCode/-1247371579 (var2885) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var731) var2885)
(declare-fun jsPlaceholderNames/1126038692 (var731) var3371)
(declare-fun hashCode/1818408063 (var3371) Int)
(declare-const null-var731 var731)
(declare-const null-String String)
(declare-const var994 var731) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var994 null-var731)))
(define-const var1528 String (getSourceName/1126038692 var994)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var1528 null-String))) ; Cond: $r1 != null 
(define-const var2277 String (getSourceName/1126038692 var994)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var639 Int (hashCode/-467973558 var2277)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1941 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var639)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var286 Int (* var1941 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1384 String (getKey/1126038692 var994)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var915 Int (hashCode/-467973558 var1384)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1963 Int (bv2nat (bvxor ((_ int2bv 64) var286) ((_ int2bv 64) var915)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1350 Int (* var1963 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var927 Bool (isAnonymous/1126038692 var994)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var927 1 0) 0)) ; Cond: $z0 == 0 
(define-const var869 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var2489 Int (bv2nat (bvxor ((_ int2bv 64) var1350) ((_ int2bv 64) var869)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1839 Int (* var2489 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2358 Bool (isExternal/1126038692 var994)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var2358 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var437 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var3506 Int (bv2nat (bvxor ((_ int2bv 64) var1839) ((_ int2bv 64) var437)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1015 Int (* var3506 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var951 String (getId/1126038692 var994)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var381 Int (hashCode/-467973558 var951)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2289 Int (bv2nat (bvxor ((_ int2bv 64) var1015) ((_ int2bv 64) var381)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1532 Int (* var2289 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1055 var845 (getParts/1126038692 var994)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1514 Int (hashCode/1337417431 var1055)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2034 Int (bv2nat (bvxor ((_ int2bv 64) var1532) ((_ int2bv 64) var1514)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1107 Int (* var2034 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var2080 String (getAlternateId/1126038692 var994)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var2080 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var267 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var1521 Int (bv2nat (bvxor ((_ int2bv 64) var1107) ((_ int2bv 64) var267)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3358 Int (* var1521 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var3261 String (getDesc/1126038692 var994)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var3261 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var322 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var953 Int (bv2nat (bvxor ((_ int2bv 64) var3358) ((_ int2bv 64) var322)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var3932 Int (* var953 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3418 String (getMeaning/1126038692 var994)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var3418 null-String))) ; Cond: $r10 != null 
(define-const var2559 String (getMeaning/1126038692 var994)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var498 Int (hashCode/-467973558 var2559)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3132 Int (bv2nat (bvxor ((_ int2bv 64) var3932) ((_ int2bv 64) var498)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var274 Int (* var3132 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2024 Bool (isHidden/1126038692 var994)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var2024 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3837 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var2795 Int (bv2nat (bvxor ((_ int2bv 64) var274) ((_ int2bv 64) var3837)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var3144 Int (* var2795 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2133 var2885 (getPlaceholderNameToExampleMap/1126038692 var994)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3246 Int (hashCode/-1247371579 var2133)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var887 Int (bv2nat (bvxor ((_ int2bv 64) var3144) ((_ int2bv 64) var3246)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2416 Int (* var887 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3513 var2885 (getPlaceholderNameToOriginalCodeMap/1126038692 var994)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3619 Int (hashCode/-1247371579 var3513)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var439 Int (bv2nat (bvxor ((_ int2bv 64) var2416) ((_ int2bv 64) var3619)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var154 Int (* var439 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3608 var3371 (jsPlaceholderNames/1126038692 var994)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2204 Int (hashCode/1818408063 var3608)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var2488 Int (bv2nat (bvxor ((_ int2bv 64) var154) ((_ int2bv 64) var2204)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var731=com.google.javascript.jscomp.AutoValue_JsMessage, var994=r0, var1528=$r1, var1240=null_type, var2277=$r2, var639=$i31, var1941=$i27, var286=$i28, var1384=$r3, var915=$i0, var1963=$i29, var1350=$i30, var927=$z0, var869=$s32, var2489=$i25, var1839=$i26, var2358=$z1, var437=$s33, var3506=$i19, var1015=$i20, var951=$r4, var381=$i1, var2289=$i21, var1532=$i22, var845=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1055=$r5, var1514=$i2, var2034=$i23, var1107=$i24, var2080=$r6, var267=$i34, var1521=$i17, var3358=$i18, var3261=$r8, var322=$i35, var953=$i15, var3932=$i16, var3418=$r10, var2559=$r11, var498=$i36, var3132=$i13, var274=$i14, var2024=$z2, var3837=$s37, var2795=$i6, var3144=$i7, var2885=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2133=$r12, var3246=$i3, var887=$i8, var2416=$i9, var3513=$r13, var3619=$i4, var439=$i10, var154=$i11, var3371=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3608=$r14, var2204=$i5, var2488=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var731, r0=var994, $r1=var1528, null_type=var1240, $r2=var2277, $i31=var639, $i27=var1941, $i28=var286, $r3=var1384, $i0=var915, $i29=var1963, $i30=var1350, $z0=var927, $s32=var869, $i25=var2489, $i26=var1839, $z1=var2358, $s33=var437, $i19=var3506, $i20=var1015, $r4=var951, $i1=var381, $i21=var2289, $i22=var1532, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var845, $r5=var1055, $i2=var1514, $i23=var2034, $i24=var1107, $r6=var2080, $i34=var267, $i17=var1521, $i18=var3358, $r8=var3261, $i35=var322, $i15=var953, $i16=var3932, $r10=var3418, $r11=var2559, $i36=var498, $i13=var3132, $i14=var274, $z2=var2024, $s37=var3837, $i6=var2795, $i7=var3144, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2885, $r12=var2133, $i3=var3246, $i8=var887, $i9=var2416, $r13=var3513, $i4=var3619, $i10=var439, $i11=var154, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3371, $r14=var3608, $i5=var2204, $i12=var2488}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15