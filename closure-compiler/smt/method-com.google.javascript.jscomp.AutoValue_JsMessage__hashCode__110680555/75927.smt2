(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1922 0)
(declare-sort var2427 0)
(declare-sort var2801 0)
(declare-sort var1309 0)
(declare-sort var1082 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1922) String)
(declare-fun getKey/1126038692 (var1922) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var1922) Bool)
(declare-fun isExternal/1126038692 (var1922) Bool)
(declare-fun getId/1126038692 (var1922) String)
(declare-fun getParts/1126038692 (var1922) var2801)
(declare-fun hashCode/1337417431 (var2801) Int)
(declare-fun getAlternateId/1126038692 (var1922) String)
(declare-fun getDesc/1126038692 (var1922) String)
(declare-fun getMeaning/1126038692 (var1922) String)
(declare-fun isHidden/1126038692 (var1922) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1922) var1309)
(declare-fun hashCode/-1247371579 (var1309) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1922) var1309)
(declare-fun jsPlaceholderNames/1126038692 (var1922) var1082)
(declare-fun hashCode/1818408063 (var1082) Int)
(declare-const null-var1922 var1922)
(declare-const null-String String)
(declare-const var501 var1922) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var501 null-var1922)))
(define-const var448 String (getSourceName/1126038692 var501)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var448 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var1297 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var1949 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1297)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var2698 Int (* var1949 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var406 String (getKey/1126038692 var501)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1568 Int (hashCode/-467973558 var406)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1615 Int (bv2nat (bvxor ((_ int2bv 64) var2698) ((_ int2bv 64) var1568)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1071 Int (* var1615 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2180 Bool (isAnonymous/1126038692 var501)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var2180 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1011 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var1878 Int (bv2nat (bvxor ((_ int2bv 64) var1071) ((_ int2bv 64) var1011)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3745 Int (* var1878 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2041 Bool (isExternal/1126038692 var501)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var2041 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1257 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var1592 Int (bv2nat (bvxor ((_ int2bv 64) var3745) ((_ int2bv 64) var1257)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2962 Int (* var1592 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var3847 String (getId/1126038692 var501)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var688 Int (hashCode/-467973558 var3847)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2826 Int (bv2nat (bvxor ((_ int2bv 64) var2962) ((_ int2bv 64) var688)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1930 Int (* var2826 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2883 var2801 (getParts/1126038692 var501)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var590 Int (hashCode/1337417431 var2883)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2008 Int (bv2nat (bvxor ((_ int2bv 64) var1930) ((_ int2bv 64) var590)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1099 Int (* var2008 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var3009 String (getAlternateId/1126038692 var501)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var3009 null-String))) ; Cond: $r6 != null 
(define-const var3381 String (getAlternateId/1126038692 var501)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var2296 Int (hashCode/-467973558 var3381)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2438 Int (bv2nat (bvxor ((_ int2bv 64) var1099) ((_ int2bv 64) var2296)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var519 Int (* var2438 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var1013 String (getDesc/1126038692 var501)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var1013 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var3774 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var112 Int (bv2nat (bvxor ((_ int2bv 64) var519) ((_ int2bv 64) var3774)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2120 Int (* var112 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3963 String (getMeaning/1126038692 var501)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var3963 null-String))) ; Cond: $r10 != null 
(define-const var2293 String (getMeaning/1126038692 var501)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var213 Int (hashCode/-467973558 var2293)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var683 Int (bv2nat (bvxor ((_ int2bv 64) var2120) ((_ int2bv 64) var213)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var1332 Int (* var683 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3017 Bool (isHidden/1126038692 var501)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var3017 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1390 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var3652 Int (bv2nat (bvxor ((_ int2bv 64) var1332) ((_ int2bv 64) var1390)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var2524 Int (* var3652 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var1710 var1309 (getPlaceholderNameToExampleMap/1126038692 var501)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var2419 Int (hashCode/-1247371579 var1710)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var886 Int (bv2nat (bvxor ((_ int2bv 64) var2524) ((_ int2bv 64) var2419)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3613 Int (* var886 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var1341 var1309 (getPlaceholderNameToOriginalCodeMap/1126038692 var501)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var2311 Int (hashCode/-1247371579 var1341)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1799 Int (bv2nat (bvxor ((_ int2bv 64) var3613) ((_ int2bv 64) var2311)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var2507 Int (* var1799 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2969 var1082 (jsPlaceholderNames/1126038692 var501)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1069 Int (hashCode/1818408063 var2969)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var934 Int (bv2nat (bvxor ((_ int2bv 64) var2507) ((_ int2bv 64) var1069)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1922=com.google.javascript.jscomp.AutoValue_JsMessage, var501=r0, var448=$r1, var2427=null_type, var1297=$i31, var1949=$i27, var2698=$i28, var406=$r3, var1568=$i0, var1615=$i29, var1071=$i30, var2180=$z0, var1011=$s32, var1878=$i25, var3745=$i26, var2041=$z1, var1257=$s33, var1592=$i19, var2962=$i20, var3847=$r4, var688=$i1, var2826=$i21, var1930=$i22, var2801=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2883=$r5, var590=$i2, var2008=$i23, var1099=$i24, var3009=$r6, var3381=$r7, var2296=$i34, var2438=$i17, var519=$i18, var1013=$r8, var3774=$i35, var112=$i15, var2120=$i16, var3963=$r10, var2293=$r11, var213=$i36, var683=$i13, var1332=$i14, var3017=$z2, var1390=$s37, var3652=$i6, var2524=$i7, var1309=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1710=$r12, var2419=$i3, var886=$i8, var3613=$i9, var1341=$r13, var2311=$i4, var1799=$i10, var2507=$i11, var1082=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2969=$r14, var1069=$i5, var934=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1922, r0=var501, $r1=var448, null_type=var2427, $i31=var1297, $i27=var1949, $i28=var2698, $r3=var406, $i0=var1568, $i29=var1615, $i30=var1071, $z0=var2180, $s32=var1011, $i25=var1878, $i26=var3745, $z1=var2041, $s33=var1257, $i19=var1592, $i20=var2962, $r4=var3847, $i1=var688, $i21=var2826, $i22=var1930, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2801, $r5=var2883, $i2=var590, $i23=var2008, $i24=var1099, $r6=var3009, $r7=var3381, $i34=var2296, $i17=var2438, $i18=var519, $r8=var1013, $i35=var3774, $i15=var112, $i16=var2120, $r10=var3963, $r11=var2293, $i36=var213, $i13=var683, $i14=var1332, $z2=var3017, $s37=var1390, $i6=var3652, $i7=var2524, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1309, $r12=var1710, $i3=var2419, $i8=var886, $i9=var3613, $r13=var1341, $i4=var2311, $i10=var1799, $i11=var2507, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1082, $r14=var2969, $i5=var1069, $i12=var934}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15