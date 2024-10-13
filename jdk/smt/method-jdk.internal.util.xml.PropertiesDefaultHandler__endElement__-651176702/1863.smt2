(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3300 0)
(declare-sort var1610 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun validEntry/608517899 (var3300) Bool)
(declare-const null-var3300 var3300)
(declare-const null-String String)
(declare-const var3511 var3300) ; Statement: r2 := @this: jdk.internal.util.xml.PropertiesDefaultHandler 
(assert (not (= var3511 null-var3300)))
(declare-const var1896 String) ; Statement: r15 := @parameter0: java.lang.String 
(assert (not (= var1896 null-String)))
(declare-const var3006 String) ; Statement: r16 := @parameter1: java.lang.String 
(assert (not (= var3006 null-String)))
(declare-const var1085 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var1085 null-String)))
(define-const var2709 String "properties, comment, entry") ; Statement: $r1 = "properties, comment, entry" 
(assert true)
(define-const var1497 Bool (contains/1009244746 var2709 (cast-from-String-to-String var1085))) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean contains(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto $z1 = r2.<jdk.internal.util.xml.PropertiesDefaultHandler: boolean validEntry> 
(assert (not (= (ite var1497 1 0) 0))) ; Cond: $z0 != 0 
(define-const var499 Bool (validEntry/608517899 var3511)) ; Statement: $z1 = r2.<jdk.internal.util.xml.PropertiesDefaultHandler: boolean validEntry> 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var499 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), validEntry/608517899=([jdk.internal.util.xml.PropertiesDefaultHandler], boolean)}
; {var3300=jdk.internal.util.xml.PropertiesDefaultHandler, var3511=r2, var1896=r15, var1610=null_type, var3006=r16, var1085=r0, var2709=$r1, var1497=$z0, var499=$z1}
; {jdk.internal.util.xml.PropertiesDefaultHandler=var3300, r2=var3511, r15=var1896, null_type=var1610, r16=var3006, r0=var1085, $r1=var2709, $z0=var1497, $z1=var499}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r2 := @this: jdk.internal.util.xml.PropertiesDefaultHandler;	r15 := @parameter0: java.lang.String;	r16 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	$r1 = "properties, comment, entry";	$z0 = virtualinvoke $r1.<java.lang.String: boolean contains(java.lang.CharSequence)>(r0);	if $z0 != 0 goto $z1 = r2.<jdk.internal.util.xml.PropertiesDefaultHandler: boolean validEntry>;	$z1 = r2.<jdk.internal.util.xml.PropertiesDefaultHandler: boolean validEntry>;	if $z1 == 0 goto return;	return
;block_num 3