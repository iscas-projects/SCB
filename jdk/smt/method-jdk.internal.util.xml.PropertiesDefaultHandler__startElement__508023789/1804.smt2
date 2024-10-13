(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1515 0)
(declare-sort var1671 0)
(declare-sort var1657 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun rootElem/608517899 (var1515) Int)
(declare-fun rootElm/608517899 (var1515) String)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun validEntry/608517899 (var1515) Bool)
(declare-fun var1657_getValue/-856054298 (var1657 String) String)
(declare-fun key/608517899 (var1515) String)
(declare-const null-var1515 var1515)
(declare-const null-String String)
(declare-const null-var1657 var1657)
(declare-const var765 var1515) ; Statement: r0 := @this: jdk.internal.util.xml.PropertiesDefaultHandler 
(assert (not (= var765 null-var1515)))
(declare-const var2200 String) ; Statement: r25 := @parameter0: java.lang.String 
(assert (not (= var2200 null-String)))
(declare-const var3851 String) ; Statement: r26 := @parameter1: java.lang.String 
(assert (not (= var3851 null-String)))
(declare-const var1186 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var1186 null-String)))
(declare-const var2431 var1657) ; Statement: r4 := @parameter3: jdk.internal.org.xml.sax.Attributes 
(assert (not (= var2431 null-var1657)))
(define-const var526 Int (rootElem/608517899 var765)) ; Statement: $i0 = r0.<jdk.internal.util.xml.PropertiesDefaultHandler: int rootElem> 
 ; Statement: if $i0 >= 2 goto $r1 = r0.<jdk.internal.util.xml.PropertiesDefaultHandler: java.lang.String rootElm> 
(assert (>= var526 2)) ; Cond: $i0 >= 2 
(define-const var241 String (rootElm/608517899 var765)) ; Statement: $r1 = r0.<jdk.internal.util.xml.PropertiesDefaultHandler: java.lang.String rootElm> 
 ; Statement: if $r1 != null goto $i1 = r0.<jdk.internal.util.xml.PropertiesDefaultHandler: int rootElem> 
(assert (not (= var241 null-String))) ; Cond: $r1 != null 
(define-const var1340 Int (rootElem/608517899 var765)) ; Statement: $i1 = r0.<jdk.internal.util.xml.PropertiesDefaultHandler: int rootElem> 
 ; Statement: if $i1 != 1 goto $r27 = "properties, comment, entry" 
(assert (not (= var1340 1))) ; Cond: $i1 != 1 
(define-const var1654 String "properties, comment, entry") ; Statement: $r27 = "properties, comment, entry" 
(assert true)
(define-const var1624 Bool (contains/1009244746 var1654 (cast-from-String-to-String var1186))) ; Statement: $z4 = virtualinvoke $r27.<java.lang.String: boolean contains(java.lang.CharSequence)>(r2) 
 ; Statement: if $z4 != 0 goto $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("entry") 
(assert (not (= (ite var1624 1 0) 0))) ; Cond: $z4 != 0 
(assert true)
(define-const var2987 Bool (= var1186 "entry")) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("entry") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("comment") 
(assert (not (= (ite var2987 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var765!1 var1515)
(assert (not (= var765!1 null-var1515)))
(assert (= (validEntry/608517899 var765!1) (ite (= 1 1) true false))) ; Statement: r0.<jdk.internal.util.xml.PropertiesDefaultHandler: boolean validEntry> = 1 
(define-const var2044 String (var1657_getValue/-856054298 var2431 "key")) ; Statement: $r5 = interfaceinvoke r4.<jdk.internal.org.xml.sax.Attributes: java.lang.String getValue(java.lang.String)>("key") 
(declare-const var765!2 var1515)
(assert (not (= var765!2 null-var1515)))
(assert (= (key/608517899 var765!2) var2044)) ; Statement: r0.<jdk.internal.util.xml.PropertiesDefaultHandler: java.lang.String key> = $r5 
(define-const var3826 String (key/608517899 var765!2)) ; Statement: $r6 = r0.<jdk.internal.util.xml.PropertiesDefaultHandler: java.lang.String key> 
 ; Statement: if $r6 != null goto return 
(assert (not (= var3826 null-String))) ; Cond: $r6 != null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {rootElem/608517899=([jdk.internal.util.xml.PropertiesDefaultHandler], int), rootElm/608517899=([jdk.internal.util.xml.PropertiesDefaultHandler], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), validEntry/608517899=([jdk.internal.util.xml.PropertiesDefaultHandler], boolean), var1657_getValue/-856054298=([jdk.internal.org.xml.sax.Attributes, java.lang.String], java.lang.String), key/608517899=([jdk.internal.util.xml.PropertiesDefaultHandler], java.lang.String)}
; {var1515=jdk.internal.util.xml.PropertiesDefaultHandler, var765=r0, var2200=r25, var1671=null_type, var3851=r26, var1186=r2, var1657=jdk.internal.org.xml.sax.Attributes, var2431=r4, var526=$i0, var241=$r1, var1340=$i1, var1654=$r27, var1624=$z4, var2987=$z0, var2044=$r5, var3826=$r6}
; {jdk.internal.util.xml.PropertiesDefaultHandler=var1515, r0=var765, r25=var2200, null_type=var1671, r26=var3851, r2=var1186, jdk.internal.org.xml.sax.Attributes=var1657, r4=var2431, $i0=var526, $r1=var241, $i1=var1340, $r27=var1654, $z4=var1624, $z0=var2987, $r5=var2044, $r6=var3826}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.internal.util.xml.PropertiesDefaultHandler;	r25 := @parameter0: java.lang.String;	r26 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	r4 := @parameter3: jdk.internal.org.xml.sax.Attributes;	$i0 = r0.<jdk.internal.util.xml.PropertiesDefaultHandler: int rootElem>;	if $i0 >= 2 goto $r1 = r0.<jdk.internal.util.xml.PropertiesDefaultHandler: java.lang.String rootElm>;	$r1 = r0.<jdk.internal.util.xml.PropertiesDefaultHandler: java.lang.String rootElm>;	if $r1 != null goto $i1 = r0.<jdk.internal.util.xml.PropertiesDefaultHandler: int rootElem>;	$i1 = r0.<jdk.internal.util.xml.PropertiesDefaultHandler: int rootElem>;	if $i1 != 1 goto $r27 = "properties, comment, entry";	$r27 = "properties, comment, entry";	$z4 = virtualinvoke $r27.<java.lang.String: boolean contains(java.lang.CharSequence)>(r2);	if $z4 != 0 goto $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("entry");	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("entry");	if $z0 == 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("comment");	r0.<jdk.internal.util.xml.PropertiesDefaultHandler: boolean validEntry> = 1;	$r5 = interfaceinvoke r4.<jdk.internal.org.xml.sax.Attributes: java.lang.String getValue(java.lang.String)>("key");	r0.<jdk.internal.util.xml.PropertiesDefaultHandler: java.lang.String key> = $r5;	$r6 = r0.<jdk.internal.util.xml.PropertiesDefaultHandler: java.lang.String key>;	if $r6 != null goto return;	return
;block_num 7