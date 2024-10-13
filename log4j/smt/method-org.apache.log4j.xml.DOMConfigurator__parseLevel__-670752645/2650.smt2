(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3726 0)
(declare-sort var208 0)
(declare-sort var3406 0)
(declare-sort var1081 0)
(declare-sort var1331 0)
(declare-sort var126 0)
(declare-sort var1459 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1326171653 (var1081) String)
(declare-fun cast-from-var3406-to-var1081 (var3406) var1081)
(declare-fun var208_getAttribute/210607306 (var208 String) String)
(declare-fun subst/-1514982940 (var3726 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1331_debug/381960894 (String) void)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var1331_error/-402343703 (String) void)
(declare-fun getLevel/-350490789 (var1081) var126)
(declare-fun append/-143899486 (String var1459) String)
(declare-fun cast-from-var126-to-var1459 (var126) var1459)
(declare-const null-var3726 var3726)
(declare-const null-var208 var208)
(declare-const null-var3406 var3406)
(declare-const null-Bool Bool)
(declare-const var936 var3726) ; Statement: r1 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var936 null-var3726)))
(declare-const var1337 var208) ; Statement: r2 := @parameter0: org.w3c.dom.Element 
(assert (not (= var1337 null-var208)))
(declare-const var1846 var3406) ; Statement: r0 := @parameter1: org.apache.log4j.Logger 
(assert (not (= var1846 null-var3406)))
(declare-const var1595 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var1595 null-Bool)))
(assert true)
(define-const var848 String (getName/1326171653 (cast-from-var3406-to-var1081 var1846))) ; Statement: r31 = virtualinvoke r0.<org.apache.log4j.Logger: java.lang.String getName()>() 
 ; Statement: if z0 == 0 goto $r3 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("value") 
(assert (not (= (ite var1595 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var848!1 String "root") ; Statement: r31 = "root" 
(assert true) ; Non Conditional
(define-const var333 String (var208_getAttribute/210607306 var1337 "value")) ; Statement: $r3 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("value") 
(assert true)
(define-const var1158 String (subst/-1514982940 var936 var333)) ; Statement: $r28 = virtualinvoke r1.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r3) 
(define-const var930 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var930)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var930!1 String)
(assert true)
(define-const var1925 String (append/1560614132 var930!1 "Level value for ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Level value for ") 
(declare-const var930!2 String)
(assert (str.prefixof var930!1 var930!2))
(assert true)
(define-const var1194 String (append/1560614132 var1925 var848!1)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r31) 
(declare-const var1925!1 String)
(assert (str.prefixof var1925 var1925!1))
(assert true)
(define-const var330 String (append/1560614132 var1194 " is  [")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" is  [") 
(declare-const var1194!1 String)
(assert (str.prefixof var1194 var1194!1))
(assert true)
(define-const var1034 String (append/1560614132 var330 var1158)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r28) 
(declare-const var330!1 String)
(assert (str.prefixof var330 var330!1))
(assert true)
(define-const var2298 String (append/1560614132 var1034 "].")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var1034!1 String)
(assert (str.prefixof var1034 var1034!1))
(assert true)
(define-const var756 String (toString/-222306083 var2298)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1331_debug/381960894 var756)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r10) 

(declare-const var756!1 String)
(define-const var3492 String "inherited") ; Statement: $r11 = "inherited" 
(assert true)
(define-const var597 Bool (equalsIgnoreCase/-92311102 var3492 var1158)) ; Statement: $z1 = virtualinvoke $r11.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r28) 
 ; Statement: if $z1 != 0 goto (branch) 
(assert (not (= (ite var597 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: if z0 == 0 goto virtualinvoke r0.<org.apache.log4j.Logger: void setLevel(org.apache.log4j.Level)>(null) 
(assert (not (= (ite var1595 1 0) 0))) ; Negate: Cond: z0 == 0  
;(assert (var1331_error/-402343703 "Root level cannot be inherited. Ignoring directive.")) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>("Root level cannot be inherited. Ignoring directive.") 

(declare-const var97 String)
 ; Statement: goto [?= $r38 = new java.lang.StringBuffer] 
(assert true) ; Non Conditional
(define-const var3752 String String-init) ; Statement: $r38 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3752)) ; Statement: specialinvoke $r38.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3752!1 String)
(assert true)
(define-const var1569 String (append/1560614132 var3752!1 var848!1)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r31) 
(declare-const var3752!2 String)
(assert (str.prefixof var3752!1 var3752!2))
(assert true)
(define-const var3549 String (append/1560614132 var1569 " level set to ")) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" level set to ") 
(declare-const var1569!1 String)
(assert (str.prefixof var1569 var1569!1))
(assert true)
(define-const var465 var126 (getLevel/-350490789 (cast-from-var3406-to-var1081 var1846))) ; Statement: $r41 = virtualinvoke r0.<org.apache.log4j.Logger: org.apache.log4j.Level getLevel()>() 
(assert true)
(define-const var2776 String (append/-143899486 var3549 (cast-from-var126-to-var1459 var465))) ; Statement: $r42 = virtualinvoke $r40.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>($r41) 
(assert true)
(define-const var3330 String (toString/-222306083 var2776)) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1331_debug/381960894 var3330)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r43) 

(declare-const var3330!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1326171653=([org.apache.log4j.Category], java.lang.String), cast-from-var3406-to-var1081=([org.apache.log4j.Logger], org.apache.log4j.Category), var208_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1331_debug/381960894=([java.lang.String], void), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var1331_error/-402343703=([java.lang.String], void), getLevel/-350490789=([org.apache.log4j.Category], org.apache.log4j.Level), append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-var126-to-var1459=([org.apache.log4j.Level], java.lang.Object)}
; {var3726=org.apache.log4j.xml.DOMConfigurator, var936=r1, var208=org.w3c.dom.Element, var1337=r2, var3406=org.apache.log4j.Logger, var1846=r0, var1595=z0, var1081=org.apache.log4j.Category, var848=r31, var333=$r3, var1158=$r28, var930=$r4, var1925=$r5, var1194=$r6, var330=$r7, var1034=$r8, var2298=$r9, var756=$r10, var1331=org.apache.log4j.helpers.LogLog, var3492=$r11, var597=$z1, var97="Root level cannot be inherited. Ignoring directive.", var3752=$r38, var1569=$r39, var3549=$r40, var126=org.apache.log4j.Level, var465=$r41, var1459=java.lang.Object, var2776=$r42, var3330=$r43}
; {org.apache.log4j.xml.DOMConfigurator=var3726, r1=var936, org.w3c.dom.Element=var208, r2=var1337, org.apache.log4j.Logger=var3406, r0=var1846, z0=var1595, org.apache.log4j.Category=var1081, r31=var848, $r3=var333, $r28=var1158, $r4=var930, $r5=var1925, $r6=var1194, $r7=var330, $r8=var1034, $r9=var2298, $r10=var756, org.apache.log4j.helpers.LogLog=var1331, $r11=var3492, $z1=var597, "Root level cannot be inherited. Ignoring directive."=var97, $r38=var3752, $r39=var1569, $r40=var3549, org.apache.log4j.Level=var126, $r41=var465, java.lang.Object=var1459, $r42=var2776, $r43=var3330}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 7,"<java.lang.StringBuffer: java.lang.String toString()>": 2,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.log4j.xml.DOMConfigurator;	r2 := @parameter0: org.w3c.dom.Element;	r0 := @parameter1: org.apache.log4j.Logger;	z0 := @parameter2: boolean;	r31 = virtualinvoke r0.<org.apache.log4j.Logger: java.lang.String getName()>();	if z0 == 0 goto $r3 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("value");	r31 = "root";	$r3 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("value");	$r28 = virtualinvoke r1.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r3);	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Level value for ");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r31);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" is  [");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r28);	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r10);	$r11 = "inherited";	$z1 = virtualinvoke $r11.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r28);	if $z1 != 0 goto (branch);	if z0 == 0 goto virtualinvoke r0.<org.apache.log4j.Logger: void setLevel(org.apache.log4j.Level)>(null);	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>("Root level cannot be inherited. Ignoring directive.");	goto [?= $r38 = new java.lang.StringBuffer];	$r38 = new java.lang.StringBuffer;	specialinvoke $r38.<java.lang.StringBuffer: void <init>()>();	$r39 = virtualinvoke $r38.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r31);	$r40 = virtualinvoke $r39.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" level set to ");	$r41 = virtualinvoke r0.<org.apache.log4j.Logger: org.apache.log4j.Level getLevel()>();	$r42 = virtualinvoke $r40.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>($r41);	$r43 = virtualinvoke $r42.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r43);	return
;block_num 6