(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2100 0)
(declare-sort var1330 0)
(declare-sort var1977 0)
(declare-sort var480 0)
(declare-sort var2755 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var2100) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var2100) String)
(declare-fun isAnonymous/1126038692 (var2100) Bool)
(declare-fun isExternal/1126038692 (var2100) Bool)
(declare-fun getId/1126038692 (var2100) String)
(declare-fun getParts/1126038692 (var2100) var1977)
(declare-fun hashCode/1337417431 (var1977) Int)
(declare-fun getAlternateId/1126038692 (var2100) String)
(declare-fun getDesc/1126038692 (var2100) String)
(declare-fun getMeaning/1126038692 (var2100) String)
(declare-fun isHidden/1126038692 (var2100) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var2100) var480)
(declare-fun hashCode/-1247371579 (var480) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var2100) var480)
(declare-fun jsPlaceholderNames/1126038692 (var2100) var2755)
(declare-fun hashCode/1818408063 (var2755) Int)
(declare-const null-var2100 var2100)
(declare-const null-String String)
(declare-const var394 var2100) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var394 null-var2100)))
(define-const var1846 String (getSourceName/1126038692 var394)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var1846 null-String))) ; Cond: $r1 != null 
(define-const var712 String (getSourceName/1126038692 var394)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var405 Int (hashCode/-467973558 var712)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3858 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var405)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1309 Int (* var3858 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1245 String (getKey/1126038692 var394)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2395 Int (hashCode/-467973558 var1245)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var764 Int (bv2nat (bvxor ((_ int2bv 64) var1309) ((_ int2bv 64) var2395)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var2790 Int (* var764 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1431 Bool (isAnonymous/1126038692 var394)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var1431 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2506 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var2962 Int (bv2nat (bvxor ((_ int2bv 64) var2790) ((_ int2bv 64) var2506)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1395 Int (* var2962 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var3141 Bool (isExternal/1126038692 var394)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var3141 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1374 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var3890 Int (bv2nat (bvxor ((_ int2bv 64) var1395) ((_ int2bv 64) var1374)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var3807 Int (* var3890 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1748 String (getId/1126038692 var394)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3549 Int (hashCode/-467973558 var1748)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var79 Int (bv2nat (bvxor ((_ int2bv 64) var3807) ((_ int2bv 64) var3549)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var3969 Int (* var79 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2683 var1977 (getParts/1126038692 var394)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var2007 Int (hashCode/1337417431 var2683)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1904 Int (bv2nat (bvxor ((_ int2bv 64) var3969) ((_ int2bv 64) var2007)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var2984 Int (* var1904 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var771 String (getAlternateId/1126038692 var394)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var771 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var2658 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var3102 Int (bv2nat (bvxor ((_ int2bv 64) var2984) ((_ int2bv 64) var2658)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var1788 Int (* var3102 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var2274 String (getDesc/1126038692 var394)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var2274 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var1623 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var3932 Int (bv2nat (bvxor ((_ int2bv 64) var1788) ((_ int2bv 64) var1623)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var633 Int (* var3932 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3545 String (getMeaning/1126038692 var394)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var3545 null-String))) ; Cond: $r10 != null 
(define-const var1612 String (getMeaning/1126038692 var394)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var1274 Int (hashCode/-467973558 var1612)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2464 Int (bv2nat (bvxor ((_ int2bv 64) var633) ((_ int2bv 64) var1274)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var763 Int (* var2464 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var1393 Bool (isHidden/1126038692 var394)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var1393 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2348 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var3409 Int (bv2nat (bvxor ((_ int2bv 64) var763) ((_ int2bv 64) var2348)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1443 Int (* var3409 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var1686 var480 (getPlaceholderNameToExampleMap/1126038692 var394)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var2030 Int (hashCode/-1247371579 var1686)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1593 Int (bv2nat (bvxor ((_ int2bv 64) var1443) ((_ int2bv 64) var2030)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2275 Int (* var1593 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var227 var480 (getPlaceholderNameToOriginalCodeMap/1126038692 var394)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var2058 Int (hashCode/-1247371579 var227)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2728 Int (bv2nat (bvxor ((_ int2bv 64) var2275) ((_ int2bv 64) var2058)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var1944 Int (* var2728 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var432 var2755 (jsPlaceholderNames/1126038692 var394)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2197 Int (hashCode/1818408063 var432)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var914 Int (bv2nat (bvxor ((_ int2bv 64) var1944) ((_ int2bv 64) var2197)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var2100=com.google.javascript.jscomp.AutoValue_JsMessage, var394=r0, var1846=$r1, var1330=null_type, var712=$r2, var405=$i31, var3858=$i27, var1309=$i28, var1245=$r3, var2395=$i0, var764=$i29, var2790=$i30, var1431=$z0, var2506=$s32, var2962=$i25, var1395=$i26, var3141=$z1, var1374=$s33, var3890=$i19, var3807=$i20, var1748=$r4, var3549=$i1, var79=$i21, var3969=$i22, var1977=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2683=$r5, var2007=$i2, var1904=$i23, var2984=$i24, var771=$r6, var2658=$i34, var3102=$i17, var1788=$i18, var2274=$r8, var1623=$i35, var3932=$i15, var633=$i16, var3545=$r10, var1612=$r11, var1274=$i36, var2464=$i13, var763=$i14, var1393=$z2, var2348=$s37, var3409=$i6, var1443=$i7, var480=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1686=$r12, var2030=$i3, var1593=$i8, var2275=$i9, var227=$r13, var2058=$i4, var2728=$i10, var1944=$i11, var2755=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var432=$r14, var2197=$i5, var914=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var2100, r0=var394, $r1=var1846, null_type=var1330, $r2=var712, $i31=var405, $i27=var3858, $i28=var1309, $r3=var1245, $i0=var2395, $i29=var764, $i30=var2790, $z0=var1431, $s32=var2506, $i25=var2962, $i26=var1395, $z1=var3141, $s33=var1374, $i19=var3890, $i20=var3807, $r4=var1748, $i1=var3549, $i21=var79, $i22=var3969, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1977, $r5=var2683, $i2=var2007, $i23=var1904, $i24=var2984, $r6=var771, $i34=var2658, $i17=var3102, $i18=var1788, $r8=var2274, $i35=var1623, $i15=var3932, $i16=var633, $r10=var3545, $r11=var1612, $i36=var1274, $i13=var2464, $i14=var763, $z2=var1393, $s37=var2348, $i6=var3409, $i7=var1443, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var480, $r12=var1686, $i3=var2030, $i8=var1593, $i9=var2275, $r13=var227, $i4=var2058, $i10=var2728, $i11=var1944, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2755, $r14=var432, $i5=var2197, $i12=var914}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15