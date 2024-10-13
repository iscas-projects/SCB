(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3324 0)
(declare-sort var2954 0)
(declare-sort var1013 0)
(declare-sort var1586 0)
(declare-sort var1444 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3324) String)
(declare-fun getKey/1126038692 (var3324) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var3324) Bool)
(declare-fun isExternal/1126038692 (var3324) Bool)
(declare-fun getId/1126038692 (var3324) String)
(declare-fun getParts/1126038692 (var3324) var1013)
(declare-fun hashCode/1337417431 (var1013) Int)
(declare-fun getAlternateId/1126038692 (var3324) String)
(declare-fun getDesc/1126038692 (var3324) String)
(declare-fun getMeaning/1126038692 (var3324) String)
(declare-fun isHidden/1126038692 (var3324) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3324) var1586)
(declare-fun hashCode/-1247371579 (var1586) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3324) var1586)
(declare-fun jsPlaceholderNames/1126038692 (var3324) var1444)
(declare-fun hashCode/1818408063 (var1444) Int)
(declare-const null-var3324 var3324)
(declare-const null-String String)
(declare-const var1446 var3324) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1446 null-var3324)))
(define-const var3099 String (getSourceName/1126038692 var1446)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var3099 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var1698 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var2416 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1698)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1323 Int (* var2416 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2799 String (getKey/1126038692 var1446)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var3467 Int (hashCode/-467973558 var2799)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var476 Int (bv2nat (bvxor ((_ int2bv 64) var1323) ((_ int2bv 64) var3467)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var2179 Int (* var476 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var3069 Bool (isAnonymous/1126038692 var1446)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var3069 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3957 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var708 Int (bv2nat (bvxor ((_ int2bv 64) var2179) ((_ int2bv 64) var3957)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var947 Int (* var708 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var1228 Bool (isExternal/1126038692 var1446)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var1228 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1125 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var3302 Int (bv2nat (bvxor ((_ int2bv 64) var947) ((_ int2bv 64) var1125)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var215 Int (* var3302 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var3005 String (getId/1126038692 var1446)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var718 Int (hashCode/-467973558 var3005)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1034 Int (bv2nat (bvxor ((_ int2bv 64) var215) ((_ int2bv 64) var718)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var904 Int (* var1034 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2021 var1013 (getParts/1126038692 var1446)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1839 Int (hashCode/1337417431 var2021)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3614 Int (bv2nat (bvxor ((_ int2bv 64) var904) ((_ int2bv 64) var1839)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var31 Int (* var3614 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1093 String (getAlternateId/1126038692 var1446)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var1093 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var944 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var911 Int (bv2nat (bvxor ((_ int2bv 64) var31) ((_ int2bv 64) var944)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var212 Int (* var911 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var676 String (getDesc/1126038692 var1446)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var676 null-String))) ; Cond: $r8 != null 
(define-const var185 String (getDesc/1126038692 var1446)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var407 Int (hashCode/-467973558 var185)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1071 Int (bv2nat (bvxor ((_ int2bv 64) var212) ((_ int2bv 64) var407)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1641 Int (* var1071 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var830 String (getMeaning/1126038692 var1446)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var830 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var2862 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var1175 Int (bv2nat (bvxor ((_ int2bv 64) var1641) ((_ int2bv 64) var2862)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2823 Int (* var1175 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2262 Bool (isHidden/1126038692 var1446)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var2262 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1615 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var632 Int (bv2nat (bvxor ((_ int2bv 64) var2823) ((_ int2bv 64) var1615)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var976 Int (* var632 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var214 var1586 (getPlaceholderNameToExampleMap/1126038692 var1446)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var2580 Int (hashCode/-1247371579 var214)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1283 Int (bv2nat (bvxor ((_ int2bv 64) var976) ((_ int2bv 64) var2580)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2109 Int (* var1283 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var2001 var1586 (getPlaceholderNameToOriginalCodeMap/1126038692 var1446)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3748 Int (hashCode/-1247371579 var2001)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1218 Int (bv2nat (bvxor ((_ int2bv 64) var2109) ((_ int2bv 64) var3748)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var1334 Int (* var1218 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2619 var1444 (jsPlaceholderNames/1126038692 var1446)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1647 Int (hashCode/1818408063 var2619)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var356 Int (bv2nat (bvxor ((_ int2bv 64) var1334) ((_ int2bv 64) var1647)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3324=com.google.javascript.jscomp.AutoValue_JsMessage, var1446=r0, var3099=$r1, var2954=null_type, var1698=$i31, var2416=$i27, var1323=$i28, var2799=$r3, var3467=$i0, var476=$i29, var2179=$i30, var3069=$z0, var3957=$s32, var708=$i25, var947=$i26, var1228=$z1, var1125=$s33, var3302=$i19, var215=$i20, var3005=$r4, var718=$i1, var1034=$i21, var904=$i22, var1013=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2021=$r5, var1839=$i2, var3614=$i23, var31=$i24, var1093=$r6, var944=$i34, var911=$i17, var212=$i18, var676=$r8, var185=$r9, var407=$i35, var1071=$i15, var1641=$i16, var830=$r10, var2862=$i36, var1175=$i13, var2823=$i14, var2262=$z2, var1615=$s37, var632=$i6, var976=$i7, var1586=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var214=$r12, var2580=$i3, var1283=$i8, var2109=$i9, var2001=$r13, var3748=$i4, var1218=$i10, var1334=$i11, var1444=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2619=$r14, var1647=$i5, var356=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3324, r0=var1446, $r1=var3099, null_type=var2954, $i31=var1698, $i27=var2416, $i28=var1323, $r3=var2799, $i0=var3467, $i29=var476, $i30=var2179, $z0=var3069, $s32=var3957, $i25=var708, $i26=var947, $z1=var1228, $s33=var1125, $i19=var3302, $i20=var215, $r4=var3005, $i1=var718, $i21=var1034, $i22=var904, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1013, $r5=var2021, $i2=var1839, $i23=var3614, $i24=var31, $r6=var1093, $i34=var944, $i17=var911, $i18=var212, $r8=var676, $r9=var185, $i35=var407, $i15=var1071, $i16=var1641, $r10=var830, $i36=var2862, $i13=var1175, $i14=var2823, $z2=var2262, $s37=var1615, $i6=var632, $i7=var976, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1586, $r12=var214, $i3=var2580, $i8=var1283, $i9=var2109, $r13=var2001, $i4=var3748, $i10=var1218, $i11=var1334, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1444, $r14=var2619, $i5=var1647, $i12=var356}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15