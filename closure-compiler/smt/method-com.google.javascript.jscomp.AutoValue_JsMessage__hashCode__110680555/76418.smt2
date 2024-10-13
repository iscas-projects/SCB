(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2200 0)
(declare-sort var1050 0)
(declare-sort var2194 0)
(declare-sort var2976 0)
(declare-sort var2935 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var2200) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var2200) String)
(declare-fun isAnonymous/1126038692 (var2200) Bool)
(declare-fun isExternal/1126038692 (var2200) Bool)
(declare-fun getId/1126038692 (var2200) String)
(declare-fun getParts/1126038692 (var2200) var2194)
(declare-fun hashCode/1337417431 (var2194) Int)
(declare-fun getAlternateId/1126038692 (var2200) String)
(declare-fun getDesc/1126038692 (var2200) String)
(declare-fun getMeaning/1126038692 (var2200) String)
(declare-fun isHidden/1126038692 (var2200) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var2200) var2976)
(declare-fun hashCode/-1247371579 (var2976) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var2200) var2976)
(declare-fun jsPlaceholderNames/1126038692 (var2200) var2935)
(declare-fun hashCode/1818408063 (var2935) Int)
(declare-const null-var2200 var2200)
(declare-const null-String String)
(declare-const var1329 var2200) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1329 null-var2200)))
(define-const var1140 String (getSourceName/1126038692 var1329)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var1140 null-String))) ; Cond: $r1 != null 
(define-const var2848 String (getSourceName/1126038692 var1329)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var393 Int (hashCode/-467973558 var2848)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2857 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var393)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1532 Int (* var2857 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var3597 String (getKey/1126038692 var1329)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2522 Int (hashCode/-467973558 var3597)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2515 Int (bv2nat (bvxor ((_ int2bv 64) var1532) ((_ int2bv 64) var2522)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1779 Int (* var2515 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2503 Bool (isAnonymous/1126038692 var1329)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var2503 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2445 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var3353 Int (bv2nat (bvxor ((_ int2bv 64) var1779) ((_ int2bv 64) var2445)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3629 Int (* var3353 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var1992 Bool (isExternal/1126038692 var1329)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var1992 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2851 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var2899 Int (bv2nat (bvxor ((_ int2bv 64) var3629) ((_ int2bv 64) var2851)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var3472 Int (* var2899 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1975 String (getId/1126038692 var1329)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var846 Int (hashCode/-467973558 var1975)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2477 Int (bv2nat (bvxor ((_ int2bv 64) var3472) ((_ int2bv 64) var846)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1722 Int (* var2477 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var472 var2194 (getParts/1126038692 var1329)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var233 Int (hashCode/1337417431 var472)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2585 Int (bv2nat (bvxor ((_ int2bv 64) var1722) ((_ int2bv 64) var233)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1429 Int (* var2585 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var3111 String (getAlternateId/1126038692 var1329)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var3111 null-String))) ; Cond: $r6 != null 
(define-const var67 String (getAlternateId/1126038692 var1329)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var3879 Int (hashCode/-467973558 var67)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2244 Int (bv2nat (bvxor ((_ int2bv 64) var1429) ((_ int2bv 64) var3879)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2250 Int (* var2244 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var1466 String (getDesc/1126038692 var1329)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var1466 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var1424 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var3117 Int (bv2nat (bvxor ((_ int2bv 64) var2250) ((_ int2bv 64) var1424)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var905 Int (* var3117 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var1953 String (getMeaning/1126038692 var1329)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var1953 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var368 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var1070 Int (bv2nat (bvxor ((_ int2bv 64) var905) ((_ int2bv 64) var368)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2963 Int (* var1070 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var722 Bool (isHidden/1126038692 var1329)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var722 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var849 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var1334 Int (bv2nat (bvxor ((_ int2bv 64) var2963) ((_ int2bv 64) var849)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var3748 Int (* var1334 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3504 var2976 (getPlaceholderNameToExampleMap/1126038692 var1329)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var124 Int (hashCode/-1247371579 var3504)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var303 Int (bv2nat (bvxor ((_ int2bv 64) var3748) ((_ int2bv 64) var124)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var1621 Int (* var303 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var1601 var2976 (getPlaceholderNameToOriginalCodeMap/1126038692 var1329)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var239 Int (hashCode/-1247371579 var1601)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2229 Int (bv2nat (bvxor ((_ int2bv 64) var1621) ((_ int2bv 64) var239)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var161 Int (* var2229 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var1018 var2935 (jsPlaceholderNames/1126038692 var1329)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1324 Int (hashCode/1818408063 var1018)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1998 Int (bv2nat (bvxor ((_ int2bv 64) var161) ((_ int2bv 64) var1324)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var2200=com.google.javascript.jscomp.AutoValue_JsMessage, var1329=r0, var1140=$r1, var1050=null_type, var2848=$r2, var393=$i31, var2857=$i27, var1532=$i28, var3597=$r3, var2522=$i0, var2515=$i29, var1779=$i30, var2503=$z0, var2445=$s32, var3353=$i25, var3629=$i26, var1992=$z1, var2851=$s33, var2899=$i19, var3472=$i20, var1975=$r4, var846=$i1, var2477=$i21, var1722=$i22, var2194=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var472=$r5, var233=$i2, var2585=$i23, var1429=$i24, var3111=$r6, var67=$r7, var3879=$i34, var2244=$i17, var2250=$i18, var1466=$r8, var1424=$i35, var3117=$i15, var905=$i16, var1953=$r10, var368=$i36, var1070=$i13, var2963=$i14, var722=$z2, var849=$s37, var1334=$i6, var3748=$i7, var2976=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3504=$r12, var124=$i3, var303=$i8, var1621=$i9, var1601=$r13, var239=$i4, var2229=$i10, var161=$i11, var2935=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var1018=$r14, var1324=$i5, var1998=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var2200, r0=var1329, $r1=var1140, null_type=var1050, $r2=var2848, $i31=var393, $i27=var2857, $i28=var1532, $r3=var3597, $i0=var2522, $i29=var2515, $i30=var1779, $z0=var2503, $s32=var2445, $i25=var3353, $i26=var3629, $z1=var1992, $s33=var2851, $i19=var2899, $i20=var3472, $r4=var1975, $i1=var846, $i21=var2477, $i22=var1722, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2194, $r5=var472, $i2=var233, $i23=var2585, $i24=var1429, $r6=var3111, $r7=var67, $i34=var3879, $i17=var2244, $i18=var2250, $r8=var1466, $i35=var1424, $i15=var3117, $i16=var905, $r10=var1953, $i36=var368, $i13=var1070, $i14=var2963, $z2=var722, $s37=var849, $i6=var1334, $i7=var3748, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2976, $r12=var3504, $i3=var124, $i8=var303, $i9=var1621, $r13=var1601, $i4=var239, $i10=var2229, $i11=var161, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2935, $r14=var1018, $i5=var1324, $i12=var1998}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15