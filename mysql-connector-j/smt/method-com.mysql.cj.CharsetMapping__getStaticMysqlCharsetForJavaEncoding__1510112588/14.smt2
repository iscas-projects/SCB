(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1278 0)
(declare-sort var759 0)
(declare-sort var3692 0)
(declare-sort var1178 0)
(declare-sort var1491 0)
(declare-sort var2876 0)
(declare-sort var3411 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toUpperCase/398655892 (String var1491) String)
(declare-fun var3692_get/1088891777 (var3692 var2876) var2876)
(declare-fun cast-from-String-to-var2876 (String) var2876)
(declare-fun cast-from-var2876-to-var3411 (var2876) var3411)
(declare-const null-String String)
(declare-const null-var759 var759)
(declare-const var1178-JAVA_ENCODING_UC_TO_MYSQL_CHARSET var3692)
(declare-const var1491-ENGLISH var1491)
(declare-const null-var3411 var3411)
(declare-const var2858 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2858 null-String)))
(declare-const var2529 var759) ; Statement: r6 := @parameter1: com.mysql.cj.ServerVersion 
(assert (not (= var2529 null-var759)))
(define-const var487 var3692 var1178-JAVA_ENCODING_UC_TO_MYSQL_CHARSET) ; Statement: $r2 = <com.mysql.cj.CharsetMapping: java.util.Map JAVA_ENCODING_UC_TO_MYSQL_CHARSET> 
(define-const var1044 var1491 var1491-ENGLISH) ; Statement: $r1 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var1654 String (toUpperCase/398655892 var2858 var1044)) ; Statement: $r3 = virtualinvoke r0.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r1) 
(define-const var3300 var2876 (var3692_get/1088891777 var487 (cast-from-String-to-var2876 var1654))) ; Statement: $r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3) 
(define-const var1474 var3411 (cast-from-var2876-to-var3411 var3300)) ; Statement: r5 = (java.util.List) $r4 
 ; Statement: if r5 == null goto return null 
(assert (= var1474 null-var3411)) ; Cond: r5 == null 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String), var3692_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2876=([java.lang.String], java.lang.Object), cast-from-var2876-to-var3411=([java.lang.Object], java.util.List)}
; {var2858=r0, var1278=null_type, var759=com.mysql.cj.ServerVersion, var2529=r6, var3692=java.util.Map, var1178=com.mysql.cj.CharsetMapping, var487=$r2, var1491=java.util.Locale, var1044=$r1, var1654=$r3, var2876=java.lang.Object, var3300=$r4, var3411=java.util.List, var1474=r5}
; {r0=var2858, null_type=var1278, com.mysql.cj.ServerVersion=var759, r6=var2529, java.util.Map=var3692, com.mysql.cj.CharsetMapping=var1178, $r2=var487, java.util.Locale=var1491, $r1=var1044, $r3=var1654, java.lang.Object=var2876, $r4=var3300, java.util.List=var3411, r5=var1474}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r6 := @parameter1: com.mysql.cj.ServerVersion;	$r2 = <com.mysql.cj.CharsetMapping: java.util.Map JAVA_ENCODING_UC_TO_MYSQL_CHARSET>;	$r1 = <java.util.Locale: java.util.Locale ENGLISH>;	$r3 = virtualinvoke r0.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r1);	$r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3);	r5 = (java.util.List) $r4;	if r5 == null goto return null;	return null
;block_num 2