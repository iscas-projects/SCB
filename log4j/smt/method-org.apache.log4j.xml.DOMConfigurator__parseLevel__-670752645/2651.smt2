(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3681 0)
(declare-sort var502 0)
(declare-sort var631 0)
(declare-sort var1884 0)
(declare-sort var384 0)
(declare-sort var105 0)
(declare-sort var2361 0)
(declare-sort var865 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1326171653 (var1884) String)
(declare-fun cast-from-var631-to-var1884 (var631) var1884)
(declare-fun var502_getAttribute/210607306 (var502 String) String)
(declare-fun subst/-1514982940 (var3681 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var384_debug/381960894 (String) void)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun setLevel/964989947 (var1884 var105) void)
(declare-fun getLevel/-350490789 (var1884) var105)
(declare-fun append/-143899486 (String var865) String)
(declare-fun cast-from-var105-to-var865 (var105) var865)
(declare-const null-var3681 var3681)
(declare-const null-var502 var502)
(declare-const null-var631 var631)
(declare-const null-Bool Bool)
(declare-const null-NullType var2361)
(declare-const null-var105 var105)
(declare-const var3545 var3681) ; Statement: r1 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var3545 null-var3681)))
(declare-const var2933 var502) ; Statement: r2 := @parameter0: org.w3c.dom.Element 
(assert (not (= var2933 null-var502)))
(declare-const var1966 var631) ; Statement: r0 := @parameter1: org.apache.log4j.Logger 
(assert (not (= var1966 null-var631)))
(declare-const var2209 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2209 null-Bool)))
(assert true)
(define-const var2675 String (getName/1326171653 (cast-from-var631-to-var1884 var1966))) ; Statement: r31 = virtualinvoke r0.<org.apache.log4j.Logger: java.lang.String getName()>() 
 ; Statement: if z0 == 0 goto $r3 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("value") 
(assert (not (= (ite var2209 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2675!1 String "root") ; Statement: r31 = "root" 
(assert true) ; Non Conditional
(define-const var2668 String (var502_getAttribute/210607306 var2933 "value")) ; Statement: $r3 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("value") 
(assert true)
(define-const var1266 String (subst/-1514982940 var3545 var2668)) ; Statement: $r28 = virtualinvoke r1.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r3) 
(define-const var785 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var785)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var785!1 String)
(assert true)
(define-const var638 String (append/1560614132 var785!1 "Level value for ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Level value for ") 
(declare-const var785!2 String)
(assert (str.prefixof var785!1 var785!2))
(assert true)
(define-const var568 String (append/1560614132 var638 var2675!1)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r31) 
(declare-const var638!1 String)
(assert (str.prefixof var638 var638!1))
(assert true)
(define-const var1997 String (append/1560614132 var568 " is  [")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" is  [") 
(declare-const var568!1 String)
(assert (str.prefixof var568 var568!1))
(assert true)
(define-const var3355 String (append/1560614132 var1997 var1266)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r28) 
(declare-const var1997!1 String)
(assert (str.prefixof var1997 var1997!1))
(assert true)
(define-const var2003 String (append/1560614132 var3355 "].")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var3355!1 String)
(assert (str.prefixof var3355 var3355!1))
(assert true)
(define-const var397 String (toString/-222306083 var2003)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var384_debug/381960894 var397)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r10) 

(declare-const var397!1 String)
(define-const var3233 String "inherited") ; Statement: $r11 = "inherited" 
(assert true)
(define-const var1248 Bool (equalsIgnoreCase/-92311102 var3233 var1266)) ; Statement: $z1 = virtualinvoke $r11.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r28) 
 ; Statement: if $z1 != 0 goto (branch) 
(assert (not (= (ite var1248 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: if z0 == 0 goto virtualinvoke r0.<org.apache.log4j.Logger: void setLevel(org.apache.log4j.Level)>(null) 
(assert (= (ite var2209 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (setLevel/964989947 (cast-from-var631-to-var1884 var1966) null-var105)) ; Statement: virtualinvoke r0.<org.apache.log4j.Logger: void setLevel(org.apache.log4j.Level)>(null) 

(declare-const var1966!1 var631)
(declare-const var2810 var2361)
 ; Statement: goto [?= $r38 = new java.lang.StringBuffer] 
(assert true) ; Non Conditional
(define-const var2411 String String-init) ; Statement: $r38 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2411)) ; Statement: specialinvoke $r38.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2411!1 String)
(assert true)
(define-const var3159 String (append/1560614132 var2411!1 var2675!1)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r31) 
(declare-const var2411!2 String)
(assert (str.prefixof var2411!1 var2411!2))
(assert true)
(define-const var2623 String (append/1560614132 var3159 " level set to ")) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" level set to ") 
(declare-const var3159!1 String)
(assert (str.prefixof var3159 var3159!1))
(assert true)
(define-const var645 var105 (getLevel/-350490789 (cast-from-var631-to-var1884 var1966!1))) ; Statement: $r41 = virtualinvoke r0.<org.apache.log4j.Logger: org.apache.log4j.Level getLevel()>() 
(assert true)
(define-const var2610 String (append/-143899486 var2623 (cast-from-var105-to-var865 var645))) ; Statement: $r42 = virtualinvoke $r40.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>($r41) 
(assert true)
(define-const var3749 String (toString/-222306083 var2610)) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var384_debug/381960894 var3749)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r43) 

(declare-const var3749!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1326171653=([org.apache.log4j.Category], java.lang.String), cast-from-var631-to-var1884=([org.apache.log4j.Logger], org.apache.log4j.Category), var502_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var384_debug/381960894=([java.lang.String], void), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), setLevel/964989947=([org.apache.log4j.Category, org.apache.log4j.Level], void), getLevel/-350490789=([org.apache.log4j.Category], org.apache.log4j.Level), append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-var105-to-var865=([org.apache.log4j.Level], java.lang.Object)}
; {var3681=org.apache.log4j.xml.DOMConfigurator, var3545=r1, var502=org.w3c.dom.Element, var2933=r2, var631=org.apache.log4j.Logger, var1966=r0, var2209=z0, var1884=org.apache.log4j.Category, var2675=r31, var2668=$r3, var1266=$r28, var785=$r4, var638=$r5, var568=$r6, var1997=$r7, var3355=$r8, var2003=$r9, var397=$r10, var384=org.apache.log4j.helpers.LogLog, var3233=$r11, var1248=$z1, var105=org.apache.log4j.Level, var2810=null, var2361=null_type, var2411=$r38, var3159=$r39, var2623=$r40, var645=$r41, var865=java.lang.Object, var2610=$r42, var3749=$r43}
; {org.apache.log4j.xml.DOMConfigurator=var3681, r1=var3545, org.w3c.dom.Element=var502, r2=var2933, org.apache.log4j.Logger=var631, r0=var1966, z0=var2209, org.apache.log4j.Category=var1884, r31=var2675, $r3=var2668, $r28=var1266, $r4=var785, $r5=var638, $r6=var568, $r7=var1997, $r8=var3355, $r9=var2003, $r10=var397, org.apache.log4j.helpers.LogLog=var384, $r11=var3233, $z1=var1248, org.apache.log4j.Level=var105, null=var2810, null_type=var2361, $r38=var2411, $r39=var3159, $r40=var2623, $r41=var645, java.lang.Object=var865, $r42=var2610, $r43=var3749}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 7,"<java.lang.StringBuffer: java.lang.String toString()>": 2,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.log4j.xml.DOMConfigurator;	r2 := @parameter0: org.w3c.dom.Element;	r0 := @parameter1: org.apache.log4j.Logger;	z0 := @parameter2: boolean;	r31 = virtualinvoke r0.<org.apache.log4j.Logger: java.lang.String getName()>();	if z0 == 0 goto $r3 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("value");	r31 = "root";	$r3 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("value");	$r28 = virtualinvoke r1.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r3);	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Level value for ");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r31);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" is  [");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r28);	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r10);	$r11 = "inherited";	$z1 = virtualinvoke $r11.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r28);	if $z1 != 0 goto (branch);	if z0 == 0 goto virtualinvoke r0.<org.apache.log4j.Logger: void setLevel(org.apache.log4j.Level)>(null);	virtualinvoke r0.<org.apache.log4j.Logger: void setLevel(org.apache.log4j.Level)>(null);	goto [?= $r38 = new java.lang.StringBuffer];	$r38 = new java.lang.StringBuffer;	specialinvoke $r38.<java.lang.StringBuffer: void <init>()>();	$r39 = virtualinvoke $r38.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r31);	$r40 = virtualinvoke $r39.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" level set to ");	$r41 = virtualinvoke r0.<org.apache.log4j.Logger: org.apache.log4j.Level getLevel()>();	$r42 = virtualinvoke $r40.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>($r41);	$r43 = virtualinvoke $r42.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r43);	return
;block_num 6