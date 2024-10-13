(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3268 0)
(declare-sort var2350 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3268 var3268)
(declare-const null-String String)
(declare-const var2317 var3268) ; Statement: r1 := @this: freemarker.ext.jdom.NodeListModel$JDOMXPathEx$NamespaceContextImpl 
(assert (not (= var2317 null-var3268)))
(declare-const var1725 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1725 null-String)))
(assert true)
(define-const var1523 Int (length/-134980193 var1725)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $r2 = r1.<freemarker.ext.jdom.NodeListModel$JDOMXPathEx$NamespaceContextImpl: java.util.Map namespaces> 
(assert (not (not (= var1523 0)))) ; Negate: Cond: $i0 != 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3268=freemarker.ext.jdom.NodeListModel$JDOMXPathEx$NamespaceContextImpl, var2317=r1, var1725=r0, var2350=null_type, var1523=$i0}
; {freemarker.ext.jdom.NodeListModel$JDOMXPathEx$NamespaceContextImpl=var3268, r1=var2317, r0=var1725, null_type=var2350, $i0=var1523}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: freemarker.ext.jdom.NodeListModel$JDOMXPathEx$NamespaceContextImpl;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 0 goto $r2 = r1.<freemarker.ext.jdom.NodeListModel$JDOMXPathEx$NamespaceContextImpl: java.util.Map namespaces>;	return r0
;block_num 2