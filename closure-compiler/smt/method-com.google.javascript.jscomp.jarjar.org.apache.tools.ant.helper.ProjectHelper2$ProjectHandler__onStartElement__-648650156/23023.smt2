(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var944 0)
(declare-sort var2613 0)
(declare-sort var448 0)
(declare-sort var3984 0)
(declare-sort var3957 0)
(declare-sort var1281 0)
(declare-sort var2810 0)
(declare-sort var3630 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProject/-757559556 (var3984) var3957)
(declare-fun getImplicitTarget/989419945 (var3984) var1281)
(declare-fun var2810-init () var2810)
(declare-fun getLocator/1367348006 (var3984) var3630)
(declare-fun <init>/2107837502 (var2810 var3630) void)
(declare-fun setLocation/-1671768026 (var1281 var2810) void)
(declare-fun var448_getLength/-511576848 (var448) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getCurrentProjectName/-535674097 (var3984) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getProperty/-1126216426 (var3957 String) String)
(declare-fun isIgnoringProjectTag/862130467 (var3984) Bool)
(declare-const null-var944 var944)
(declare-const null-String String)
(declare-const null-var448 var448)
(declare-const null-var3984 var3984)
(declare-const var3356 var944) ; Statement: r59 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$ProjectHandler 
(assert (not (= var3356 null-var944)))
(declare-const var3612 String) ; Statement: r51 := @parameter0: java.lang.String 
(assert (not (= var3612 null-String)))
(declare-const var3592 String) ; Statement: r60 := @parameter1: java.lang.String 
(assert (not (= var3592 null-String)))
(declare-const var3058 String) ; Statement: r61 := @parameter2: java.lang.String 
(assert (not (= var3058 null-String)))
(declare-const var1341 var448) ; Statement: r5 := @parameter3: org.xml.sax.Attributes 
(assert (not (= var1341 null-var448)))
(declare-const var1707 var3984) ; Statement: r0 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext 
(assert (not (= var1707 null-var3984)))
(define-const var1468 String null-String) ; Statement: r62 = null 
(define-const var3111 Bool (ite (= 1 0) true false)) ; Statement: z18 = 0 
(define-const var2937 Bool (ite (= 1 0) true false)) ; Statement: z21 = 0 
(define-const var3542 Bool (ite (= 1 0) true false)) ; Statement: z20 = 0 
(assert true)
(define-const var2066 var3957 (getProject/-757559556 var1707)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert true)
(define-const var1367 var1281 (getImplicitTarget/989419945 var1707)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getImplicitTarget()>() 
(define-const var957 var2810 var2810-init) ; Statement: $r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location 
(assert true)
(define-const var3961 var3630 (getLocator/1367348006 var1707)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: org.xml.sax.Locator getLocator()>() 
(assert true)
;(assert (<init>/2107837502 var957 var3961)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: void <init>(org.xml.sax.Locator)>($r3) 

(declare-const var957!1 var2810)
(declare-const var3961!1 var3630)
(assert true)
;(assert (setLocation/-1671768026 var1367 var957!1)) ; Statement: virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: void setLocation(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r2) 

(declare-const var1367!1 var1281)
(declare-const var957!2 var2810)
(define-const var781 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var672 Int (var448_getLength/-511576848 var1341)) ; Statement: $i0 = interfaceinvoke r5.<org.xml.sax.Attributes: int getLength()>() 
 ; Statement: if i1 >= $i0 goto $r6 = new java.lang.StringBuilder 
(assert (>= var781 var672)) ; Cond: i1 >= $i0 
(define-const var1473 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1473)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1473!1 String)
(assert (= var1473!1 ""))
(assert true)
(define-const var1335 String (append/672562846 var1473!1 "ant.file.")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.file.") 
(declare-const var1473!2 String)
(assert (= var1473!2 (str.++ var1473!1 "ant.file.")))
(assert true)
(define-const var2914 String (getCurrentProjectName/-535674097 var1707)) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: java.lang.String getCurrentProjectName()>() 
(assert true)
(define-const var2058 String (append/672562846 var1335 var2914)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1335!1 String)
(assert (= var1335!1 (str.++ var1335 var2914)))
(assert true)
(define-const var1563 String (toString/-2075883882 var2058)) ; Statement: r67 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var27 String (getProperty/-1126216426 var2066 var1563)) ; Statement: r68 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>(r67) 
(define-const var3778 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3778)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3778!1 String)
(assert (= var3778!1 ""))
(assert true)
(define-const var3609 String (append/672562846 var3778!1 "ant.file.type.")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.file.type.") 
(declare-const var3778!2 String)
(assert (= var3778!2 (str.++ var3778!1 "ant.file.type.")))
(assert true)
(define-const var1435 String (getCurrentProjectName/-535674097 var1707)) ; Statement: $r11 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: java.lang.String getCurrentProjectName()>() 
(assert true)
(define-const var1193 String (append/672562846 var3609 var1435)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3609!1 String)
(assert (= var3609!1 (str.++ var3609 var1435)))
(assert true)
(define-const var1625 String (toString/-2075883882 var1193)) ; Statement: r69 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3257 String (getProperty/-1126216426 var2066 var1625)) ; Statement: r70 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>(r69) 
 ; Statement: if r68 == null goto (branch) 
(assert (= var27 null-String)) ; Cond: r68 == null 
 ; Statement: if z21 == 0 goto $z19 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: boolean isIgnoringProjectTag()>() 
(assert (= (ite var2937 1 0) 0)) ; Cond: z21 == 0 
(assert true)
(define-const var1975 Bool (isIgnoringProjectTag/862130467 var1707)) ; Statement: $z19 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: boolean isIgnoringProjectTag()>() 
 ; Statement: if $z19 == 0 goto $r14 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("basedir") 
(assert (not (= (ite var1975 1 0) 0))) ; Negate: Cond: $z19 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getProject/-757559556=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), getImplicitTarget/989419945=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target), var2810-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), getLocator/1367348006=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext], org.xml.sax.Locator), <init>/2107837502=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, org.xml.sax.Locator], void), setLocation/-1671768026=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void), var448_getLength/-511576848=([org.xml.sax.Attributes], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getCurrentProjectName/-535674097=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getProperty/-1126216426=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], java.lang.String), isIgnoringProjectTag/862130467=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext], boolean)}
; {var944=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$ProjectHandler, var3356=r59, var3612=r51, var2613=null_type, var3592=r60, var3058=r61, var448=org.xml.sax.Attributes, var1341=r5, var3984=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext, var1707=r0, var1468=r62, var3111=z18, var2937=z21, var3542=z20, var3957=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2066=r1, var1281=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, var1367=$r4, var2810=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var957=$r2, var3630=org.xml.sax.Locator, var3961=$r3, var781=i1, var672=$i0, var1473=$r6, var1335=$r8, var2914=$r7, var2058=$r9, var1563=r67, var27=r68, var3778=$r10, var3609=$r12, var1435=$r11, var1193=$r13, var1625=r69, var3257=r70, var1975=$z19}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$ProjectHandler=var944, r59=var3356, r51=var3612, null_type=var2613, r60=var3592, r61=var3058, org.xml.sax.Attributes=var448, r5=var1341, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext=var3984, r0=var1707, r62=var1468, z18=var3111, z21=var2937, z20=var3542, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var3957, r1=var2066, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target=var1281, $r4=var1367, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var2810, $r2=var957, org.xml.sax.Locator=var3630, $r3=var3961, i1=var781, $i0=var672, $r6=var1473, $r8=var1335, $r7=var2914, $r9=var2058, r67=var1563, r68=var27, $r10=var3778, $r12=var3609, $r11=var1435, $r13=var1193, r69=var1625, r70=var3257, $z19=var1975}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r59 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$ProjectHandler;	r51 := @parameter0: java.lang.String;	r60 := @parameter1: java.lang.String;	r61 := @parameter2: java.lang.String;	r5 := @parameter3: org.xml.sax.Attributes;	r0 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext;	r62 = null;	z18 = 0;	z21 = 0;	z20 = 0;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getImplicitTarget()>();	$r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location;	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: org.xml.sax.Locator getLocator()>();	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: void <init>(org.xml.sax.Locator)>($r3);	virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: void setLocation(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r2);	i1 = 0;	$i0 = interfaceinvoke r5.<org.xml.sax.Attributes: int getLength()>();	if i1 >= $i0 goto $r6 = new java.lang.StringBuilder;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.file.");	$r7 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: java.lang.String getCurrentProjectName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	r67 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	r68 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>(r67);	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.file.type.");	$r11 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: java.lang.String getCurrentProjectName()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	r69 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	r70 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>(r69);	if r68 == null goto (branch);	if z21 == 0 goto $z19 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: boolean isIgnoringProjectTag()>();	$z19 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: boolean isIgnoringProjectTag()>();	if $z19 == 0 goto $r14 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("basedir");	return
;block_num 6