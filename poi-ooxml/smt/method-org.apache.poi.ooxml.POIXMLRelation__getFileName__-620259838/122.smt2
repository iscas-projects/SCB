(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1572 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _defaultName/-465203718 (var1572) String)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun Int_toString/1350422511 (Int) String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(declare-const null-var1572 var1572)
(declare-const null-Int Int)
(declare-const var3145 var1572) ; Statement: r0 := @this: org.apache.poi.ooxml.POIXMLRelation 
(assert (not (= var3145 null-var1572)))
(declare-const var1138 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1138 null-Int)))
(define-const var61 String (_defaultName/-465203718 var3145)) ; Statement: $r1 = r0.<org.apache.poi.ooxml.POIXMLRelation: java.lang.String _defaultName> 
(assert true)
(define-const var437 Bool (contains/1009244746 var61 (cast-from-String-to-String "#"))) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("#") 
 ; Statement: if $z0 != 0 goto $r2 = r0.<org.apache.poi.ooxml.POIXMLRelation: java.lang.String _defaultName> 
(assert (not (= (ite var437 1 0) 0))) ; Cond: $z0 != 0 
(define-const var326 String (_defaultName/-465203718 var3145)) ; Statement: $r2 = r0.<org.apache.poi.ooxml.POIXMLRelation: java.lang.String _defaultName> 
(define-const var1553 String (Int_toString/1350422511 var1138)) ; Statement: $r3 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i0) 
(assert true)
(define-const var3476 String (replace/2138489945 var326 (cast-from-String-to-String "#") (cast-from-String-to-String var1553))) ; Statement: $r4 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("#", $r3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {_defaultName/-465203718=([org.apache.poi.ooxml.POIXMLRelation], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), Int_toString/1350422511=([int], java.lang.String), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String)}
; {var1572=org.apache.poi.ooxml.POIXMLRelation, var3145=r0, var1138=i0, var61=$r1, var437=$z0, var326=$r2, var1553=$r3, var3476=$r4}
; {org.apache.poi.ooxml.POIXMLRelation=var1572, r0=var3145, i0=var1138, $r1=var61, $z0=var437, $r2=var326, $r3=var1553, $r4=var3476}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>;	<java.lang.Integer: java.lang.String toString(int)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1,"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1}
;stmts r0 := @this: org.apache.poi.ooxml.POIXMLRelation;	i0 := @parameter0: int;	$r1 = r0.<org.apache.poi.ooxml.POIXMLRelation: java.lang.String _defaultName>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("#");	if $z0 != 0 goto $r2 = r0.<org.apache.poi.ooxml.POIXMLRelation: java.lang.String _defaultName>;	$r2 = r0.<org.apache.poi.ooxml.POIXMLRelation: java.lang.String _defaultName>;	$r3 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i0);	$r4 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("#", $r3);	return $r4
;block_num 2