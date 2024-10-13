(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2646 0)
(declare-sort var1479 0)
(declare-sort var3402 0)
(declare-sort var3877 0)
(declare-sort var2301 0)
(declare-sort var1096 0)
(declare-sort var1533 0)
(declare-sort var2325 0)
(declare-sort var1599 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProject/-757559556 (var3877) var2301)
(declare-fun getImplicitTarget/989419945 (var3877) var1096)
(declare-fun var1533-init () var1533)
(declare-fun getLocator/1367348006 (var3877) var2325)
(declare-fun <init>/2107837502 (var1533 var2325) void)
(declare-fun setLocation/-1671768026 (var1096 var1533) void)
(declare-fun var3402_getLength/-511576848 (var3402) Int)
(declare-fun var3402_getURI/1358140975 (var3402 Int) String)
(declare-fun var3402_getValue/2607284 (var3402 Int) String)
(declare-fun var3402_getLocalName/-1367249767 (var3402 Int) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1599-init () var1599)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3402_getQName/1480767903 (var3402 Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/723551348 (var1599 String var2325) void)
(declare-const null-var2646 var2646)
(declare-const null-String String)
(declare-const null-var3402 var3402)
(declare-const null-var3877 var3877)
(declare-const var532 var2646) ; Statement: r59 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$ProjectHandler 
(assert (not (= var532 null-var2646)))
(declare-const var808 String) ; Statement: r51 := @parameter0: java.lang.String 
(assert (not (= var808 null-String)))
(declare-const var2643 String) ; Statement: r60 := @parameter1: java.lang.String 
(assert (not (= var2643 null-String)))
(declare-const var3106 String) ; Statement: r61 := @parameter2: java.lang.String 
(assert (not (= var3106 null-String)))
(declare-const var2726 var3402) ; Statement: r5 := @parameter3: org.xml.sax.Attributes 
(assert (not (= var2726 null-var3402)))
(declare-const var1150 var3877) ; Statement: r0 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext 
(assert (not (= var1150 null-var3877)))
(define-const var2370 String null-String) ; Statement: r62 = null 
(define-const var866 Bool (ite (= 1 0) true false)) ; Statement: z18 = 0 
(define-const var2721 Bool (ite (= 1 0) true false)) ; Statement: z21 = 0 
(define-const var544 Bool (ite (= 1 0) true false)) ; Statement: z20 = 0 
(assert true)
(define-const var1812 var2301 (getProject/-757559556 var1150)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert true)
(define-const var3050 var1096 (getImplicitTarget/989419945 var1150)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getImplicitTarget()>() 
(define-const var2924 var1533 var1533-init) ; Statement: $r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location 
(assert true)
(define-const var3756 var2325 (getLocator/1367348006 var1150)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: org.xml.sax.Locator getLocator()>() 
(assert true)
;(assert (<init>/2107837502 var2924 var3756)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: void <init>(org.xml.sax.Locator)>($r3) 

(declare-const var2924!1 var1533)
(declare-const var3756!1 var2325)
(assert true)
;(assert (setLocation/-1671768026 var3050 var2924!1)) ; Statement: virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: void setLocation(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r2) 

(declare-const var3050!1 var1096)
(declare-const var2924!2 var1533)
(define-const var1037 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var3339 Int (var3402_getLength/-511576848 var2726)) ; Statement: $i0 = interfaceinvoke r5.<org.xml.sax.Attributes: int getLength()>() 
 ; Statement: if i1 >= $i0 goto $r6 = new java.lang.StringBuilder 
(assert (not (>= var1037 var3339))) ; Negate: Cond: i1 >= $i0  
(define-const var2339 String (var3402_getURI/1358140975 var2726 var1037)) ; Statement: r63 = interfaceinvoke r5.<org.xml.sax.Attributes: java.lang.String getURI(int)>(i1) 
 ; Statement: if r63 == null goto $r64 = interfaceinvoke r5.<org.xml.sax.Attributes: java.lang.String getValue(int)>(i1) 
(assert (= var2339 null-String)) ; Cond: r63 == null 
(define-const var3713 String (var3402_getValue/2607284 var2726 var1037)) ; Statement: $r64 = interfaceinvoke r5.<org.xml.sax.Attributes: java.lang.String getValue(int)>(i1) 
(define-const var3767 String (var3402_getLocalName/-1367249767 var2726 var1037)) ; Statement: $r65 = interfaceinvoke r5.<org.xml.sax.Attributes: java.lang.String getLocalName(int)>(i1) 
(define-const var550 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var2452 Int (hashCode/-467973558 var3767)) ; Statement: $i3 = virtualinvoke $r65.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i3) {     case -332611556: goto $z15 = virtualinvoke $r65.<java.lang.String: boolean equals(java.lang.Object)>("basedir");     case 3355: goto $z14 = virtualinvoke $r65.<java.lang.String: boolean equals(java.lang.Object)>("id");     case 3373707: goto $z13 = virtualinvoke $r65.<java.lang.String: boolean equals(java.lang.Object)>("name");     case 1544803905: goto $z4 = virtualinvoke $r65.<java.lang.String: boolean equals(java.lang.Object)>("default");     default: goto tableswitch(b2) {     case 0: goto if $r64 == null goto i1 = i1 + 1;     case 1: goto if $r64 == null goto i1 = i1 + 1;     case 2: goto if $r64 == null goto i1 = i1 + 1;     case 3: goto $z5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: boolean isIgnoringProjectTag()>();     default: goto $r43 = new org.xml.sax.SAXParseException; }; } 
(assert (and (not (= var2452 1544803905)) (and (not (= var2452 3373707)) (and (not (= var2452 3355)) (and (not (= var2452 (- 332611556))) true))))) ; Intersect: Negate: Cond: $i3 == 1544803905   and Intersect: Negate: Cond: $i3 == 3373707   and Intersect: Negate: Cond: $i3 == 3355   and Intersect: Negate: Cond: $i3 == -332611556   and Non Conditional    
 ; Statement: tableswitch(b2) {     case 0: goto if $r64 == null goto i1 = i1 + 1;     case 1: goto if $r64 == null goto i1 = i1 + 1;     case 2: goto if $r64 == null goto i1 = i1 + 1;     case 3: goto $z5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: boolean isIgnoringProjectTag()>();     default: goto $r43 = new org.xml.sax.SAXParseException; } 
(assert (and (not (= var550 3)) (and (not (= var550 2)) (and (not (= var550 1)) (and (not (= var550 0)) true))))) ; Intersect: Negate: Cond: b2 == 3   and Intersect: Negate: Cond: b2 == 2   and Intersect: Negate: Cond: b2 == 1   and Intersect: Negate: Cond: b2 == 0   and Non Conditional    
(define-const var1633 var1599 var1599-init) ; Statement: $r43 = new org.xml.sax.SAXParseException 
(define-const var1121 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1121)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1121!1 String)
(assert (= var1121!1 ""))
(assert true)
(define-const var2015 String (append/672562846 var1121!1 "Unexpected attribute \u0022")) ; Statement: $r46 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected attribute \"") 
(declare-const var1121!2 String)
(assert (= var1121!2 (str.++ var1121!1 "Unexpected attribute \u0022")))
(define-const var3788 String (var3402_getQName/1480767903 var2726 var1037)) ; Statement: $r45 = interfaceinvoke r5.<org.xml.sax.Attributes: java.lang.String getQName(int)>(i1) 
(assert true)
(define-const var383 String (append/672562846 var2015 var3788)) ; Statement: $r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r45) 
(declare-const var2015!1 String)
(assert (= var2015!1 (str.++ var2015 var3788)))
(assert true)
(define-const var445 String (append/672562846 var383 "\u0022")) ; Statement: $r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var383!1 String)
(assert (= var383!1 (str.++ var383 "\u0022")))
(assert true)
(define-const var553 String (toString/-2075883882 var445)) ; Statement: $r50 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3882 var2325 (getLocator/1367348006 var1150)) ; Statement: $r49 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: org.xml.sax.Locator getLocator()>() 
(assert true)
;(assert (<init>/723551348 var1633 var553 var3882)) ; Statement: specialinvoke $r43.<org.xml.sax.SAXParseException: void <init>(java.lang.String,org.xml.sax.Locator)>($r50, $r49) 

(declare-const var1633!1 var1599)
(declare-const var553!1 String)
(declare-const var3882!1 var2325)
 ; Statement: throw $r43 
(check-sat)
(get-model)
(get-unsat-core)
; {getProject/-757559556=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), getImplicitTarget/989419945=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target), var1533-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), getLocator/1367348006=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext], org.xml.sax.Locator), <init>/2107837502=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, org.xml.sax.Locator], void), setLocation/-1671768026=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void), var3402_getLength/-511576848=([org.xml.sax.Attributes], int), var3402_getURI/1358140975=([org.xml.sax.Attributes, int], java.lang.String), var3402_getValue/2607284=([org.xml.sax.Attributes, int], java.lang.String), var3402_getLocalName/-1367249767=([org.xml.sax.Attributes, int], java.lang.String), hashCode/-467973558=([java.lang.String], int), var1599-init=([], org.xml.sax.SAXParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3402_getQName/1480767903=([org.xml.sax.Attributes, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/723551348=([org.xml.sax.SAXParseException, java.lang.String, org.xml.sax.Locator], void)}
; {var2646=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$ProjectHandler, var532=r59, var808=r51, var1479=null_type, var2643=r60, var3106=r61, var3402=org.xml.sax.Attributes, var2726=r5, var3877=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext, var1150=r0, var2370=r62, var866=z18, var2721=z21, var544=z20, var2301=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1812=r1, var1096=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, var3050=$r4, var1533=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var2924=$r2, var2325=org.xml.sax.Locator, var3756=$r3, var1037=i1, var3339=$i0, var2339=r63, var3713=$r64, var3767=$r65, var550=b2, var2452=$i3, var1599=org.xml.sax.SAXParseException, var1633=$r43, var1121=$r44, var2015=$r46, var3788=$r45, var383=$r47, var445=$r48, var553=$r50, var3882=$r49}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$ProjectHandler=var2646, r59=var532, r51=var808, null_type=var1479, r60=var2643, r61=var3106, org.xml.sax.Attributes=var3402, r5=var2726, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext=var3877, r0=var1150, r62=var2370, z18=var866, z21=var2721, z20=var544, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var2301, r1=var1812, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target=var1096, $r4=var3050, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var1533, $r2=var2924, org.xml.sax.Locator=var2325, $r3=var3756, i1=var1037, $i0=var3339, r63=var2339, $r64=var3713, $r65=var3767, b2=var550, $i3=var2452, org.xml.sax.SAXParseException=var1599, $r43=var1633, $r44=var1121, $r46=var2015, $r45=var3788, $r47=var383, $r48=var445, $r50=var553, $r49=var3882}
;seq <java.lang.String: int hashCode()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int hashCode()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r59 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$ProjectHandler;	r51 := @parameter0: java.lang.String;	r60 := @parameter1: java.lang.String;	r61 := @parameter2: java.lang.String;	r5 := @parameter3: org.xml.sax.Attributes;	r0 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext;	r62 = null;	z18 = 0;	z21 = 0;	z20 = 0;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getImplicitTarget()>();	$r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location;	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: org.xml.sax.Locator getLocator()>();	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: void <init>(org.xml.sax.Locator)>($r3);	virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: void setLocation(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r2);	i1 = 0;	$i0 = interfaceinvoke r5.<org.xml.sax.Attributes: int getLength()>();	if i1 >= $i0 goto $r6 = new java.lang.StringBuilder;	r63 = interfaceinvoke r5.<org.xml.sax.Attributes: java.lang.String getURI(int)>(i1);	if r63 == null goto $r64 = interfaceinvoke r5.<org.xml.sax.Attributes: java.lang.String getValue(int)>(i1);	$r64 = interfaceinvoke r5.<org.xml.sax.Attributes: java.lang.String getValue(int)>(i1);	$r65 = interfaceinvoke r5.<org.xml.sax.Attributes: java.lang.String getLocalName(int)>(i1);	b2 = -1;	$i3 = virtualinvoke $r65.<java.lang.String: int hashCode()>();	lookupswitch($i3) {     case -332611556: goto $z15 = virtualinvoke $r65.<java.lang.String: boolean equals(java.lang.Object)>("basedir");     case 3355: goto $z14 = virtualinvoke $r65.<java.lang.String: boolean equals(java.lang.Object)>("id");     case 3373707: goto $z13 = virtualinvoke $r65.<java.lang.String: boolean equals(java.lang.Object)>("name");     case 1544803905: goto $z4 = virtualinvoke $r65.<java.lang.String: boolean equals(java.lang.Object)>("default");     default: goto tableswitch(b2) {     case 0: goto if $r64 == null goto i1 = i1 + 1;     case 1: goto if $r64 == null goto i1 = i1 + 1;     case 2: goto if $r64 == null goto i1 = i1 + 1;     case 3: goto $z5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: boolean isIgnoringProjectTag()>();     default: goto $r43 = new org.xml.sax.SAXParseException; }; };	tableswitch(b2) {     case 0: goto if $r64 == null goto i1 = i1 + 1;     case 1: goto if $r64 == null goto i1 = i1 + 1;     case 2: goto if $r64 == null goto i1 = i1 + 1;     case 3: goto $z5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: boolean isIgnoringProjectTag()>();     default: goto $r43 = new org.xml.sax.SAXParseException; };	$r43 = new org.xml.sax.SAXParseException;	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	$r46 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected attribute \"");	$r45 = interfaceinvoke r5.<org.xml.sax.Attributes: java.lang.String getQName(int)>(i1);	$r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r45);	$r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r50 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.String toString()>();	$r49 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: org.xml.sax.Locator getLocator()>();	specialinvoke $r43.<org.xml.sax.SAXParseException: void <init>(java.lang.String,org.xml.sax.Locator)>($r50, $r49);	throw $r43
;block_num 6