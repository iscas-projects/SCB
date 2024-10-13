(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2688 0)
(declare-sort var620 0)
(declare-sort var2011 0)
(declare-sort var3293 0)
(declare-sort var2021 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var2688) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var2688) String)
(declare-fun isAnonymous/1126038692 (var2688) Bool)
(declare-fun isExternal/1126038692 (var2688) Bool)
(declare-fun getId/1126038692 (var2688) String)
(declare-fun getParts/1126038692 (var2688) var2011)
(declare-fun hashCode/1337417431 (var2011) Int)
(declare-fun getAlternateId/1126038692 (var2688) String)
(declare-fun getDesc/1126038692 (var2688) String)
(declare-fun getMeaning/1126038692 (var2688) String)
(declare-fun isHidden/1126038692 (var2688) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var2688) var3293)
(declare-fun hashCode/-1247371579 (var3293) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var2688) var3293)
(declare-fun jsPlaceholderNames/1126038692 (var2688) var2021)
(declare-fun hashCode/1818408063 (var2021) Int)
(declare-const null-var2688 var2688)
(declare-const null-String String)
(declare-const var1042 var2688) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1042 null-var2688)))
(define-const var603 String (getSourceName/1126038692 var1042)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var603 null-String))) ; Cond: $r1 != null 
(define-const var3203 String (getSourceName/1126038692 var1042)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var201 Int (hashCode/-467973558 var3203)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2937 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var201)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var2339 Int (* var2937 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2148 String (getKey/1126038692 var1042)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2401 Int (hashCode/-467973558 var2148)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2328 Int (bv2nat (bvxor ((_ int2bv 64) var2339) ((_ int2bv 64) var2401)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1939 Int (* var2328 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1492 Bool (isAnonymous/1126038692 var1042)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var1492 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3022 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var321 Int (bv2nat (bvxor ((_ int2bv 64) var1939) ((_ int2bv 64) var3022)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1818 Int (* var321 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var3755 Bool (isExternal/1126038692 var1042)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var3755 1 0) 0)) ; Cond: $z1 == 0 
(define-const var346 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var3252 Int (bv2nat (bvxor ((_ int2bv 64) var1818) ((_ int2bv 64) var346)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1450 Int (* var3252 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var3298 String (getId/1126038692 var1042)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1256 Int (hashCode/-467973558 var3298)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1884 Int (bv2nat (bvxor ((_ int2bv 64) var1450) ((_ int2bv 64) var1256)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2138 Int (* var1884 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2258 var2011 (getParts/1126038692 var1042)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var3897 Int (hashCode/1337417431 var2258)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var719 Int (bv2nat (bvxor ((_ int2bv 64) var2138) ((_ int2bv 64) var3897)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1027 Int (* var719 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1953 String (getAlternateId/1126038692 var1042)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var1953 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var1677 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var145 Int (bv2nat (bvxor ((_ int2bv 64) var1027) ((_ int2bv 64) var1677)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2771 Int (* var145 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var980 String (getDesc/1126038692 var1042)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var980 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var3160 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var1798 Int (bv2nat (bvxor ((_ int2bv 64) var2771) ((_ int2bv 64) var3160)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2575 Int (* var1798 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var433 String (getMeaning/1126038692 var1042)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var433 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var2886 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var2492 Int (bv2nat (bvxor ((_ int2bv 64) var2575) ((_ int2bv 64) var2886)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3972 Int (* var2492 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3965 Bool (isHidden/1126038692 var1042)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var3965 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2280 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var973 Int (bv2nat (bvxor ((_ int2bv 64) var3972) ((_ int2bv 64) var2280)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1491 Int (* var973 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var1515 var3293 (getPlaceholderNameToExampleMap/1126038692 var1042)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1766 Int (hashCode/-1247371579 var1515)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2713 Int (bv2nat (bvxor ((_ int2bv 64) var1491) ((_ int2bv 64) var1766)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2174 Int (* var2713 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3050 var3293 (getPlaceholderNameToOriginalCodeMap/1126038692 var1042)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1696 Int (hashCode/-1247371579 var3050)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var340 Int (bv2nat (bvxor ((_ int2bv 64) var2174) ((_ int2bv 64) var1696)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var2379 Int (* var340 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var813 var2021 (jsPlaceholderNames/1126038692 var1042)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2308 Int (hashCode/1818408063 var813)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1750 Int (bv2nat (bvxor ((_ int2bv 64) var2379) ((_ int2bv 64) var2308)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var2688=com.google.javascript.jscomp.AutoValue_JsMessage, var1042=r0, var603=$r1, var620=null_type, var3203=$r2, var201=$i31, var2937=$i27, var2339=$i28, var2148=$r3, var2401=$i0, var2328=$i29, var1939=$i30, var1492=$z0, var3022=$s32, var321=$i25, var1818=$i26, var3755=$z1, var346=$s33, var3252=$i19, var1450=$i20, var3298=$r4, var1256=$i1, var1884=$i21, var2138=$i22, var2011=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2258=$r5, var3897=$i2, var719=$i23, var1027=$i24, var1953=$r6, var1677=$i34, var145=$i17, var2771=$i18, var980=$r8, var3160=$i35, var1798=$i15, var2575=$i16, var433=$r10, var2886=$i36, var2492=$i13, var3972=$i14, var3965=$z2, var2280=$s37, var973=$i6, var1491=$i7, var3293=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1515=$r12, var1766=$i3, var2713=$i8, var2174=$i9, var3050=$r13, var1696=$i4, var340=$i10, var2379=$i11, var2021=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var813=$r14, var2308=$i5, var1750=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var2688, r0=var1042, $r1=var603, null_type=var620, $r2=var3203, $i31=var201, $i27=var2937, $i28=var2339, $r3=var2148, $i0=var2401, $i29=var2328, $i30=var1939, $z0=var1492, $s32=var3022, $i25=var321, $i26=var1818, $z1=var3755, $s33=var346, $i19=var3252, $i20=var1450, $r4=var3298, $i1=var1256, $i21=var1884, $i22=var2138, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2011, $r5=var2258, $i2=var3897, $i23=var719, $i24=var1027, $r6=var1953, $i34=var1677, $i17=var145, $i18=var2771, $r8=var980, $i35=var3160, $i15=var1798, $i16=var2575, $r10=var433, $i36=var2886, $i13=var2492, $i14=var3972, $z2=var3965, $s37=var2280, $i6=var973, $i7=var1491, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3293, $r12=var1515, $i3=var1766, $i8=var2713, $i9=var2174, $r13=var3050, $i4=var1696, $i10=var340, $i11=var2379, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2021, $r14=var813, $i5=var2308, $i12=var1750}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15