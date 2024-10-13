(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1124 0)
(declare-sort var2099 0)
(declare-sort var697 0)
(declare-sort var2475 0)
(declare-sort var2754 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1124) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var1124) String)
(declare-fun isAnonymous/1126038692 (var1124) Bool)
(declare-fun isExternal/1126038692 (var1124) Bool)
(declare-fun getId/1126038692 (var1124) String)
(declare-fun getParts/1126038692 (var1124) var697)
(declare-fun hashCode/1337417431 (var697) Int)
(declare-fun getAlternateId/1126038692 (var1124) String)
(declare-fun getDesc/1126038692 (var1124) String)
(declare-fun getMeaning/1126038692 (var1124) String)
(declare-fun isHidden/1126038692 (var1124) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1124) var2475)
(declare-fun hashCode/-1247371579 (var2475) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1124) var2475)
(declare-fun jsPlaceholderNames/1126038692 (var1124) var2754)
(declare-fun hashCode/1818408063 (var2754) Int)
(declare-const null-var1124 var1124)
(declare-const null-String String)
(declare-const var2263 var1124) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2263 null-var1124)))
(define-const var2652 String (getSourceName/1126038692 var2263)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var2652 null-String))) ; Cond: $r1 != null 
(define-const var1908 String (getSourceName/1126038692 var2263)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var3975 Int (hashCode/-467973558 var1908)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var786 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3975)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var346 Int (* var786 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1111 String (getKey/1126038692 var2263)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var439 Int (hashCode/-467973558 var1111)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var284 Int (bv2nat (bvxor ((_ int2bv 64) var346) ((_ int2bv 64) var439)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1843 Int (* var284 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1743 Bool (isAnonymous/1126038692 var2263)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var1743 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1330 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var950 Int (bv2nat (bvxor ((_ int2bv 64) var1843) ((_ int2bv 64) var1330)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var977 Int (* var950 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2167 Bool (isExternal/1126038692 var2263)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var2167 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2969 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var2839 Int (bv2nat (bvxor ((_ int2bv 64) var977) ((_ int2bv 64) var2969)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1241 Int (* var2839 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var548 String (getId/1126038692 var2263)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var2788 Int (hashCode/-467973558 var548)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3484 Int (bv2nat (bvxor ((_ int2bv 64) var1241) ((_ int2bv 64) var2788)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2355 Int (* var3484 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1207 var697 (getParts/1126038692 var2263)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var2368 Int (hashCode/1337417431 var1207)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2643 Int (bv2nat (bvxor ((_ int2bv 64) var2355) ((_ int2bv 64) var2368)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var352 Int (* var2643 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1594 String (getAlternateId/1126038692 var2263)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var1594 null-String))) ; Cond: $r6 != null 
(define-const var2681 String (getAlternateId/1126038692 var2263)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var374 Int (hashCode/-467973558 var2681)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3999 Int (bv2nat (bvxor ((_ int2bv 64) var352) ((_ int2bv 64) var374)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2815 Int (* var3999 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var113 String (getDesc/1126038692 var2263)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var113 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var371 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var193 Int (bv2nat (bvxor ((_ int2bv 64) var2815) ((_ int2bv 64) var371)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var565 Int (* var193 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var108 String (getMeaning/1126038692 var2263)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var108 null-String))) ; Cond: $r10 != null 
(define-const var86 String (getMeaning/1126038692 var2263)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var1265 Int (hashCode/-467973558 var86)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1915 Int (bv2nat (bvxor ((_ int2bv 64) var565) ((_ int2bv 64) var1265)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var62 Int (* var1915 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var1039 Bool (isHidden/1126038692 var2263)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var1039 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3570 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var1749 Int (bv2nat (bvxor ((_ int2bv 64) var62) ((_ int2bv 64) var3570)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var3479 Int (* var1749 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var982 var2475 (getPlaceholderNameToExampleMap/1126038692 var2263)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var2116 Int (hashCode/-1247371579 var982)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var771 Int (bv2nat (bvxor ((_ int2bv 64) var3479) ((_ int2bv 64) var2116)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var1582 Int (* var771 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var653 var2475 (getPlaceholderNameToOriginalCodeMap/1126038692 var2263)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1315 Int (hashCode/-1247371579 var653)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3311 Int (bv2nat (bvxor ((_ int2bv 64) var1582) ((_ int2bv 64) var1315)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var1616 Int (* var3311 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var679 var2754 (jsPlaceholderNames/1126038692 var2263)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1584 Int (hashCode/1818408063 var679)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1143 Int (bv2nat (bvxor ((_ int2bv 64) var1616) ((_ int2bv 64) var1584)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1124=com.google.javascript.jscomp.AutoValue_JsMessage, var2263=r0, var2652=$r1, var2099=null_type, var1908=$r2, var3975=$i31, var786=$i27, var346=$i28, var1111=$r3, var439=$i0, var284=$i29, var1843=$i30, var1743=$z0, var1330=$s32, var950=$i25, var977=$i26, var2167=$z1, var2969=$s33, var2839=$i19, var1241=$i20, var548=$r4, var2788=$i1, var3484=$i21, var2355=$i22, var697=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1207=$r5, var2368=$i2, var2643=$i23, var352=$i24, var1594=$r6, var2681=$r7, var374=$i34, var3999=$i17, var2815=$i18, var113=$r8, var371=$i35, var193=$i15, var565=$i16, var108=$r10, var86=$r11, var1265=$i36, var1915=$i13, var62=$i14, var1039=$z2, var3570=$s37, var1749=$i6, var3479=$i7, var2475=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var982=$r12, var2116=$i3, var771=$i8, var1582=$i9, var653=$r13, var1315=$i4, var3311=$i10, var1616=$i11, var2754=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var679=$r14, var1584=$i5, var1143=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1124, r0=var2263, $r1=var2652, null_type=var2099, $r2=var1908, $i31=var3975, $i27=var786, $i28=var346, $r3=var1111, $i0=var439, $i29=var284, $i30=var1843, $z0=var1743, $s32=var1330, $i25=var950, $i26=var977, $z1=var2167, $s33=var2969, $i19=var2839, $i20=var1241, $r4=var548, $i1=var2788, $i21=var3484, $i22=var2355, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var697, $r5=var1207, $i2=var2368, $i23=var2643, $i24=var352, $r6=var1594, $r7=var2681, $i34=var374, $i17=var3999, $i18=var2815, $r8=var113, $i35=var371, $i15=var193, $i16=var565, $r10=var108, $r11=var86, $i36=var1265, $i13=var1915, $i14=var62, $z2=var1039, $s37=var3570, $i6=var1749, $i7=var3479, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2475, $r12=var982, $i3=var2116, $i8=var771, $i9=var1582, $r13=var653, $i4=var1315, $i10=var3311, $i11=var1616, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2754, $r14=var679, $i5=var1584, $i12=var1143}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15