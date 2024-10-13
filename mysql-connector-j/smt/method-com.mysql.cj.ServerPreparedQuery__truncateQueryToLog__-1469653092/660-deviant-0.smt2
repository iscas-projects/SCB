(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3447 0)
(declare-sort var202 0)
(declare-sort var1597 0)
(declare-sort var816 0)
(declare-sort var1971 0)
(declare-sort var3459 0)
(declare-sort var1405 0)
(declare-sort var2772 0)
(declare-sort var1976 0)
(declare-sort var476 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun session/-459319496 (var816) var1597)
(declare-fun cast-from-var3447-to-var816 (var3447) var816)
(declare-fun getPropertySet/92288684 (var3459) var1971)
(declare-fun cast-from-var1597-to-var3459 (var1597) var3459)
(declare-fun var1971_getIntegerProperty/-1872693310 (var1971 var1405) var2772)
(declare-fun var2772_getValue/1633538672 (var2772) var1976)
(declare-fun cast-from-var1976-to-Int (var1976) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var476_getString/-1547297038 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3447 var3447)
(declare-const null-String String)
(declare-const var1405-maxQuerySizeToLog var1405)
(declare-const var3167 var3447) ; Statement: r0 := @this: com.mysql.cj.ServerPreparedQuery 
(assert (not (= var3167 null-var3447)))
(declare-const var1342 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var1342 null-String)))
(define-const var1464 var1597 (session/-459319496 (cast-from-var3447-to-var816 var3167))) ; Statement: $r1 = r0.<com.mysql.cj.ServerPreparedQuery: com.mysql.cj.NativeSession session> 
(assert true)
(define-const var3267 var1971 (getPropertySet/92288684 (cast-from-var1597-to-var3459 var1464))) ; Statement: $r3 = virtualinvoke $r1.<com.mysql.cj.NativeSession: com.mysql.cj.conf.PropertySet getPropertySet()>() 
(define-const var1183 var1405 var1405-maxQuerySizeToLog) ; Statement: $r2 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey maxQuerySizeToLog> 
(define-const var2084 var2772 (var1971_getIntegerProperty/-1872693310 var3267 var1183)) ; Statement: $r4 = interfaceinvoke $r3.<com.mysql.cj.conf.PropertySet: com.mysql.cj.conf.RuntimeProperty getIntegerProperty(com.mysql.cj.conf.PropertyKey)>($r2) 
(define-const var3900 var1976 (var2772_getValue/1633538672 var2084)) ; Statement: $r5 = interfaceinvoke $r4.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var3071 Int (cast-from-var1976-to-Int var3900)) ; Statement: $r6 = (java.lang.Integer) $r5 
(assert true)
(define-const var3909 Int (intValue/-1815674922 var3071)) ; Statement: i0 = virtualinvoke $r6.<java.lang.Integer: int intValue()>() 
(assert true)
(define-const var218 Int (length/-134980193 var1342)) ; Statement: $i1 = virtualinvoke r7.<java.lang.String: int length()>() 
 ; Statement: if $i1 <= i0 goto r11 = r7 
(assert (not (<= var218 var3909))) ; Negate: Cond: $i1 <= i0  
(define-const var913 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(define-const var3304 Int (+ var3909 12)) ; Statement: $i2 = i0 + 12 
(assert true)
;(assert (<init>/543593434 var913 var3304)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i2) 

(declare-const var913!1 String)
(declare-const var3304!1 Int)
(assert (not (and true (and (>= 0 0) (>= (str.len var1342) var3909) (>= var3909 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {session/-459319496=([com.mysql.cj.AbstractQuery], com.mysql.cj.NativeSession), cast-from-var3447-to-var816=([com.mysql.cj.ServerPreparedQuery], com.mysql.cj.AbstractQuery), getPropertySet/92288684=([com.mysql.cj.CoreSession], com.mysql.cj.conf.PropertySet), cast-from-var1597-to-var3459=([com.mysql.cj.NativeSession], com.mysql.cj.CoreSession), var1971_getIntegerProperty/-1872693310=([com.mysql.cj.conf.PropertySet, com.mysql.cj.conf.PropertyKey], com.mysql.cj.conf.RuntimeProperty), var2772_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var1976-to-Int=([java.lang.Object], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var476_getString/-1547297038=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3447=com.mysql.cj.ServerPreparedQuery, var3167=r0, var1342=r7, var202=null_type, var1597=com.mysql.cj.NativeSession, var816=com.mysql.cj.AbstractQuery, var1464=$r1, var1971=com.mysql.cj.conf.PropertySet, var3459=com.mysql.cj.CoreSession, var3267=$r3, var1405=com.mysql.cj.conf.PropertyKey, var1183=$r2, var2772=com.mysql.cj.conf.RuntimeProperty, var2084=$r4, var1976=java.lang.Object, var3900=$r5, var3071=$r6, var3909=i0, var218=$i1, var913=$r8, var3304=$i2, var3107=$r9, var476=com.mysql.cj.Messages, var2623=$r10, var1142=r11}
; {com.mysql.cj.ServerPreparedQuery=var3447, r0=var3167, r7=var1342, null_type=var202, com.mysql.cj.NativeSession=var1597, com.mysql.cj.AbstractQuery=var816, $r1=var1464, com.mysql.cj.conf.PropertySet=var1971, com.mysql.cj.CoreSession=var3459, $r3=var3267, com.mysql.cj.conf.PropertyKey=var1405, $r2=var1183, com.mysql.cj.conf.RuntimeProperty=var2772, $r4=var2084, java.lang.Object=var1976, $r5=var3900, $r6=var3071, i0=var3909, $i1=var218, $r8=var913, $i2=var3304, $r9=var3107, com.mysql.cj.Messages=var476, $r10=var2623, r11=var1142}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.ServerPreparedQuery;	r7 := @parameter0: java.lang.String;	$r1 = r0.<com.mysql.cj.ServerPreparedQuery: com.mysql.cj.NativeSession session>;	$r3 = virtualinvoke $r1.<com.mysql.cj.NativeSession: com.mysql.cj.conf.PropertySet getPropertySet()>();	$r2 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey maxQuerySizeToLog>;	$r4 = interfaceinvoke $r3.<com.mysql.cj.conf.PropertySet: com.mysql.cj.conf.RuntimeProperty getIntegerProperty(com.mysql.cj.conf.PropertyKey)>($r2);	$r5 = interfaceinvoke $r4.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r6 = (java.lang.Integer) $r5;	i0 = virtualinvoke $r6.<java.lang.Integer: int intValue()>();	$i1 = virtualinvoke r7.<java.lang.String: int length()>();	if $i1 <= i0 goto r11 = r7;	$r8 = new java.lang.StringBuilder;	$i2 = i0 + 12;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i2);	$r9 = virtualinvoke r7.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r10 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("MysqlIO.25");	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return r11];	return r11
;block_num 3