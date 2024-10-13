(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var291 0)
(declare-sort var2197 0)
(declare-sort var2857 0)
(declare-sort var2746 0)
(declare-sort var236 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var291) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var291) String)
(declare-fun isAnonymous/1126038692 (var291) Bool)
(declare-fun isExternal/1126038692 (var291) Bool)
(declare-fun getId/1126038692 (var291) String)
(declare-fun getParts/1126038692 (var291) var2857)
(declare-fun hashCode/1337417431 (var2857) Int)
(declare-fun getAlternateId/1126038692 (var291) String)
(declare-fun getDesc/1126038692 (var291) String)
(declare-fun getMeaning/1126038692 (var291) String)
(declare-fun isHidden/1126038692 (var291) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var291) var2746)
(declare-fun hashCode/-1247371579 (var2746) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var291) var2746)
(declare-fun jsPlaceholderNames/1126038692 (var291) var236)
(declare-fun hashCode/1818408063 (var236) Int)
(declare-const null-var291 var291)
(declare-const null-String String)
(declare-const var3913 var291) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3913 null-var291)))
(define-const var3694 String (getSourceName/1126038692 var3913)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var3694 null-String))) ; Cond: $r1 != null 
(define-const var84 String (getSourceName/1126038692 var3913)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var2935 Int (hashCode/-467973558 var84)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2020 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2935)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var859 Int (* var2020 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var186 String (getKey/1126038692 var3913)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var743 Int (hashCode/-467973558 var186)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var3189 Int (bv2nat (bvxor ((_ int2bv 64) var859) ((_ int2bv 64) var743)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1499 Int (* var3189 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var613 Bool (isAnonymous/1126038692 var3913)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var613 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3880 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var1627 Int (bv2nat (bvxor ((_ int2bv 64) var1499) ((_ int2bv 64) var3880)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1544 Int (* var1627 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var1655 Bool (isExternal/1126038692 var3913)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var1655 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var290 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var2959 Int (bv2nat (bvxor ((_ int2bv 64) var1544) ((_ int2bv 64) var290)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1845 Int (* var2959 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var2704 String (getId/1126038692 var3913)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var2435 Int (hashCode/-467973558 var2704)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2791 Int (bv2nat (bvxor ((_ int2bv 64) var1845) ((_ int2bv 64) var2435)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var444 Int (* var2791 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2640 var2857 (getParts/1126038692 var3913)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var85 Int (hashCode/1337417431 var2640)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3755 Int (bv2nat (bvxor ((_ int2bv 64) var444) ((_ int2bv 64) var85)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var2355 Int (* var3755 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var3758 String (getAlternateId/1126038692 var3913)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var3758 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var3688 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var2949 Int (bv2nat (bvxor ((_ int2bv 64) var2355) ((_ int2bv 64) var3688)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2470 Int (* var2949 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var432 String (getDesc/1126038692 var3913)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var432 null-String))) ; Cond: $r8 != null 
(define-const var700 String (getDesc/1126038692 var3913)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var1604 Int (hashCode/-467973558 var700)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var91 Int (bv2nat (bvxor ((_ int2bv 64) var2470) ((_ int2bv 64) var1604)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var3565 Int (* var91 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3541 String (getMeaning/1126038692 var3913)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var3541 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var2045 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var56 Int (bv2nat (bvxor ((_ int2bv 64) var3565) ((_ int2bv 64) var2045)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3028 Int (* var56 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2967 Bool (isHidden/1126038692 var3913)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var2967 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2312 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var3186 Int (bv2nat (bvxor ((_ int2bv 64) var3028) ((_ int2bv 64) var2312)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var3224 Int (* var3186 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3317 var2746 (getPlaceholderNameToExampleMap/1126038692 var3913)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3011 Int (hashCode/-1247371579 var3317)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2813 Int (bv2nat (bvxor ((_ int2bv 64) var3224) ((_ int2bv 64) var3011)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2283 Int (* var2813 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var507 var2746 (getPlaceholderNameToOriginalCodeMap/1126038692 var3913)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3338 Int (hashCode/-1247371579 var507)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3689 Int (bv2nat (bvxor ((_ int2bv 64) var2283) ((_ int2bv 64) var3338)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var2238 Int (* var3689 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var102 var236 (jsPlaceholderNames/1126038692 var3913)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1303 Int (hashCode/1818408063 var102)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var2998 Int (bv2nat (bvxor ((_ int2bv 64) var2238) ((_ int2bv 64) var1303)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var291=com.google.javascript.jscomp.AutoValue_JsMessage, var3913=r0, var3694=$r1, var2197=null_type, var84=$r2, var2935=$i31, var2020=$i27, var859=$i28, var186=$r3, var743=$i0, var3189=$i29, var1499=$i30, var613=$z0, var3880=$s32, var1627=$i25, var1544=$i26, var1655=$z1, var290=$s33, var2959=$i19, var1845=$i20, var2704=$r4, var2435=$i1, var2791=$i21, var444=$i22, var2857=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2640=$r5, var85=$i2, var3755=$i23, var2355=$i24, var3758=$r6, var3688=$i34, var2949=$i17, var2470=$i18, var432=$r8, var700=$r9, var1604=$i35, var91=$i15, var3565=$i16, var3541=$r10, var2045=$i36, var56=$i13, var3028=$i14, var2967=$z2, var2312=$s37, var3186=$i6, var3224=$i7, var2746=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3317=$r12, var3011=$i3, var2813=$i8, var2283=$i9, var507=$r13, var3338=$i4, var3689=$i10, var2238=$i11, var236=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var102=$r14, var1303=$i5, var2998=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var291, r0=var3913, $r1=var3694, null_type=var2197, $r2=var84, $i31=var2935, $i27=var2020, $i28=var859, $r3=var186, $i0=var743, $i29=var3189, $i30=var1499, $z0=var613, $s32=var3880, $i25=var1627, $i26=var1544, $z1=var1655, $s33=var290, $i19=var2959, $i20=var1845, $r4=var2704, $i1=var2435, $i21=var2791, $i22=var444, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2857, $r5=var2640, $i2=var85, $i23=var3755, $i24=var2355, $r6=var3758, $i34=var3688, $i17=var2949, $i18=var2470, $r8=var432, $r9=var700, $i35=var1604, $i15=var91, $i16=var3565, $r10=var3541, $i36=var2045, $i13=var56, $i14=var3028, $z2=var2967, $s37=var2312, $i6=var3186, $i7=var3224, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2746, $r12=var3317, $i3=var3011, $i8=var2813, $i9=var2283, $r13=var507, $i4=var3338, $i10=var3689, $i11=var2238, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var236, $r14=var102, $i5=var1303, $i12=var2998}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15