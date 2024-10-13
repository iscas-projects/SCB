(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1040 0)
(declare-sort var811 0)
(declare-sort var3621 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun rootElem/608517899 (var1040) Int)
(declare-fun rootElm/608517899 (var1040) String)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var1040 var1040)
(declare-const null-String String)
(declare-const null-var3621 var3621)
(declare-const var3180 var1040) ; Statement: r0 := @this: jdk.internal.util.xml.PropertiesDefaultHandler 
(assert (not (= var3180 null-var1040)))
(declare-const var467 String) ; Statement: r25 := @parameter0: java.lang.String 
(assert (not (= var467 null-String)))
(declare-const var254 String) ; Statement: r26 := @parameter1: java.lang.String 
(assert (not (= var254 null-String)))
(declare-const var2639 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var2639 null-String)))
(declare-const var3650 var3621) ; Statement: r4 := @parameter3: jdk.internal.org.xml.sax.Attributes 
(assert (not (= var3650 null-var3621)))
(define-const var3422 Int (rootElem/608517899 var3180)) ; Statement: $i0 = r0.<jdk.internal.util.xml.PropertiesDefaultHandler: int rootElem> 
 ; Statement: if $i0 >= 2 goto $r1 = r0.<jdk.internal.util.xml.PropertiesDefaultHandler: java.lang.String rootElm> 
(assert (>= var3422 2)) ; Cond: $i0 >= 2 
(define-const var426 String (rootElm/608517899 var3180)) ; Statement: $r1 = r0.<jdk.internal.util.xml.PropertiesDefaultHandler: java.lang.String rootElm> 
 ; Statement: if $r1 != null goto $i1 = r0.<jdk.internal.util.xml.PropertiesDefaultHandler: int rootElem> 
(assert (not (= var426 null-String))) ; Cond: $r1 != null 
(define-const var1599 Int (rootElem/608517899 var3180)) ; Statement: $i1 = r0.<jdk.internal.util.xml.PropertiesDefaultHandler: int rootElem> 
 ; Statement: if $i1 != 1 goto $r27 = "properties, comment, entry" 
(assert (not (= var1599 1))) ; Cond: $i1 != 1 
(define-const var3644 String "properties, comment, entry") ; Statement: $r27 = "properties, comment, entry" 
(assert true)
(define-const var3111 Bool (contains/1009244746 var3644 (cast-from-String-to-String var2639))) ; Statement: $z4 = virtualinvoke $r27.<java.lang.String: boolean contains(java.lang.CharSequence)>(r2) 
 ; Statement: if $z4 != 0 goto $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("entry") 
(assert (not (= (ite var3111 1 0) 0))) ; Cond: $z4 != 0 
(assert true)
(define-const var2478 Bool (= var2639 "entry")) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("entry") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("comment") 
(assert (= (ite var2478 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var764 Bool (= var2639 "comment")) ; Statement: $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("comment") 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var764 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {rootElem/608517899=([jdk.internal.util.xml.PropertiesDefaultHandler], int), rootElm/608517899=([jdk.internal.util.xml.PropertiesDefaultHandler], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var1040=jdk.internal.util.xml.PropertiesDefaultHandler, var3180=r0, var467=r25, var811=null_type, var254=r26, var2639=r2, var3621=jdk.internal.org.xml.sax.Attributes, var3650=r4, var3422=$i0, var426=$r1, var1599=$i1, var3644=$r27, var3111=$z4, var2478=$z0, var764=$z1}
; {jdk.internal.util.xml.PropertiesDefaultHandler=var1040, r0=var3180, r25=var467, null_type=var811, r26=var254, r2=var2639, jdk.internal.org.xml.sax.Attributes=var3621, r4=var3650, $i0=var3422, $r1=var426, $i1=var1599, $r27=var3644, $z4=var3111, $z0=var2478, $z1=var764}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @this: jdk.internal.util.xml.PropertiesDefaultHandler;	r25 := @parameter0: java.lang.String;	r26 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	r4 := @parameter3: jdk.internal.org.xml.sax.Attributes;	$i0 = r0.<jdk.internal.util.xml.PropertiesDefaultHandler: int rootElem>;	if $i0 >= 2 goto $r1 = r0.<jdk.internal.util.xml.PropertiesDefaultHandler: java.lang.String rootElm>;	$r1 = r0.<jdk.internal.util.xml.PropertiesDefaultHandler: java.lang.String rootElm>;	if $r1 != null goto $i1 = r0.<jdk.internal.util.xml.PropertiesDefaultHandler: int rootElem>;	$i1 = r0.<jdk.internal.util.xml.PropertiesDefaultHandler: int rootElem>;	if $i1 != 1 goto $r27 = "properties, comment, entry";	$r27 = "properties, comment, entry";	$z4 = virtualinvoke $r27.<java.lang.String: boolean contains(java.lang.CharSequence)>(r2);	if $z4 != 0 goto $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("entry");	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("entry");	if $z0 == 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("comment");	$z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("comment");	if $z1 == 0 goto return;	return
;block_num 7