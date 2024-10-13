(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2590 0)
(declare-sort var2055 0)
(declare-sort var351 0)
(declare-sort var3261 0)
(declare-sort var1781 0)
(declare-sort var2896 0)
(declare-sort var2074 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun locale/-1318375070 (var2590) var1781)
(declare-fun toLowerCase/1946809429 (String var1781) String)
(declare-fun lKeyValues/-1318375070 (var2590) var2896)
(declare-fun var2896_get/1088891777 (var2896 var2074) var2074)
(declare-fun cast-from-String-to-var2074 (String) var2074)
(declare-fun cast-from-var2074-to-Int (var2074) Int)
(declare-fun field/-1318375070 (var2590) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun set/-1736220299 (var351 Int Int) void)
(declare-const null-var2590 var2590)
(declare-const null-var2055 var2055)
(declare-const null-var351 var351)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1225 var2590) ; Statement: r1 := @this: org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy 
(assert (not (= var1225 null-var2590)))
(declare-const var1935 var2055) ; Statement: r13 := @parameter0: org.apache.commons.lang3.time.FastDateParser 
(assert (not (= var1935 null-var2055)))
(declare-const var3779 var351) ; Statement: r6 := @parameter1: java.util.Calendar 
(assert (not (= var3779 null-var351)))
(declare-const var3044 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var3044 null-String)))
(define-const var149 var1781 (locale/-1318375070 var1225)) ; Statement: $r2 = r1.<org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy: java.util.Locale locale> 
(assert true)
(define-const var2407 String (toLowerCase/1946809429 var3044 var149)) ; Statement: r3 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(define-const var1270 var2896 (lKeyValues/-1318375070 var1225)) ; Statement: $r4 = r1.<org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy: java.util.Map lKeyValues> 
(define-const var68 var2074 (var2896_get/1088891777 var1270 (cast-from-String-to-var2074 var2407))) ; Statement: $r5 = interfaceinvoke $r4.<java.util.Map: java.lang.Object get(java.lang.Object)>(r3) 
(define-const var2531 Int (cast-from-var2074-to-Int var68)) ; Statement: r14 = (java.lang.Integer) $r5 
 ; Statement: if r14 != null goto $i0 = r1.<org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy: int field> 
(assert (not (= var2531 null-Int))) ; Cond: r14 != null 
(define-const var196 Int (field/-1318375070 var1225)) ; Statement: $i0 = r1.<org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy: int field> 
 ; Statement: if 9 != $i0 goto $i1 = r1.<org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy: int field> 
(assert (not (= 9 var196))) ; Cond: 9 != $i0 
(define-const var3591 Int (field/-1318375070 var1225)) ; Statement: $i1 = r1.<org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy: int field> 
(assert true)
(define-const var1798 Int (intValue/-1815674922 var2531)) ; Statement: $i2 = virtualinvoke r14.<java.lang.Integer: int intValue()>() 
(assert true)
;(assert (set/-1736220299 var3779 var3591 var1798)) ; Statement: virtualinvoke r6.<java.util.Calendar: void set(int,int)>($i1, $i2) 

(declare-const var3779!1 var351)
(declare-const var3591!1 Int)
(declare-const var1798!1 Int)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {locale/-1318375070=([org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy], java.util.Locale), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), lKeyValues/-1318375070=([org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy], java.util.Map), var2896_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2074=([java.lang.String], java.lang.Object), cast-from-var2074-to-Int=([java.lang.Object], java.lang.Integer), field/-1318375070=([org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy], int), intValue/-1815674922=([java.lang.Integer], int), set/-1736220299=([java.util.Calendar, int, int], void)}
; {var2590=org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy, var1225=r1, var2055=org.apache.commons.lang3.time.FastDateParser, var1935=r13, var351=java.util.Calendar, var3779=r6, var3044=r0, var3261=null_type, var1781=java.util.Locale, var149=$r2, var2407=r3, var2896=java.util.Map, var1270=$r4, var2074=java.lang.Object, var68=$r5, var2531=r14, var196=$i0, var3591=$i1, var1798=$i2}
; {org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy=var2590, r1=var1225, org.apache.commons.lang3.time.FastDateParser=var2055, r13=var1935, java.util.Calendar=var351, r6=var3779, r0=var3044, null_type=var3261, java.util.Locale=var1781, $r2=var149, r3=var2407, java.util.Map=var2896, $r4=var1270, java.lang.Object=var2074, $r5=var68, r14=var2531, $i0=var196, $i1=var3591, $i2=var1798}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r1 := @this: org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy;	r13 := @parameter0: org.apache.commons.lang3.time.FastDateParser;	r6 := @parameter1: java.util.Calendar;	r0 := @parameter2: java.lang.String;	$r2 = r1.<org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy: java.util.Locale locale>;	r3 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	$r4 = r1.<org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy: java.util.Map lKeyValues>;	$r5 = interfaceinvoke $r4.<java.util.Map: java.lang.Object get(java.lang.Object)>(r3);	r14 = (java.lang.Integer) $r5;	if r14 != null goto $i0 = r1.<org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy: int field>;	$i0 = r1.<org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy: int field>;	if 9 != $i0 goto $i1 = r1.<org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy: int field>;	$i1 = r1.<org.apache.commons.lang3.time.FastDateParser$CaseInsensitiveTextStrategy: int field>;	$i2 = virtualinvoke r14.<java.lang.Integer: int intValue()>();	virtualinvoke r6.<java.util.Calendar: void set(int,int)>($i1, $i2);	return
;block_num 4