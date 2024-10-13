(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2082 0)
(declare-sort var3356 0)
(declare-sort var2889 0)
(declare-sort var3731 0)
(declare-sort var3991 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var2082) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var2082) String)
(declare-fun isAnonymous/1126038692 (var2082) Bool)
(declare-fun isExternal/1126038692 (var2082) Bool)
(declare-fun getId/1126038692 (var2082) String)
(declare-fun getParts/1126038692 (var2082) var2889)
(declare-fun hashCode/1337417431 (var2889) Int)
(declare-fun getAlternateId/1126038692 (var2082) String)
(declare-fun getDesc/1126038692 (var2082) String)
(declare-fun getMeaning/1126038692 (var2082) String)
(declare-fun isHidden/1126038692 (var2082) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var2082) var3731)
(declare-fun hashCode/-1247371579 (var3731) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var2082) var3731)
(declare-fun jsPlaceholderNames/1126038692 (var2082) var3991)
(declare-fun hashCode/1818408063 (var3991) Int)
(declare-const null-var2082 var2082)
(declare-const null-String String)
(declare-const var2522 var2082) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2522 null-var2082)))
(define-const var1174 String (getSourceName/1126038692 var2522)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var1174 null-String))) ; Cond: $r1 != null 
(define-const var2398 String (getSourceName/1126038692 var2522)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var3827 Int (hashCode/-467973558 var2398)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3262 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3827)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var988 Int (* var3262 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2008 String (getKey/1126038692 var2522)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2410 Int (hashCode/-467973558 var2008)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2621 Int (bv2nat (bvxor ((_ int2bv 64) var988) ((_ int2bv 64) var2410)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1037 Int (* var2621 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var284 Bool (isAnonymous/1126038692 var2522)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var284 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2924 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var2745 Int (bv2nat (bvxor ((_ int2bv 64) var1037) ((_ int2bv 64) var2924)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var60 Int (* var2745 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var1975 Bool (isExternal/1126038692 var2522)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var1975 1 0) 0)) ; Cond: $z1 == 0 
(define-const var412 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var664 Int (bv2nat (bvxor ((_ int2bv 64) var60) ((_ int2bv 64) var412)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var579 Int (* var664 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var2660 String (getId/1126038692 var2522)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3933 Int (hashCode/-467973558 var2660)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2390 Int (bv2nat (bvxor ((_ int2bv 64) var579) ((_ int2bv 64) var3933)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1929 Int (* var2390 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var293 var2889 (getParts/1126038692 var2522)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var417 Int (hashCode/1337417431 var293)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1392 Int (bv2nat (bvxor ((_ int2bv 64) var1929) ((_ int2bv 64) var417)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3171 Int (* var1392 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var2248 String (getAlternateId/1126038692 var2522)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var2248 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var1466 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var1734 Int (bv2nat (bvxor ((_ int2bv 64) var3171) ((_ int2bv 64) var1466)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var637 Int (* var1734 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var828 String (getDesc/1126038692 var2522)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var828 null-String))) ; Cond: $r8 != null 
(define-const var2960 String (getDesc/1126038692 var2522)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var640 Int (hashCode/-467973558 var2960)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var980 Int (bv2nat (bvxor ((_ int2bv 64) var637) ((_ int2bv 64) var640)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1900 Int (* var980 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var1001 String (getMeaning/1126038692 var2522)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var1001 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var47 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var195 Int (bv2nat (bvxor ((_ int2bv 64) var1900) ((_ int2bv 64) var47)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var620 Int (* var195 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3129 Bool (isHidden/1126038692 var2522)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var3129 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2989 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var3670 Int (bv2nat (bvxor ((_ int2bv 64) var620) ((_ int2bv 64) var2989)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var2161 Int (* var3670 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2350 var3731 (getPlaceholderNameToExampleMap/1126038692 var2522)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3331 Int (hashCode/-1247371579 var2350)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var879 Int (bv2nat (bvxor ((_ int2bv 64) var2161) ((_ int2bv 64) var3331)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2684 Int (* var879 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var1774 var3731 (getPlaceholderNameToOriginalCodeMap/1126038692 var2522)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var2863 Int (hashCode/-1247371579 var1774)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3042 Int (bv2nat (bvxor ((_ int2bv 64) var2684) ((_ int2bv 64) var2863)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var676 Int (* var3042 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2392 var3991 (jsPlaceholderNames/1126038692 var2522)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var316 Int (hashCode/1818408063 var2392)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var3610 Int (bv2nat (bvxor ((_ int2bv 64) var676) ((_ int2bv 64) var316)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var2082=com.google.javascript.jscomp.AutoValue_JsMessage, var2522=r0, var1174=$r1, var3356=null_type, var2398=$r2, var3827=$i31, var3262=$i27, var988=$i28, var2008=$r3, var2410=$i0, var2621=$i29, var1037=$i30, var284=$z0, var2924=$s32, var2745=$i25, var60=$i26, var1975=$z1, var412=$s33, var664=$i19, var579=$i20, var2660=$r4, var3933=$i1, var2390=$i21, var1929=$i22, var2889=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var293=$r5, var417=$i2, var1392=$i23, var3171=$i24, var2248=$r6, var1466=$i34, var1734=$i17, var637=$i18, var828=$r8, var2960=$r9, var640=$i35, var980=$i15, var1900=$i16, var1001=$r10, var47=$i36, var195=$i13, var620=$i14, var3129=$z2, var2989=$s37, var3670=$i6, var2161=$i7, var3731=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2350=$r12, var3331=$i3, var879=$i8, var2684=$i9, var1774=$r13, var2863=$i4, var3042=$i10, var676=$i11, var3991=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2392=$r14, var316=$i5, var3610=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var2082, r0=var2522, $r1=var1174, null_type=var3356, $r2=var2398, $i31=var3827, $i27=var3262, $i28=var988, $r3=var2008, $i0=var2410, $i29=var2621, $i30=var1037, $z0=var284, $s32=var2924, $i25=var2745, $i26=var60, $z1=var1975, $s33=var412, $i19=var664, $i20=var579, $r4=var2660, $i1=var3933, $i21=var2390, $i22=var1929, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2889, $r5=var293, $i2=var417, $i23=var1392, $i24=var3171, $r6=var2248, $i34=var1466, $i17=var1734, $i18=var637, $r8=var828, $r9=var2960, $i35=var640, $i15=var980, $i16=var1900, $r10=var1001, $i36=var47, $i13=var195, $i14=var620, $z2=var3129, $s37=var2989, $i6=var3670, $i7=var2161, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3731, $r12=var2350, $i3=var3331, $i8=var879, $i9=var2684, $r13=var1774, $i4=var2863, $i10=var3042, $i11=var676, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3991, $r14=var2392, $i5=var316, $i12=var3610}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15