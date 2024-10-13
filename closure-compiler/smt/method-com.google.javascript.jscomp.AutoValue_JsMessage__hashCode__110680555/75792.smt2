(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3894 0)
(declare-sort var3044 0)
(declare-sort var219 0)
(declare-sort var922 0)
(declare-sort var1555 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3894) String)
(declare-fun getKey/1126038692 (var3894) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var3894) Bool)
(declare-fun isExternal/1126038692 (var3894) Bool)
(declare-fun getId/1126038692 (var3894) String)
(declare-fun getParts/1126038692 (var3894) var219)
(declare-fun hashCode/1337417431 (var219) Int)
(declare-fun getAlternateId/1126038692 (var3894) String)
(declare-fun getDesc/1126038692 (var3894) String)
(declare-fun getMeaning/1126038692 (var3894) String)
(declare-fun isHidden/1126038692 (var3894) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3894) var922)
(declare-fun hashCode/-1247371579 (var922) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3894) var922)
(declare-fun jsPlaceholderNames/1126038692 (var3894) var1555)
(declare-fun hashCode/1818408063 (var1555) Int)
(declare-const null-var3894 var3894)
(declare-const null-String String)
(declare-const var1392 var3894) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1392 null-var3894)))
(define-const var1095 String (getSourceName/1126038692 var1392)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var1095 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var1325 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var567 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1325)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1518 Int (* var567 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2184 String (getKey/1126038692 var1392)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var75 Int (hashCode/-467973558 var2184)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1664 Int (bv2nat (bvxor ((_ int2bv 64) var1518) ((_ int2bv 64) var75)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3483 Int (* var1664 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1672 Bool (isAnonymous/1126038692 var1392)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var1672 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3702 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var1905 Int (bv2nat (bvxor ((_ int2bv 64) var3483) ((_ int2bv 64) var3702)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var2621 Int (* var1905 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var1724 Bool (isExternal/1126038692 var1392)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var1724 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1547 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var683 Int (bv2nat (bvxor ((_ int2bv 64) var2621) ((_ int2bv 64) var1547)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var3165 Int (* var683 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1728 String (getId/1126038692 var1392)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var2100 Int (hashCode/-467973558 var1728)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2378 Int (bv2nat (bvxor ((_ int2bv 64) var3165) ((_ int2bv 64) var2100)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2315 Int (* var2378 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1580 var219 (getParts/1126038692 var1392)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var322 Int (hashCode/1337417431 var1580)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var463 Int (bv2nat (bvxor ((_ int2bv 64) var2315) ((_ int2bv 64) var322)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1047 Int (* var463 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var3379 String (getAlternateId/1126038692 var1392)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var3379 null-String))) ; Cond: $r6 != null 
(define-const var2608 String (getAlternateId/1126038692 var1392)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var3623 Int (hashCode/-467973558 var2608)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1599 Int (bv2nat (bvxor ((_ int2bv 64) var1047) ((_ int2bv 64) var3623)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var980 Int (* var1599 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var2917 String (getDesc/1126038692 var1392)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var2917 null-String))) ; Cond: $r8 != null 
(define-const var3740 String (getDesc/1126038692 var1392)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var2704 Int (hashCode/-467973558 var3740)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var989 Int (bv2nat (bvxor ((_ int2bv 64) var980) ((_ int2bv 64) var2704)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var252 Int (* var989 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2179 String (getMeaning/1126038692 var1392)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var2179 null-String))) ; Cond: $r10 != null 
(define-const var3152 String (getMeaning/1126038692 var1392)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var1283 Int (hashCode/-467973558 var3152)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1409 Int (bv2nat (bvxor ((_ int2bv 64) var252) ((_ int2bv 64) var1283)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3169 Int (* var1409 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3923 Bool (isHidden/1126038692 var1392)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var3923 1 0) 0)) ; Cond: $z2 == 0 
(define-const var830 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var2871 Int (bv2nat (bvxor ((_ int2bv 64) var3169) ((_ int2bv 64) var830)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var3733 Int (* var2871 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2766 var922 (getPlaceholderNameToExampleMap/1126038692 var1392)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1087 Int (hashCode/-1247371579 var2766)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var52 Int (bv2nat (bvxor ((_ int2bv 64) var3733) ((_ int2bv 64) var1087)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3569 Int (* var52 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var1080 var922 (getPlaceholderNameToOriginalCodeMap/1126038692 var1392)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1594 Int (hashCode/-1247371579 var1080)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var205 Int (bv2nat (bvxor ((_ int2bv 64) var3569) ((_ int2bv 64) var1594)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var2188 Int (* var205 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2738 var1555 (jsPlaceholderNames/1126038692 var1392)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1986 Int (hashCode/1818408063 var2738)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var375 Int (bv2nat (bvxor ((_ int2bv 64) var2188) ((_ int2bv 64) var1986)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3894=com.google.javascript.jscomp.AutoValue_JsMessage, var1392=r0, var1095=$r1, var3044=null_type, var1325=$i31, var567=$i27, var1518=$i28, var2184=$r3, var75=$i0, var1664=$i29, var3483=$i30, var1672=$z0, var3702=$s32, var1905=$i25, var2621=$i26, var1724=$z1, var1547=$s33, var683=$i19, var3165=$i20, var1728=$r4, var2100=$i1, var2378=$i21, var2315=$i22, var219=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1580=$r5, var322=$i2, var463=$i23, var1047=$i24, var3379=$r6, var2608=$r7, var3623=$i34, var1599=$i17, var980=$i18, var2917=$r8, var3740=$r9, var2704=$i35, var989=$i15, var252=$i16, var2179=$r10, var3152=$r11, var1283=$i36, var1409=$i13, var3169=$i14, var3923=$z2, var830=$s37, var2871=$i6, var3733=$i7, var922=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2766=$r12, var1087=$i3, var52=$i8, var3569=$i9, var1080=$r13, var1594=$i4, var205=$i10, var2188=$i11, var1555=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2738=$r14, var1986=$i5, var375=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3894, r0=var1392, $r1=var1095, null_type=var3044, $i31=var1325, $i27=var567, $i28=var1518, $r3=var2184, $i0=var75, $i29=var1664, $i30=var3483, $z0=var1672, $s32=var3702, $i25=var1905, $i26=var2621, $z1=var1724, $s33=var1547, $i19=var683, $i20=var3165, $r4=var1728, $i1=var2100, $i21=var2378, $i22=var2315, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var219, $r5=var1580, $i2=var322, $i23=var463, $i24=var1047, $r6=var3379, $r7=var2608, $i34=var3623, $i17=var1599, $i18=var980, $r8=var2917, $r9=var3740, $i35=var2704, $i15=var989, $i16=var252, $r10=var2179, $r11=var3152, $i36=var1283, $i13=var1409, $i14=var3169, $z2=var3923, $s37=var830, $i6=var2871, $i7=var3733, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var922, $r12=var2766, $i3=var1087, $i8=var52, $i9=var3569, $r13=var1080, $i4=var1594, $i10=var205, $i11=var2188, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1555, $r14=var2738, $i5=var1986, $i12=var375}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15