(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var825 0)
(declare-sort var1076 0)
(declare-sort var1015 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun segments/-65247735 (var825) var1076)
(declare-fun isEmpty/-367311564 (var1015) Bool)
(declare-fun cast-from-var1076-to-var1015 (var1076) var1015)
(declare-const null-var825 var825)
(declare-const var3913 var825) ; Statement: r0 := @this: org.apache.poi.ooxml.util.IdentifierManager 
(assert (not (= var3913 null-var825)))
(define-const var1646 var1076 (segments/-65247735 var3913)) ; Statement: $r1 = r0.<org.apache.poi.ooxml.util.IdentifierManager: java.util.LinkedList segments> 
(assert true)
(define-const var1835 Bool (isEmpty/-367311564 (cast-from-var1076-to-var1015 var1646))) ; Statement: $z0 = virtualinvoke $r1.<java.util.LinkedList: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var1835 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {segments/-65247735=([org.apache.poi.ooxml.util.IdentifierManager], java.util.LinkedList), isEmpty/-367311564=([java.util.AbstractCollection], boolean), cast-from-var1076-to-var1015=([java.util.LinkedList], java.util.AbstractCollection)}
; {var825=org.apache.poi.ooxml.util.IdentifierManager, var3913=r0, var1076=java.util.LinkedList, var1646=$r1, var1015=java.util.AbstractCollection, var1835=$z0}
; {org.apache.poi.ooxml.util.IdentifierManager=var825, r0=var3913, java.util.LinkedList=var1076, $r1=var1646, java.util.AbstractCollection=var1015, $z0=var1835}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.poi.ooxml.util.IdentifierManager;	$r1 = r0.<org.apache.poi.ooxml.util.IdentifierManager: java.util.LinkedList segments>;	$z0 = virtualinvoke $r1.<java.util.LinkedList: boolean isEmpty()>();	if $z0 == 0 goto return;	return
;block_num 2