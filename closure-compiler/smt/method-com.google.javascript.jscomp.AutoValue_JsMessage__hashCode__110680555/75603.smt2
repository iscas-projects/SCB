(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3515 0)
(declare-sort var1356 0)
(declare-sort var3518 0)
(declare-sort var3712 0)
(declare-sort var3352 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3515) String)
(declare-fun getKey/1126038692 (var3515) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var3515) Bool)
(declare-fun isExternal/1126038692 (var3515) Bool)
(declare-fun getId/1126038692 (var3515) String)
(declare-fun getParts/1126038692 (var3515) var3518)
(declare-fun hashCode/1337417431 (var3518) Int)
(declare-fun getAlternateId/1126038692 (var3515) String)
(declare-fun getDesc/1126038692 (var3515) String)
(declare-fun getMeaning/1126038692 (var3515) String)
(declare-fun isHidden/1126038692 (var3515) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3515) var3712)
(declare-fun hashCode/-1247371579 (var3712) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3515) var3712)
(declare-fun jsPlaceholderNames/1126038692 (var3515) var3352)
(declare-fun hashCode/1818408063 (var3352) Int)
(declare-const null-var3515 var3515)
(declare-const null-String String)
(declare-const var3636 var3515) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3636 null-var3515)))
(define-const var1370 String (getSourceName/1126038692 var3636)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var1370 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var2477 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var2299 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2477)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1157 Int (* var2299 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1359 String (getKey/1126038692 var3636)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var3220 Int (hashCode/-467973558 var1359)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var24 Int (bv2nat (bvxor ((_ int2bv 64) var1157) ((_ int2bv 64) var3220)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3139 Int (* var24 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var453 Bool (isAnonymous/1126038692 var3636)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var453 1 0) 0)) ; Cond: $z0 == 0 
(define-const var982 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var561 Int (bv2nat (bvxor ((_ int2bv 64) var3139) ((_ int2bv 64) var982)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var2686 Int (* var561 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var3580 Bool (isExternal/1126038692 var3636)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var3580 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var427 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var214 Int (bv2nat (bvxor ((_ int2bv 64) var2686) ((_ int2bv 64) var427)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var695 Int (* var214 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var288 String (getId/1126038692 var3636)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1936 Int (hashCode/-467973558 var288)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3549 Int (bv2nat (bvxor ((_ int2bv 64) var695) ((_ int2bv 64) var1936)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1652 Int (* var3549 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var3406 var3518 (getParts/1126038692 var3636)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var2044 Int (hashCode/1337417431 var3406)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2885 Int (bv2nat (bvxor ((_ int2bv 64) var1652) ((_ int2bv 64) var2044)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3073 Int (* var2885 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var2835 String (getAlternateId/1126038692 var3636)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var2835 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var267 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var2073 Int (bv2nat (bvxor ((_ int2bv 64) var3073) ((_ int2bv 64) var267)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var225 Int (* var2073 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var2797 String (getDesc/1126038692 var3636)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var2797 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var3455 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var3001 Int (bv2nat (bvxor ((_ int2bv 64) var225) ((_ int2bv 64) var3455)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2766 Int (* var3001 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var973 String (getMeaning/1126038692 var3636)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var973 null-String))) ; Cond: $r10 != null 
(define-const var1775 String (getMeaning/1126038692 var3636)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var1623 Int (hashCode/-467973558 var1775)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2813 Int (bv2nat (bvxor ((_ int2bv 64) var2766) ((_ int2bv 64) var1623)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var980 Int (* var2813 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var90 Bool (isHidden/1126038692 var3636)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var90 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1684 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var716 Int (bv2nat (bvxor ((_ int2bv 64) var980) ((_ int2bv 64) var1684)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var3043 Int (* var716 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var1484 var3712 (getPlaceholderNameToExampleMap/1126038692 var3636)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1709 Int (hashCode/-1247371579 var1484)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2384 Int (bv2nat (bvxor ((_ int2bv 64) var3043) ((_ int2bv 64) var1709)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var388 Int (* var2384 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var2769 var3712 (getPlaceholderNameToOriginalCodeMap/1126038692 var3636)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1226 Int (hashCode/-1247371579 var2769)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2754 Int (bv2nat (bvxor ((_ int2bv 64) var388) ((_ int2bv 64) var1226)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var718 Int (* var2754 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2334 var3352 (jsPlaceholderNames/1126038692 var3636)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var3127 Int (hashCode/1818408063 var2334)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1194 Int (bv2nat (bvxor ((_ int2bv 64) var718) ((_ int2bv 64) var3127)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3515=com.google.javascript.jscomp.AutoValue_JsMessage, var3636=r0, var1370=$r1, var1356=null_type, var2477=$i31, var2299=$i27, var1157=$i28, var1359=$r3, var3220=$i0, var24=$i29, var3139=$i30, var453=$z0, var982=$s32, var561=$i25, var2686=$i26, var3580=$z1, var427=$s33, var214=$i19, var695=$i20, var288=$r4, var1936=$i1, var3549=$i21, var1652=$i22, var3518=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3406=$r5, var2044=$i2, var2885=$i23, var3073=$i24, var2835=$r6, var267=$i34, var2073=$i17, var225=$i18, var2797=$r8, var3455=$i35, var3001=$i15, var2766=$i16, var973=$r10, var1775=$r11, var1623=$i36, var2813=$i13, var980=$i14, var90=$z2, var1684=$s37, var716=$i6, var3043=$i7, var3712=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1484=$r12, var1709=$i3, var2384=$i8, var388=$i9, var2769=$r13, var1226=$i4, var2754=$i10, var718=$i11, var3352=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2334=$r14, var3127=$i5, var1194=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3515, r0=var3636, $r1=var1370, null_type=var1356, $i31=var2477, $i27=var2299, $i28=var1157, $r3=var1359, $i0=var3220, $i29=var24, $i30=var3139, $z0=var453, $s32=var982, $i25=var561, $i26=var2686, $z1=var3580, $s33=var427, $i19=var214, $i20=var695, $r4=var288, $i1=var1936, $i21=var3549, $i22=var1652, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3518, $r5=var3406, $i2=var2044, $i23=var2885, $i24=var3073, $r6=var2835, $i34=var267, $i17=var2073, $i18=var225, $r8=var2797, $i35=var3455, $i15=var3001, $i16=var2766, $r10=var973, $r11=var1775, $i36=var1623, $i13=var2813, $i14=var980, $z2=var90, $s37=var1684, $i6=var716, $i7=var3043, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3712, $r12=var1484, $i3=var1709, $i8=var2384, $i9=var388, $r13=var2769, $i4=var1226, $i10=var2754, $i11=var718, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3352, $r14=var2334, $i5=var3127, $i12=var1194}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15