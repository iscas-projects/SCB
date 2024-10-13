(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2210 0)
(declare-sort var958 0)
(declare-sort var3604 0)
(declare-sort var3449 0)
(declare-sort var645 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var2210) String)
(declare-fun getKey/1126038692 (var2210) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var2210) Bool)
(declare-fun isExternal/1126038692 (var2210) Bool)
(declare-fun getId/1126038692 (var2210) String)
(declare-fun getParts/1126038692 (var2210) var3604)
(declare-fun hashCode/1337417431 (var3604) Int)
(declare-fun getAlternateId/1126038692 (var2210) String)
(declare-fun getDesc/1126038692 (var2210) String)
(declare-fun getMeaning/1126038692 (var2210) String)
(declare-fun isHidden/1126038692 (var2210) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var2210) var3449)
(declare-fun hashCode/-1247371579 (var3449) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var2210) var3449)
(declare-fun jsPlaceholderNames/1126038692 (var2210) var645)
(declare-fun hashCode/1818408063 (var645) Int)
(declare-const null-var2210 var2210)
(declare-const null-String String)
(declare-const var511 var2210) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var511 null-var2210)))
(define-const var2035 String (getSourceName/1126038692 var511)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var2035 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var1531 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var3446 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1531)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var101 Int (* var3446 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2008 String (getKey/1126038692 var511)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2949 Int (hashCode/-467973558 var2008)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var936 Int (bv2nat (bvxor ((_ int2bv 64) var101) ((_ int2bv 64) var2949)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1952 Int (* var936 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2565 Bool (isAnonymous/1126038692 var511)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var2565 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1138 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var3662 Int (bv2nat (bvxor ((_ int2bv 64) var1952) ((_ int2bv 64) var1138)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3560 Int (* var3662 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var203 Bool (isExternal/1126038692 var511)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var203 1 0) 0)) ; Cond: $z1 == 0 
(define-const var58 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var2379 Int (bv2nat (bvxor ((_ int2bv 64) var3560) ((_ int2bv 64) var58)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var130 Int (* var2379 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var2370 String (getId/1126038692 var511)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1563 Int (hashCode/-467973558 var2370)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2906 Int (bv2nat (bvxor ((_ int2bv 64) var130) ((_ int2bv 64) var1563)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2772 Int (* var2906 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1405 var3604 (getParts/1126038692 var511)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var747 Int (hashCode/1337417431 var1405)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2943 Int (bv2nat (bvxor ((_ int2bv 64) var2772) ((_ int2bv 64) var747)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1349 Int (* var2943 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1408 String (getAlternateId/1126038692 var511)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var1408 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var471 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var2305 Int (bv2nat (bvxor ((_ int2bv 64) var1349) ((_ int2bv 64) var471)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3947 Int (* var2305 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var2946 String (getDesc/1126038692 var511)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var2946 null-String))) ; Cond: $r8 != null 
(define-const var200 String (getDesc/1126038692 var511)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var640 Int (hashCode/-467973558 var200)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2466 Int (bv2nat (bvxor ((_ int2bv 64) var3947) ((_ int2bv 64) var640)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2347 Int (* var2466 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var1321 String (getMeaning/1126038692 var511)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var1321 null-String))) ; Cond: $r10 != null 
(define-const var1732 String (getMeaning/1126038692 var511)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var2196 Int (hashCode/-467973558 var1732)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2429 Int (bv2nat (bvxor ((_ int2bv 64) var2347) ((_ int2bv 64) var2196)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3190 Int (* var2429 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3808 Bool (isHidden/1126038692 var511)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var3808 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3450 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var884 Int (bv2nat (bvxor ((_ int2bv 64) var3190) ((_ int2bv 64) var3450)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var2329 Int (* var884 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var173 var3449 (getPlaceholderNameToExampleMap/1126038692 var511)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var2501 Int (hashCode/-1247371579 var173)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2626 Int (bv2nat (bvxor ((_ int2bv 64) var2329) ((_ int2bv 64) var2501)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var835 Int (* var2626 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var651 var3449 (getPlaceholderNameToOriginalCodeMap/1126038692 var511)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var945 Int (hashCode/-1247371579 var651)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2905 Int (bv2nat (bvxor ((_ int2bv 64) var835) ((_ int2bv 64) var945)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3411 Int (* var2905 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3278 var645 (jsPlaceholderNames/1126038692 var511)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2543 Int (hashCode/1818408063 var3278)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var693 Int (bv2nat (bvxor ((_ int2bv 64) var3411) ((_ int2bv 64) var2543)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var2210=com.google.javascript.jscomp.AutoValue_JsMessage, var511=r0, var2035=$r1, var958=null_type, var1531=$i31, var3446=$i27, var101=$i28, var2008=$r3, var2949=$i0, var936=$i29, var1952=$i30, var2565=$z0, var1138=$s32, var3662=$i25, var3560=$i26, var203=$z1, var58=$s33, var2379=$i19, var130=$i20, var2370=$r4, var1563=$i1, var2906=$i21, var2772=$i22, var3604=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1405=$r5, var747=$i2, var2943=$i23, var1349=$i24, var1408=$r6, var471=$i34, var2305=$i17, var3947=$i18, var2946=$r8, var200=$r9, var640=$i35, var2466=$i15, var2347=$i16, var1321=$r10, var1732=$r11, var2196=$i36, var2429=$i13, var3190=$i14, var3808=$z2, var3450=$s37, var884=$i6, var2329=$i7, var3449=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var173=$r12, var2501=$i3, var2626=$i8, var835=$i9, var651=$r13, var945=$i4, var2905=$i10, var3411=$i11, var645=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3278=$r14, var2543=$i5, var693=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var2210, r0=var511, $r1=var2035, null_type=var958, $i31=var1531, $i27=var3446, $i28=var101, $r3=var2008, $i0=var2949, $i29=var936, $i30=var1952, $z0=var2565, $s32=var1138, $i25=var3662, $i26=var3560, $z1=var203, $s33=var58, $i19=var2379, $i20=var130, $r4=var2370, $i1=var1563, $i21=var2906, $i22=var2772, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3604, $r5=var1405, $i2=var747, $i23=var2943, $i24=var1349, $r6=var1408, $i34=var471, $i17=var2305, $i18=var3947, $r8=var2946, $r9=var200, $i35=var640, $i15=var2466, $i16=var2347, $r10=var1321, $r11=var1732, $i36=var2196, $i13=var2429, $i14=var3190, $z2=var3808, $s37=var3450, $i6=var884, $i7=var2329, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3449, $r12=var173, $i3=var2501, $i8=var2626, $i9=var835, $r13=var651, $i4=var945, $i10=var2905, $i11=var3411, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var645, $r14=var3278, $i5=var2543, $i12=var693}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15