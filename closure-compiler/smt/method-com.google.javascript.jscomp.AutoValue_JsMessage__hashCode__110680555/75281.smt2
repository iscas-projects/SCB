(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3375 0)
(declare-sort var358 0)
(declare-sort var2179 0)
(declare-sort var1090 0)
(declare-sort var1553 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3375) String)
(declare-fun getKey/1126038692 (var3375) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var3375) Bool)
(declare-fun isExternal/1126038692 (var3375) Bool)
(declare-fun getId/1126038692 (var3375) String)
(declare-fun getParts/1126038692 (var3375) var2179)
(declare-fun hashCode/1337417431 (var2179) Int)
(declare-fun getAlternateId/1126038692 (var3375) String)
(declare-fun getDesc/1126038692 (var3375) String)
(declare-fun getMeaning/1126038692 (var3375) String)
(declare-fun isHidden/1126038692 (var3375) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3375) var1090)
(declare-fun hashCode/-1247371579 (var1090) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3375) var1090)
(declare-fun jsPlaceholderNames/1126038692 (var3375) var1553)
(declare-fun hashCode/1818408063 (var1553) Int)
(declare-const null-var3375 var3375)
(declare-const null-String String)
(declare-const var949 var3375) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var949 null-var3375)))
(define-const var204 String (getSourceName/1126038692 var949)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var204 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var1682 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var3837 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1682)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var2988 Int (* var3837 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var3155 String (getKey/1126038692 var949)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var3750 Int (hashCode/-467973558 var3155)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1470 Int (bv2nat (bvxor ((_ int2bv 64) var2988) ((_ int2bv 64) var3750)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var2344 Int (* var1470 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1098 Bool (isAnonymous/1126038692 var949)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var1098 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var994 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var106 Int (bv2nat (bvxor ((_ int2bv 64) var2344) ((_ int2bv 64) var994)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1546 Int (* var106 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var702 Bool (isExternal/1126038692 var949)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var702 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3118 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var1061 Int (bv2nat (bvxor ((_ int2bv 64) var1546) ((_ int2bv 64) var3118)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var3621 Int (* var1061 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var635 String (getId/1126038692 var949)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var369 Int (hashCode/-467973558 var635)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1448 Int (bv2nat (bvxor ((_ int2bv 64) var3621) ((_ int2bv 64) var369)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var491 Int (* var1448 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var3672 var2179 (getParts/1126038692 var949)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var2430 Int (hashCode/1337417431 var3672)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var986 Int (bv2nat (bvxor ((_ int2bv 64) var491) ((_ int2bv 64) var2430)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3444 Int (* var986 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1322 String (getAlternateId/1126038692 var949)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var1322 null-String))) ; Cond: $r6 != null 
(define-const var1167 String (getAlternateId/1126038692 var949)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var1313 Int (hashCode/-467973558 var1167)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2080 Int (bv2nat (bvxor ((_ int2bv 64) var3444) ((_ int2bv 64) var1313)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var104 Int (* var2080 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var325 String (getDesc/1126038692 var949)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var325 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var1971 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var2481 Int (bv2nat (bvxor ((_ int2bv 64) var104) ((_ int2bv 64) var1971)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var3121 Int (* var2481 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2776 String (getMeaning/1126038692 var949)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var2776 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var458 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var813 Int (bv2nat (bvxor ((_ int2bv 64) var3121) ((_ int2bv 64) var458)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var114 Int (* var813 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var1048 Bool (isHidden/1126038692 var949)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var1048 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3756 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var645 Int (bv2nat (bvxor ((_ int2bv 64) var114) ((_ int2bv 64) var3756)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var684 Int (* var645 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var210 var1090 (getPlaceholderNameToExampleMap/1126038692 var949)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1606 Int (hashCode/-1247371579 var210)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2557 Int (bv2nat (bvxor ((_ int2bv 64) var684) ((_ int2bv 64) var1606)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2126 Int (* var2557 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3279 var1090 (getPlaceholderNameToOriginalCodeMap/1126038692 var949)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3177 Int (hashCode/-1247371579 var3279)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3963 Int (bv2nat (bvxor ((_ int2bv 64) var2126) ((_ int2bv 64) var3177)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var593 Int (* var3963 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3590 var1553 (jsPlaceholderNames/1126038692 var949)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1142 Int (hashCode/1818408063 var3590)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var507 Int (bv2nat (bvxor ((_ int2bv 64) var593) ((_ int2bv 64) var1142)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3375=com.google.javascript.jscomp.AutoValue_JsMessage, var949=r0, var204=$r1, var358=null_type, var1682=$i31, var3837=$i27, var2988=$i28, var3155=$r3, var3750=$i0, var1470=$i29, var2344=$i30, var1098=$z0, var994=$s32, var106=$i25, var1546=$i26, var702=$z1, var3118=$s33, var1061=$i19, var3621=$i20, var635=$r4, var369=$i1, var1448=$i21, var491=$i22, var2179=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3672=$r5, var2430=$i2, var986=$i23, var3444=$i24, var1322=$r6, var1167=$r7, var1313=$i34, var2080=$i17, var104=$i18, var325=$r8, var1971=$i35, var2481=$i15, var3121=$i16, var2776=$r10, var458=$i36, var813=$i13, var114=$i14, var1048=$z2, var3756=$s37, var645=$i6, var684=$i7, var1090=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var210=$r12, var1606=$i3, var2557=$i8, var2126=$i9, var3279=$r13, var3177=$i4, var3963=$i10, var593=$i11, var1553=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3590=$r14, var1142=$i5, var507=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3375, r0=var949, $r1=var204, null_type=var358, $i31=var1682, $i27=var3837, $i28=var2988, $r3=var3155, $i0=var3750, $i29=var1470, $i30=var2344, $z0=var1098, $s32=var994, $i25=var106, $i26=var1546, $z1=var702, $s33=var3118, $i19=var1061, $i20=var3621, $r4=var635, $i1=var369, $i21=var1448, $i22=var491, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2179, $r5=var3672, $i2=var2430, $i23=var986, $i24=var3444, $r6=var1322, $r7=var1167, $i34=var1313, $i17=var2080, $i18=var104, $r8=var325, $i35=var1971, $i15=var2481, $i16=var3121, $r10=var2776, $i36=var458, $i13=var813, $i14=var114, $z2=var1048, $s37=var3756, $i6=var645, $i7=var684, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1090, $r12=var210, $i3=var1606, $i8=var2557, $i9=var2126, $r13=var3279, $i4=var3177, $i10=var3963, $i11=var593, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1553, $r14=var3590, $i5=var1142, $i12=var507}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15