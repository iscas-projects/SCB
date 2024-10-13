(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3387 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _defaultName/-465203718 (var3387) String)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun getDefaultFileName/1074358836 (var3387) String)
(declare-const null-var3387 var3387)
(declare-const null-Int Int)
(declare-const var2780 var3387) ; Statement: r0 := @this: org.apache.poi.ooxml.POIXMLRelation 
(assert (not (= var2780 null-var3387)))
(declare-const var880 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var880 null-Int)))
(define-const var3231 String (_defaultName/-465203718 var2780)) ; Statement: $r1 = r0.<org.apache.poi.ooxml.POIXMLRelation: java.lang.String _defaultName> 
(assert true)
(define-const var2228 Bool (contains/1009244746 var3231 (cast-from-String-to-String "#"))) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("#") 
 ; Statement: if $z0 != 0 goto $r2 = r0.<org.apache.poi.ooxml.POIXMLRelation: java.lang.String _defaultName> 
(assert (not (not (= (ite var2228 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var1650 String (getDefaultFileName/1074358836 var2780)) ; Statement: $r5 = virtualinvoke r0.<org.apache.poi.ooxml.POIXMLRelation: java.lang.String getDefaultFileName()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {_defaultName/-465203718=([org.apache.poi.ooxml.POIXMLRelation], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), getDefaultFileName/1074358836=([org.apache.poi.ooxml.POIXMLRelation], java.lang.String)}
; {var3387=org.apache.poi.ooxml.POIXMLRelation, var2780=r0, var880=i0, var3231=$r1, var2228=$z0, var1650=$r5}
; {org.apache.poi.ooxml.POIXMLRelation=var3387, r0=var2780, i0=var880, $r1=var3231, $z0=var2228, $r5=var1650}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @this: org.apache.poi.ooxml.POIXMLRelation;	i0 := @parameter0: int;	$r1 = r0.<org.apache.poi.ooxml.POIXMLRelation: java.lang.String _defaultName>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("#");	if $z0 != 0 goto $r2 = r0.<org.apache.poi.ooxml.POIXMLRelation: java.lang.String _defaultName>;	$r5 = virtualinvoke r0.<org.apache.poi.ooxml.POIXMLRelation: java.lang.String getDefaultFileName()>();	return $r5
;block_num 2