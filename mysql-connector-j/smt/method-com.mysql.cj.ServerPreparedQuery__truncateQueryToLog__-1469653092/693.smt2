(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1068 0)
(declare-sort var1844 0)
(declare-sort var162 0)
(declare-sort var3350 0)
(declare-sort var2990 0)
(declare-sort var3855 0)
(declare-sort var1394 0)
(declare-sort var344 0)
(declare-sort var267 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun session/-459319496 (var3350) var162)
(declare-fun cast-from-var1068-to-var3350 (var1068) var3350)
(declare-fun getPropertySet/92288684 (var3855) var2990)
(declare-fun cast-from-var162-to-var3855 (var162) var3855)
(declare-fun var2990_getIntegerProperty/-1872693310 (var2990 var1394) var344)
(declare-fun var344_getValue/1633538672 (var344) var267)
(declare-fun cast-from-var267-to-Int (var267) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1068 var1068)
(declare-const null-String String)
(declare-const var1394-maxQuerySizeToLog var1394)
(declare-const var1366 var1068) ; Statement: r0 := @this: com.mysql.cj.ServerPreparedQuery 
(assert (not (= var1366 null-var1068)))
(declare-const var2906 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var2906 null-String)))
(define-const var3364 var162 (session/-459319496 (cast-from-var1068-to-var3350 var1366))) ; Statement: $r1 = r0.<com.mysql.cj.ServerPreparedQuery: com.mysql.cj.NativeSession session> 
(assert true)
(define-const var1542 var2990 (getPropertySet/92288684 (cast-from-var162-to-var3855 var3364))) ; Statement: $r3 = virtualinvoke $r1.<com.mysql.cj.NativeSession: com.mysql.cj.conf.PropertySet getPropertySet()>() 
(define-const var3853 var1394 var1394-maxQuerySizeToLog) ; Statement: $r2 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey maxQuerySizeToLog> 
(define-const var3590 var344 (var2990_getIntegerProperty/-1872693310 var1542 var3853)) ; Statement: $r4 = interfaceinvoke $r3.<com.mysql.cj.conf.PropertySet: com.mysql.cj.conf.RuntimeProperty getIntegerProperty(com.mysql.cj.conf.PropertyKey)>($r2) 
(define-const var1322 var267 (var344_getValue/1633538672 var3590)) ; Statement: $r5 = interfaceinvoke $r4.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var81 Int (cast-from-var267-to-Int var1322)) ; Statement: $r6 = (java.lang.Integer) $r5 
(assert true)
(define-const var558 Int (intValue/-1815674922 var81)) ; Statement: i0 = virtualinvoke $r6.<java.lang.Integer: int intValue()>() 
(assert true)
(define-const var2240 Int (length/-134980193 var2906)) ; Statement: $i1 = virtualinvoke r7.<java.lang.String: int length()>() 
 ; Statement: if $i1 <= i0 goto r11 = r7 
(assert (<= var2240 var558)) ; Cond: $i1 <= i0 
(define-const var2944 String var2906) ; Statement: r11 = r7 
(assert true) ; Non Conditional
 ; Statement: return r11 
(check-sat)
(get-model)
(get-unsat-core)
; {session/-459319496=([com.mysql.cj.AbstractQuery], com.mysql.cj.NativeSession), cast-from-var1068-to-var3350=([com.mysql.cj.ServerPreparedQuery], com.mysql.cj.AbstractQuery), getPropertySet/92288684=([com.mysql.cj.CoreSession], com.mysql.cj.conf.PropertySet), cast-from-var162-to-var3855=([com.mysql.cj.NativeSession], com.mysql.cj.CoreSession), var2990_getIntegerProperty/-1872693310=([com.mysql.cj.conf.PropertySet, com.mysql.cj.conf.PropertyKey], com.mysql.cj.conf.RuntimeProperty), var344_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var267-to-Int=([java.lang.Object], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int), length/-134980193=([java.lang.String], int)}
; {var1068=com.mysql.cj.ServerPreparedQuery, var1366=r0, var2906=r7, var1844=null_type, var162=com.mysql.cj.NativeSession, var3350=com.mysql.cj.AbstractQuery, var3364=$r1, var2990=com.mysql.cj.conf.PropertySet, var3855=com.mysql.cj.CoreSession, var1542=$r3, var1394=com.mysql.cj.conf.PropertyKey, var3853=$r2, var344=com.mysql.cj.conf.RuntimeProperty, var3590=$r4, var267=java.lang.Object, var1322=$r5, var81=$r6, var558=i0, var2240=$i1, var2944=r11}
; {com.mysql.cj.ServerPreparedQuery=var1068, r0=var1366, r7=var2906, null_type=var1844, com.mysql.cj.NativeSession=var162, com.mysql.cj.AbstractQuery=var3350, $r1=var3364, com.mysql.cj.conf.PropertySet=var2990, com.mysql.cj.CoreSession=var3855, $r3=var1542, com.mysql.cj.conf.PropertyKey=var1394, $r2=var3853, com.mysql.cj.conf.RuntimeProperty=var344, $r4=var3590, java.lang.Object=var267, $r5=var1322, $r6=var81, i0=var558, $i1=var2240, r11=var2944}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.mysql.cj.ServerPreparedQuery;	r7 := @parameter0: java.lang.String;	$r1 = r0.<com.mysql.cj.ServerPreparedQuery: com.mysql.cj.NativeSession session>;	$r3 = virtualinvoke $r1.<com.mysql.cj.NativeSession: com.mysql.cj.conf.PropertySet getPropertySet()>();	$r2 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey maxQuerySizeToLog>;	$r4 = interfaceinvoke $r3.<com.mysql.cj.conf.PropertySet: com.mysql.cj.conf.RuntimeProperty getIntegerProperty(com.mysql.cj.conf.PropertyKey)>($r2);	$r5 = interfaceinvoke $r4.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r6 = (java.lang.Integer) $r5;	i0 = virtualinvoke $r6.<java.lang.Integer: int intValue()>();	$i1 = virtualinvoke r7.<java.lang.String: int length()>();	if $i1 <= i0 goto r11 = r7;	r11 = r7;	return r11
;block_num 3