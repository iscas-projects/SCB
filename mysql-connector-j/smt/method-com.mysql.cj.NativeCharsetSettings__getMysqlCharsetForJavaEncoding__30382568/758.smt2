(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var708 0)
(declare-sort var382 0)
(declare-sort var98 0)
(declare-sort var1383 0)
(declare-sort var2939 0)
(declare-sort var2718 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun javaEncodingUcToCharsetName/-1763798038 (var708) var1383)
(declare-fun toUpperCase/398655892 (String var2939) String)
(declare-fun var1383_get/1088891777 (var1383 var2718) var2718)
(declare-fun cast-from-String-to-var2718 (String) var2718)
(declare-fun cast-from-var2718-to-String (var2718) String)
(declare-const null-var708 var708)
(declare-const null-String String)
(declare-const null-var98 var98)
(declare-const null-var1383 var1383)
(declare-const var2939-ENGLISH var2939)
(declare-const var2188 var708) ; Statement: r0 := @this: com.mysql.cj.NativeCharsetSettings 
(assert (not (= var2188 null-var708)))
(declare-const var2671 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2671 null-String)))
(declare-const var56 var98) ; Statement: r3 := @parameter1: com.mysql.cj.ServerVersion 
(assert (not (= var56 null-var98)))
(define-const var1507 var1383 (javaEncodingUcToCharsetName/-1763798038 var2188)) ; Statement: $r1 = r0.<com.mysql.cj.NativeCharsetSettings: java.util.Map javaEncodingUcToCharsetName> 
 ; Statement: if $r1 == null goto r9 = staticinvoke <com.mysql.cj.NativeCharsetSettings: java.lang.String getStaticMysqlCharsetForJavaEncoding(java.lang.String,com.mysql.cj.ServerVersion)>(r2, r3) 
(assert (not (= var1507 null-var1383))) ; Negate: Cond: $r1 == null  
(define-const var279 var1383 (javaEncodingUcToCharsetName/-1763798038 var2188)) ; Statement: $r5 = r0.<com.mysql.cj.NativeCharsetSettings: java.util.Map javaEncodingUcToCharsetName> 
(define-const var877 var2939 var2939-ENGLISH) ; Statement: $r4 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var619 String (toUpperCase/398655892 var2671 var877)) ; Statement: $r6 = virtualinvoke r2.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r4) 
(define-const var1233 var2718 (var1383_get/1088891777 var279 (cast-from-String-to-var2718 var619))) ; Statement: $r7 = interfaceinvoke $r5.<java.util.Map: java.lang.Object get(java.lang.Object)>($r6) 
(define-const var1557 String (cast-from-var2718-to-String var1233)) ; Statement: $r8 = (java.lang.String) $r7 
(define-const var1669 String var1557) ; Statement: r9 = $r8 
 ; Statement: if $r8 != null goto return r9 
(assert (not (= var1557 null-String))) ; Cond: $r8 != null 
 ; Statement: return r9 
(check-sat)
(get-model)
(get-unsat-core)
; {javaEncodingUcToCharsetName/-1763798038=([com.mysql.cj.NativeCharsetSettings], java.util.Map), toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String), var1383_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2718=([java.lang.String], java.lang.Object), cast-from-var2718-to-String=([java.lang.Object], java.lang.String)}
; {var708=com.mysql.cj.NativeCharsetSettings, var2188=r0, var2671=r2, var382=null_type, var98=com.mysql.cj.ServerVersion, var56=r3, var1383=java.util.Map, var1507=$r1, var279=$r5, var2939=java.util.Locale, var877=$r4, var619=$r6, var2718=java.lang.Object, var1233=$r7, var1557=$r8, var1669=r9}
; {com.mysql.cj.NativeCharsetSettings=var708, r0=var2188, r2=var2671, null_type=var382, com.mysql.cj.ServerVersion=var98, r3=var56, java.util.Map=var1383, $r1=var1507, $r5=var279, java.util.Locale=var2939, $r4=var877, $r6=var619, java.lang.Object=var2718, $r7=var1233, $r8=var1557, r9=var1669}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r0 := @this: com.mysql.cj.NativeCharsetSettings;	r2 := @parameter0: java.lang.String;	r3 := @parameter1: com.mysql.cj.ServerVersion;	$r1 = r0.<com.mysql.cj.NativeCharsetSettings: java.util.Map javaEncodingUcToCharsetName>;	if $r1 == null goto r9 = staticinvoke <com.mysql.cj.NativeCharsetSettings: java.lang.String getStaticMysqlCharsetForJavaEncoding(java.lang.String,com.mysql.cj.ServerVersion)>(r2, r3);	$r5 = r0.<com.mysql.cj.NativeCharsetSettings: java.util.Map javaEncodingUcToCharsetName>;	$r4 = <java.util.Locale: java.util.Locale ENGLISH>;	$r6 = virtualinvoke r2.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r4);	$r7 = interfaceinvoke $r5.<java.util.Map: java.lang.Object get(java.lang.Object)>($r6);	$r8 = (java.lang.String) $r7;	r9 = $r8;	if $r8 != null goto return r9;	return r9
;block_num 3