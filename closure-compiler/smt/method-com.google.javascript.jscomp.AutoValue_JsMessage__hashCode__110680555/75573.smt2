(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1060 0)
(declare-sort var3439 0)
(declare-sort var1850 0)
(declare-sort var2851 0)
(declare-sort var3533 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1060) String)
(declare-fun getKey/1126038692 (var1060) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var1060) Bool)
(declare-fun isExternal/1126038692 (var1060) Bool)
(declare-fun getId/1126038692 (var1060) String)
(declare-fun getParts/1126038692 (var1060) var1850)
(declare-fun hashCode/1337417431 (var1850) Int)
(declare-fun getAlternateId/1126038692 (var1060) String)
(declare-fun getDesc/1126038692 (var1060) String)
(declare-fun getMeaning/1126038692 (var1060) String)
(declare-fun isHidden/1126038692 (var1060) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1060) var2851)
(declare-fun hashCode/-1247371579 (var2851) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1060) var2851)
(declare-fun jsPlaceholderNames/1126038692 (var1060) var3533)
(declare-fun hashCode/1818408063 (var3533) Int)
(declare-const null-var1060 var1060)
(declare-const null-String String)
(declare-const var180 var1060) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var180 null-var1060)))
(define-const var775 String (getSourceName/1126038692 var180)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var775 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var2103 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var75 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2103)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var344 Int (* var75 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2461 String (getKey/1126038692 var180)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2294 Int (hashCode/-467973558 var2461)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1464 Int (bv2nat (bvxor ((_ int2bv 64) var344) ((_ int2bv 64) var2294)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3973 Int (* var1464 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var380 Bool (isAnonymous/1126038692 var180)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var380 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1872 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var3645 Int (bv2nat (bvxor ((_ int2bv 64) var3973) ((_ int2bv 64) var1872)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var2443 Int (* var3645 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var1675 Bool (isExternal/1126038692 var180)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var1675 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2559 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var1504 Int (bv2nat (bvxor ((_ int2bv 64) var2443) ((_ int2bv 64) var2559)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2613 Int (* var1504 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var3775 String (getId/1126038692 var180)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3529 Int (hashCode/-467973558 var3775)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3105 Int (bv2nat (bvxor ((_ int2bv 64) var2613) ((_ int2bv 64) var3529)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var246 Int (* var3105 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var3274 var1850 (getParts/1126038692 var180)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var2674 Int (hashCode/1337417431 var3274)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2361 Int (bv2nat (bvxor ((_ int2bv 64) var246) ((_ int2bv 64) var2674)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1438 Int (* var2361 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var742 String (getAlternateId/1126038692 var180)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var742 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var2000 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var753 Int (bv2nat (bvxor ((_ int2bv 64) var1438) ((_ int2bv 64) var2000)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2937 Int (* var753 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var1218 String (getDesc/1126038692 var180)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var1218 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var1583 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var2021 Int (bv2nat (bvxor ((_ int2bv 64) var2937) ((_ int2bv 64) var1583)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var456 Int (* var2021 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3896 String (getMeaning/1126038692 var180)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var3896 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var274 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var2247 Int (bv2nat (bvxor ((_ int2bv 64) var456) ((_ int2bv 64) var274)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var293 Int (* var2247 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2548 Bool (isHidden/1126038692 var180)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var2548 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1812 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var2798 Int (bv2nat (bvxor ((_ int2bv 64) var293) ((_ int2bv 64) var1812)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var2235 Int (* var2798 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var315 var2851 (getPlaceholderNameToExampleMap/1126038692 var180)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var2655 Int (hashCode/-1247371579 var315)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2083 Int (bv2nat (bvxor ((_ int2bv 64) var2235) ((_ int2bv 64) var2655)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var177 Int (* var2083 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var903 var2851 (getPlaceholderNameToOriginalCodeMap/1126038692 var180)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1613 Int (hashCode/-1247371579 var903)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2242 Int (bv2nat (bvxor ((_ int2bv 64) var177) ((_ int2bv 64) var1613)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3107 Int (* var2242 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var419 var3533 (jsPlaceholderNames/1126038692 var180)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var269 Int (hashCode/1818408063 var419)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var3504 Int (bv2nat (bvxor ((_ int2bv 64) var3107) ((_ int2bv 64) var269)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1060=com.google.javascript.jscomp.AutoValue_JsMessage, var180=r0, var775=$r1, var3439=null_type, var2103=$i31, var75=$i27, var344=$i28, var2461=$r3, var2294=$i0, var1464=$i29, var3973=$i30, var380=$z0, var1872=$s32, var3645=$i25, var2443=$i26, var1675=$z1, var2559=$s33, var1504=$i19, var2613=$i20, var3775=$r4, var3529=$i1, var3105=$i21, var246=$i22, var1850=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3274=$r5, var2674=$i2, var2361=$i23, var1438=$i24, var742=$r6, var2000=$i34, var753=$i17, var2937=$i18, var1218=$r8, var1583=$i35, var2021=$i15, var456=$i16, var3896=$r10, var274=$i36, var2247=$i13, var293=$i14, var2548=$z2, var1812=$s37, var2798=$i6, var2235=$i7, var2851=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var315=$r12, var2655=$i3, var2083=$i8, var177=$i9, var903=$r13, var1613=$i4, var2242=$i10, var3107=$i11, var3533=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var419=$r14, var269=$i5, var3504=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1060, r0=var180, $r1=var775, null_type=var3439, $i31=var2103, $i27=var75, $i28=var344, $r3=var2461, $i0=var2294, $i29=var1464, $i30=var3973, $z0=var380, $s32=var1872, $i25=var3645, $i26=var2443, $z1=var1675, $s33=var2559, $i19=var1504, $i20=var2613, $r4=var3775, $i1=var3529, $i21=var3105, $i22=var246, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1850, $r5=var3274, $i2=var2674, $i23=var2361, $i24=var1438, $r6=var742, $i34=var2000, $i17=var753, $i18=var2937, $r8=var1218, $i35=var1583, $i15=var2021, $i16=var456, $r10=var3896, $i36=var274, $i13=var2247, $i14=var293, $z2=var2548, $s37=var1812, $i6=var2798, $i7=var2235, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2851, $r12=var315, $i3=var2655, $i8=var2083, $i9=var177, $r13=var903, $i4=var1613, $i10=var2242, $i11=var3107, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3533, $r14=var419, $i5=var269, $i12=var3504}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15