(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2579 0)
(declare-sort var3487 0)
(declare-sort var776 0)
(declare-sort var2483 0)
(declare-sort var437 0)
(declare-sort var3153 0)
(declare-sort var912 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1326171653 (var2483) String)
(declare-fun cast-from-var776-to-var2483 (var776) var2483)
(declare-fun var3487_getAttribute/210607306 (var3487 String) String)
(declare-fun subst/-1514982940 (var2579 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var437_debug/381960894 (String) void)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var437_error/-402343703 (String) void)
(declare-fun getLevel/-350490789 (var2483) var3153)
(declare-fun append/-143899486 (String var912) String)
(declare-fun cast-from-var3153-to-var912 (var3153) var912)
(declare-const null-var2579 var2579)
(declare-const null-var3487 var3487)
(declare-const null-var776 var776)
(declare-const null-Bool Bool)
(declare-const var586 var2579) ; Statement: r1 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var586 null-var2579)))
(declare-const var1429 var3487) ; Statement: r2 := @parameter0: org.w3c.dom.Element 
(assert (not (= var1429 null-var3487)))
(declare-const var3852 var776) ; Statement: r0 := @parameter1: org.apache.log4j.Logger 
(assert (not (= var3852 null-var776)))
(declare-const var3255 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3255 null-Bool)))
(assert true)
(define-const var1857 String (getName/1326171653 (cast-from-var776-to-var2483 var3852))) ; Statement: r31 = virtualinvoke r0.<org.apache.log4j.Logger: java.lang.String getName()>() 
 ; Statement: if z0 == 0 goto $r3 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("value") 
(assert (= (ite var3255 1 0) 0)) ; Cond: z0 == 0 
(define-const var1797 String (var3487_getAttribute/210607306 var1429 "value")) ; Statement: $r3 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("value") 
(assert true)
(define-const var2485 String (subst/-1514982940 var586 var1797)) ; Statement: $r28 = virtualinvoke r1.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r3) 
(define-const var2349 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2349)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2349!1 String)
(assert true)
(define-const var679 String (append/1560614132 var2349!1 "Level value for ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Level value for ") 
(declare-const var2349!2 String)
(assert (str.prefixof var2349!1 var2349!2))
(assert true)
(define-const var3219 String (append/1560614132 var679 var1857)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r31) 
(declare-const var679!1 String)
(assert (str.prefixof var679 var679!1))
(assert true)
(define-const var2061 String (append/1560614132 var3219 " is  [")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" is  [") 
(declare-const var3219!1 String)
(assert (str.prefixof var3219 var3219!1))
(assert true)
(define-const var1510 String (append/1560614132 var2061 var2485)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r28) 
(declare-const var2061!1 String)
(assert (str.prefixof var2061 var2061!1))
(assert true)
(define-const var3946 String (append/1560614132 var1510 "].")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var1510!1 String)
(assert (str.prefixof var1510 var1510!1))
(assert true)
(define-const var3829 String (toString/-222306083 var3946)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var437_debug/381960894 var3829)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r10) 

(declare-const var3829!1 String)
(define-const var2577 String "inherited") ; Statement: $r11 = "inherited" 
(assert true)
(define-const var3634 Bool (equalsIgnoreCase/-92311102 var2577 var2485)) ; Statement: $z1 = virtualinvoke $r11.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r28) 
 ; Statement: if $z1 != 0 goto (branch) 
(assert (not (= (ite var3634 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: if z0 == 0 goto virtualinvoke r0.<org.apache.log4j.Logger: void setLevel(org.apache.log4j.Level)>(null) 
(assert (not (= (ite var3255 1 0) 0))) ; Negate: Cond: z0 == 0  
;(assert (var437_error/-402343703 "Root level cannot be inherited. Ignoring directive.")) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>("Root level cannot be inherited. Ignoring directive.") 

(declare-const var3632 String)
 ; Statement: goto [?= $r38 = new java.lang.StringBuffer] 
(assert true) ; Non Conditional
(define-const var977 String String-init) ; Statement: $r38 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var977)) ; Statement: specialinvoke $r38.<java.lang.StringBuffer: void <init>()>() 

(declare-const var977!1 String)
(assert true)
(define-const var1340 String (append/1560614132 var977!1 var1857)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r31) 
(declare-const var977!2 String)
(assert (str.prefixof var977!1 var977!2))
(assert true)
(define-const var956 String (append/1560614132 var1340 " level set to ")) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" level set to ") 
(declare-const var1340!1 String)
(assert (str.prefixof var1340 var1340!1))
(assert true)
(define-const var3618 var3153 (getLevel/-350490789 (cast-from-var776-to-var2483 var3852))) ; Statement: $r41 = virtualinvoke r0.<org.apache.log4j.Logger: org.apache.log4j.Level getLevel()>() 
(assert true)
(define-const var510 String (append/-143899486 var956 (cast-from-var3153-to-var912 var3618))) ; Statement: $r42 = virtualinvoke $r40.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>($r41) 
(assert true)
(define-const var1815 String (toString/-222306083 var510)) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var437_debug/381960894 var1815)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r43) 

(declare-const var1815!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1326171653=([org.apache.log4j.Category], java.lang.String), cast-from-var776-to-var2483=([org.apache.log4j.Logger], org.apache.log4j.Category), var3487_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var437_debug/381960894=([java.lang.String], void), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var437_error/-402343703=([java.lang.String], void), getLevel/-350490789=([org.apache.log4j.Category], org.apache.log4j.Level), append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-var3153-to-var912=([org.apache.log4j.Level], java.lang.Object)}
; {var2579=org.apache.log4j.xml.DOMConfigurator, var586=r1, var3487=org.w3c.dom.Element, var1429=r2, var776=org.apache.log4j.Logger, var3852=r0, var3255=z0, var2483=org.apache.log4j.Category, var1857=r31, var1797=$r3, var2485=$r28, var2349=$r4, var679=$r5, var3219=$r6, var2061=$r7, var1510=$r8, var3946=$r9, var3829=$r10, var437=org.apache.log4j.helpers.LogLog, var2577=$r11, var3634=$z1, var3632="Root level cannot be inherited. Ignoring directive.", var977=$r38, var1340=$r39, var956=$r40, var3153=org.apache.log4j.Level, var3618=$r41, var912=java.lang.Object, var510=$r42, var1815=$r43}
; {org.apache.log4j.xml.DOMConfigurator=var2579, r1=var586, org.w3c.dom.Element=var3487, r2=var1429, org.apache.log4j.Logger=var776, r0=var3852, z0=var3255, org.apache.log4j.Category=var2483, r31=var1857, $r3=var1797, $r28=var2485, $r4=var2349, $r5=var679, $r6=var3219, $r7=var2061, $r8=var1510, $r9=var3946, $r10=var3829, org.apache.log4j.helpers.LogLog=var437, $r11=var2577, $z1=var3634, "Root level cannot be inherited. Ignoring directive."=var3632, $r38=var977, $r39=var1340, $r40=var956, org.apache.log4j.Level=var3153, $r41=var3618, java.lang.Object=var912, $r42=var510, $r43=var1815}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 7,"<java.lang.StringBuffer: java.lang.String toString()>": 2,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.log4j.xml.DOMConfigurator;	r2 := @parameter0: org.w3c.dom.Element;	r0 := @parameter1: org.apache.log4j.Logger;	z0 := @parameter2: boolean;	r31 = virtualinvoke r0.<org.apache.log4j.Logger: java.lang.String getName()>();	if z0 == 0 goto $r3 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("value");	$r3 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("value");	$r28 = virtualinvoke r1.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r3);	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Level value for ");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r31);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" is  [");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r28);	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r10);	$r11 = "inherited";	$z1 = virtualinvoke $r11.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r28);	if $z1 != 0 goto (branch);	if z0 == 0 goto virtualinvoke r0.<org.apache.log4j.Logger: void setLevel(org.apache.log4j.Level)>(null);	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>("Root level cannot be inherited. Ignoring directive.");	goto [?= $r38 = new java.lang.StringBuffer];	$r38 = new java.lang.StringBuffer;	specialinvoke $r38.<java.lang.StringBuffer: void <init>()>();	$r39 = virtualinvoke $r38.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r31);	$r40 = virtualinvoke $r39.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" level set to ");	$r41 = virtualinvoke r0.<org.apache.log4j.Logger: org.apache.log4j.Level getLevel()>();	$r42 = virtualinvoke $r40.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>($r41);	$r43 = virtualinvoke $r42.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r43);	return
;block_num 5