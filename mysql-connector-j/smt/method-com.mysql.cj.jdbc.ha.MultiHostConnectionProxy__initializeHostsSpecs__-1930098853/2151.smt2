(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1259 0)
(declare-sort var1290 0)
(declare-sort var1764 0)
(declare-sort var486 0)
(declare-sort var87 0)
(declare-sort var2767 0)
(declare-sort var477 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun connectionUrl/-562425441 (var1259) var1290)
(declare-fun getConnectionArgumentsAsProperties/-66798616 (var1290) var486)
(declare-fun getKeyName/-200443258 (var87) String)
(declare-fun getProperty/1391780669 (var486 String) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun autoReconnect/-562425441 (var1259) Bool)
(declare-fun var2767-init () var2767)
(declare-fun <init>/2032108350 (var2767 var477) void)
(declare-fun cast-from-var1764-to-var477 (var1764) var477)
(declare-fun cast-from-var2767-to-var1764 (var2767) var1764)
(declare-fun hostsList/-562425441 (var1259) var1764)
(declare-fun var1764_size/-959786421 (var1764) Int)
(declare-const null-var1259 var1259)
(declare-const null-var1290 var1290)
(declare-const null-var1764 var1764)
(declare-const var87-autoReconnect var87)
(declare-const var1082 var1259) ; Statement: r0 := @this: com.mysql.cj.jdbc.ha.MultiHostConnectionProxy 
(assert (not (= var1082 null-var1259)))
(declare-const var2766 var1290) ; Statement: r1 := @parameter0: com.mysql.cj.conf.ConnectionUrl 
(assert (not (= var2766 null-var1290)))
(declare-const var1341 var1764) ; Statement: r8 := @parameter1: java.util.List 
(assert (not (= var1341 null-var1764)))
(declare-const var1082!1 var1259)
(assert (not (= var1082!1 null-var1259)))
(assert (= (connectionUrl/-562425441 var1082!1) var2766)) ; Statement: r0.<com.mysql.cj.jdbc.ha.MultiHostConnectionProxy: com.mysql.cj.conf.ConnectionUrl connectionUrl> = r1 
(assert true)
(define-const var349 var486 (getConnectionArgumentsAsProperties/-66798616 var2766)) ; Statement: r2 = virtualinvoke r1.<com.mysql.cj.conf.ConnectionUrl: java.util.Properties getConnectionArgumentsAsProperties()>() 
(define-const var3125 String "true") ; Statement: $r6 = "true" 
(define-const var322 var87 var87-autoReconnect) ; Statement: $r3 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey autoReconnect> 
(assert true)
(define-const var1204 String (getKeyName/-200443258 var322)) ; Statement: $r4 = virtualinvoke $r3.<com.mysql.cj.conf.PropertyKey: java.lang.String getKeyName()>() 
(assert true)
(define-const var3741 String (getProperty/1391780669 var349 var1204)) ; Statement: $r5 = virtualinvoke r2.<java.util.Properties: java.lang.String getProperty(java.lang.String)>($r4) 
(assert true)
(define-const var2753 Bool (equalsIgnoreCase/-92311102 var3125 var3741)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r5) 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var2753 1 0) 0))) ; Cond: $z0 != 0 
(define-const var167 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= r0.<com.mysql.cj.jdbc.ha.MultiHostConnectionProxy: boolean autoReconnect> = $z2] 
(assert true) ; Non Conditional
(declare-const var1082!2 var1259)
(assert (not (= var1082!2 null-var1259)))
(assert (= (autoReconnect/-562425441 var1082!2) var167)) ; Statement: r0.<com.mysql.cj.jdbc.ha.MultiHostConnectionProxy: boolean autoReconnect> = $z2 
(define-const var2039 var2767 var2767-init) ; Statement: $r7 = new java.util.ArrayList 
(assert true)
;(assert (<init>/2032108350 var2039 (cast-from-var1764-to-var477 var1341))) ; Statement: specialinvoke $r7.<java.util.ArrayList: void <init>(java.util.Collection)>(r8) 

(declare-const var2039!1 var2767)
(declare-const var1341!1 var1764)
(declare-const var1082!3 var1259)
(assert (not (= var1082!3 null-var1259)))
(assert (= (hostsList/-562425441 var1082!3) (cast-from-var2767-to-var1764 var2039!1))) ; Statement: r0.<com.mysql.cj.jdbc.ha.MultiHostConnectionProxy: java.util.List hostsList> = $r7 
(define-const var3462 var1764 (hostsList/-562425441 var1082!3)) ; Statement: $r9 = r0.<com.mysql.cj.jdbc.ha.MultiHostConnectionProxy: java.util.List hostsList> 
(define-const var1913 Int (var1764_size/-959786421 var3462)) ; Statement: $i0 = interfaceinvoke $r9.<java.util.List: int size()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {connectionUrl/-562425441=([com.mysql.cj.jdbc.ha.MultiHostConnectionProxy], com.mysql.cj.conf.ConnectionUrl), getConnectionArgumentsAsProperties/-66798616=([com.mysql.cj.conf.ConnectionUrl], java.util.Properties), getKeyName/-200443258=([com.mysql.cj.conf.PropertyKey], java.lang.String), getProperty/1391780669=([java.util.Properties, java.lang.String], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), autoReconnect/-562425441=([com.mysql.cj.jdbc.ha.MultiHostConnectionProxy], boolean), var2767-init=([], java.util.ArrayList), <init>/2032108350=([java.util.ArrayList, java.util.Collection], void), cast-from-var1764-to-var477=([java.util.List], java.util.Collection), cast-from-var2767-to-var1764=([java.util.ArrayList], java.util.List), hostsList/-562425441=([com.mysql.cj.jdbc.ha.MultiHostConnectionProxy], java.util.List), var1764_size/-959786421=([java.util.List], int)}
; {var1259=com.mysql.cj.jdbc.ha.MultiHostConnectionProxy, var1082=r0, var1290=com.mysql.cj.conf.ConnectionUrl, var2766=r1, var1764=java.util.List, var1341=r8, var486=java.util.Properties, var349=r2, var3125=$r6, var87=com.mysql.cj.conf.PropertyKey, var322=$r3, var1204=$r4, var3741=$r5, var2753=$z0, var167=$z2, var2767=java.util.ArrayList, var2039=$r7, var477=java.util.Collection, var3462=$r9, var1913=$i0}
; {com.mysql.cj.jdbc.ha.MultiHostConnectionProxy=var1259, r0=var1082, com.mysql.cj.conf.ConnectionUrl=var1290, r1=var2766, java.util.List=var1764, r8=var1341, java.util.Properties=var486, r2=var349, $r6=var3125, com.mysql.cj.conf.PropertyKey=var87, $r3=var322, $r4=var1204, $r5=var3741, $z0=var2753, $z2=var167, java.util.ArrayList=var2767, $r7=var2039, java.util.Collection=var477, $r9=var3462, $i0=var1913}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: com.mysql.cj.jdbc.ha.MultiHostConnectionProxy;	r1 := @parameter0: com.mysql.cj.conf.ConnectionUrl;	r8 := @parameter1: java.util.List;	r0.<com.mysql.cj.jdbc.ha.MultiHostConnectionProxy: com.mysql.cj.conf.ConnectionUrl connectionUrl> = r1;	r2 = virtualinvoke r1.<com.mysql.cj.conf.ConnectionUrl: java.util.Properties getConnectionArgumentsAsProperties()>();	$r6 = "true";	$r3 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey autoReconnect>;	$r4 = virtualinvoke $r3.<com.mysql.cj.conf.PropertyKey: java.lang.String getKeyName()>();	$r5 = virtualinvoke r2.<java.util.Properties: java.lang.String getProperty(java.lang.String)>($r4);	$z0 = virtualinvoke $r6.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r5);	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= r0.<com.mysql.cj.jdbc.ha.MultiHostConnectionProxy: boolean autoReconnect> = $z2];	r0.<com.mysql.cj.jdbc.ha.MultiHostConnectionProxy: boolean autoReconnect> = $z2;	$r7 = new java.util.ArrayList;	specialinvoke $r7.<java.util.ArrayList: void <init>(java.util.Collection)>(r8);	r0.<com.mysql.cj.jdbc.ha.MultiHostConnectionProxy: java.util.List hostsList> = $r7;	$r9 = r0.<com.mysql.cj.jdbc.ha.MultiHostConnectionProxy: java.util.List hostsList>;	$i0 = interfaceinvoke $r9.<java.util.List: int size()>();	return $i0
;block_num 3