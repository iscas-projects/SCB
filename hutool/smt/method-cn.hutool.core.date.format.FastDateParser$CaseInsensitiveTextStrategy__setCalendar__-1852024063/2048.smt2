(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3692 0)
(declare-sort var1319 0)
(declare-sort var392 0)
(declare-sort var3705 0)
(declare-sort var1353 0)
(declare-sort var3408 0)
(declare-sort var3729 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lKeyValues/-93179322 (var3692) var1353)
(declare-fun locale/-93179322 (var3692) var3408)
(declare-fun toLowerCase/1946809429 (String var3408) String)
(declare-fun var1353_get/1088891777 (var1353 var3729) var3729)
(declare-fun cast-from-String-to-var3729 (String) var3729)
(declare-fun cast-from-var3729-to-Int (var3729) Int)
(declare-fun field/-93179322 (var3692) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun set/-1736220299 (var392 Int Int) void)
(declare-const null-var3692 var3692)
(declare-const null-var1319 var1319)
(declare-const null-var392 var392)
(declare-const null-String String)
(declare-const var2427 var3692) ; Statement: r0 := @this: cn.hutool.core.date.format.FastDateParser$CaseInsensitiveTextStrategy 
(assert (not (= var2427 null-var3692)))
(declare-const var3920 var1319) ; Statement: r8 := @parameter0: cn.hutool.core.date.format.FastDateParser 
(assert (not (= var3920 null-var1319)))
(declare-const var3863 var392) ; Statement: r7 := @parameter1: java.util.Calendar 
(assert (not (= var3863 null-var392)))
(declare-const var3204 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var3204 null-String)))
(define-const var2399 var1353 (lKeyValues/-93179322 var2427)) ; Statement: $r3 = r0.<cn.hutool.core.date.format.FastDateParser$CaseInsensitiveTextStrategy: java.util.Map lKeyValues> 
(define-const var1398 var3408 (locale/-93179322 var2427)) ; Statement: $r2 = r0.<cn.hutool.core.date.format.FastDateParser$CaseInsensitiveTextStrategy: java.util.Locale locale> 
(assert true)
(define-const var2893 String (toLowerCase/1946809429 var3204 var1398)) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(define-const var3994 var3729 (var1353_get/1088891777 var2399 (cast-from-String-to-var3729 var2893))) ; Statement: $r5 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r4) 
(define-const var3639 Int (cast-from-var3729-to-Int var3994)) ; Statement: r6 = (java.lang.Integer) $r5 
(define-const var1541 Int (field/-93179322 var2427)) ; Statement: $i0 = r0.<cn.hutool.core.date.format.FastDateParser$CaseInsensitiveTextStrategy: int field> 
(assert true)
(define-const var1816 Int (intValue/-1815674922 var3639)) ; Statement: $i1 = virtualinvoke r6.<java.lang.Integer: int intValue()>() 
(assert true)
;(assert (set/-1736220299 var3863 var1541 var1816)) ; Statement: virtualinvoke r7.<java.util.Calendar: void set(int,int)>($i0, $i1) 

(declare-const var3863!1 var392)
(declare-const var1541!1 Int)
(declare-const var1816!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {lKeyValues/-93179322=([cn.hutool.core.date.format.FastDateParser$CaseInsensitiveTextStrategy], java.util.Map), locale/-93179322=([cn.hutool.core.date.format.FastDateParser$CaseInsensitiveTextStrategy], java.util.Locale), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var1353_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3729=([java.lang.String], java.lang.Object), cast-from-var3729-to-Int=([java.lang.Object], java.lang.Integer), field/-93179322=([cn.hutool.core.date.format.FastDateParser$CaseInsensitiveTextStrategy], int), intValue/-1815674922=([java.lang.Integer], int), set/-1736220299=([java.util.Calendar, int, int], void)}
; {var3692=cn.hutool.core.date.format.FastDateParser$CaseInsensitiveTextStrategy, var2427=r0, var1319=cn.hutool.core.date.format.FastDateParser, var3920=r8, var392=java.util.Calendar, var3863=r7, var3204=r1, var3705=null_type, var1353=java.util.Map, var2399=$r3, var3408=java.util.Locale, var1398=$r2, var2893=$r4, var3729=java.lang.Object, var3994=$r5, var3639=r6, var1541=$i0, var1816=$i1}
; {cn.hutool.core.date.format.FastDateParser$CaseInsensitiveTextStrategy=var3692, r0=var2427, cn.hutool.core.date.format.FastDateParser=var1319, r8=var3920, java.util.Calendar=var392, r7=var3863, r1=var3204, null_type=var3705, java.util.Map=var1353, $r3=var2399, java.util.Locale=var3408, $r2=var1398, $r4=var2893, java.lang.Object=var3729, $r5=var3994, r6=var3639, $i0=var1541, $i1=var1816}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: cn.hutool.core.date.format.FastDateParser$CaseInsensitiveTextStrategy;	r8 := @parameter0: cn.hutool.core.date.format.FastDateParser;	r7 := @parameter1: java.util.Calendar;	r1 := @parameter2: java.lang.String;	$r3 = r0.<cn.hutool.core.date.format.FastDateParser$CaseInsensitiveTextStrategy: java.util.Map lKeyValues>;	$r2 = r0.<cn.hutool.core.date.format.FastDateParser$CaseInsensitiveTextStrategy: java.util.Locale locale>;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	$r5 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r4);	r6 = (java.lang.Integer) $r5;	$i0 = r0.<cn.hutool.core.date.format.FastDateParser$CaseInsensitiveTextStrategy: int field>;	$i1 = virtualinvoke r6.<java.lang.Integer: int intValue()>();	virtualinvoke r7.<java.util.Calendar: void set(int,int)>($i0, $i1);	return
;block_num 1