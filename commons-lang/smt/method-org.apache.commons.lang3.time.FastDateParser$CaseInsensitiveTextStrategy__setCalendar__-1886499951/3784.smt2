(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1341 0)
(declare-sort var1455 0)
(declare-sort var1734 0)
(declare-sort var1601 0)
(declare-sort var436 0)
(declare-sort var1168 0)
(declare-sort var3991 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun locale/-1318375070 (var1341) var436)
(declare-fun toLowerCase/1946809429 (String var436) String)
(declare-fun lKeyValues/-1318375070 (var1341) var1168)
(declare-fun var1168_get/1088891777 (var1168 var3991) var3991)
(declare-fun cast-from-String-to-var3991 (String) var3991)
(declare-fun cast-from-var3991-to-Int (var3991) Int)
(declare-fun field/-1318375070 (var1341) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-const null-var1341 var1341)
(declare-const null-var1455 var1455)
(declare-const null-var1734 var1734)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3872 var1341) ; Statement: r1 := @this: org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy 
(assert (not (= var3872 null-var1341)))
(declare-const var3866 var1455) ; Statement: r13 := @parameter0: org.apache.commons.lang3.time.FastDateParser 
(assert (not (= var3866 null-var1455)))
(declare-const var2133 var1734) ; Statement: r6 := @parameter1: java.util.Calendar 
(assert (not (= var2133 null-var1734)))
(declare-const var2628 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var2628 null-String)))
(define-const var1955 var436 (locale/-1318375070 var3872)) ; Statement: $r2 = r1.<org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy: java.util.Locale locale> 
(assert true)
(define-const var27 String (toLowerCase/1946809429 var2628 var1955)) ; Statement: r3 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(define-const var3883 var1168 (lKeyValues/-1318375070 var3872)) ; Statement: $r4 = r1.<org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy: java.util.Map lKeyValues> 
(define-const var1935 var3991 (var1168_get/1088891777 var3883 (cast-from-String-to-var3991 var27))) ; Statement: $r5 = interfaceinvoke $r4.<java.util.Map: java.lang.Object get(java.lang.Object)>(r3) 
(define-const var3368 Int (cast-from-var3991-to-Int var1935)) ; Statement: r14 = (java.lang.Integer) $r5 
 ; Statement: if r14 != null goto $i0 = r1.<org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy: int field> 
(assert (not (= var3368 null-Int))) ; Cond: r14 != null 
(define-const var3108 Int (field/-1318375070 var3872)) ; Statement: $i0 = r1.<org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy: int field> 
 ; Statement: if 9 != $i0 goto $i1 = r1.<org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy: int field> 
(assert (not (not (= 9 var3108)))) ; Negate: Cond: 9 != $i0  
(assert true)
(define-const var1001 Int (intValue/-1815674922 var3368)) ; Statement: $i3 = virtualinvoke r14.<java.lang.Integer: int intValue()>() 
 ; Statement: if $i3 > 1 goto return 
(assert (> var1001 1)) ; Cond: $i3 > 1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {locale/-1318375070=([org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy], java.util.Locale), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), lKeyValues/-1318375070=([org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy], java.util.Map), var1168_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3991=([java.lang.String], java.lang.Object), cast-from-var3991-to-Int=([java.lang.Object], java.lang.Integer), field/-1318375070=([org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy], int), intValue/-1815674922=([java.lang.Integer], int)}
; {var1341=org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy, var3872=r1, var1455=org.apache.commons.lang3.time.FastDateParser, var3866=r13, var1734=java.util.Calendar, var2133=r6, var2628=r0, var1601=null_type, var436=java.util.Locale, var1955=$r2, var27=r3, var1168=java.util.Map, var3883=$r4, var3991=java.lang.Object, var1935=$r5, var3368=r14, var3108=$i0, var1001=$i3}
; {org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy=var1341, r1=var3872, org.apache.commons.lang3.time.FastDateParser=var1455, r13=var3866, java.util.Calendar=var1734, r6=var2133, r0=var2628, null_type=var1601, java.util.Locale=var436, $r2=var1955, r3=var27, java.util.Map=var1168, $r4=var3883, java.lang.Object=var3991, $r5=var1935, r14=var3368, $i0=var3108, $i3=var1001}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r1 := @this: org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy;	r13 := @parameter0: org.apache.commons.lang3.time.FastDateParser;	r6 := @parameter1: java.util.Calendar;	r0 := @parameter2: java.lang.String;	$r2 = r1.<org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy: java.util.Locale locale>;	r3 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	$r4 = r1.<org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy: java.util.Map lKeyValues>;	$r5 = interfaceinvoke $r4.<java.util.Map: java.lang.Object get(java.lang.Object)>(r3);	r14 = (java.lang.Integer) $r5;	if r14 != null goto $i0 = r1.<org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy: int field>;	$i0 = r1.<org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy: int field>;	if 9 != $i0 goto $i1 = r1.<org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy: int field>;	$i3 = virtualinvoke r14.<java.lang.Integer: int intValue()>();	if $i3 > 1 goto return;	return
;block_num 4