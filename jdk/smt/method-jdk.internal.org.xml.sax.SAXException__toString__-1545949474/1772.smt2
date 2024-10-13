(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var117 0)
(declare-sort var3023 0)
(declare-sort var3503 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exception/-114990402 (var117) var3023)
(declare-fun toString/-1112415476 (var3503) String)
(declare-fun cast-from-var117-to-var3503 (var117) var3503)
(declare-const null-var117 var117)
(declare-const null-var3023 var3023)
(declare-const var1149 var117) ; Statement: r0 := @this: jdk.internal.org.xml.sax.SAXException 
(assert (not (= var1149 null-var117)))
(define-const var1597 var3023 (exception/-114990402 var1149)) ; Statement: $r1 = r0.<jdk.internal.org.xml.sax.SAXException: java.lang.Exception exception> 
 ; Statement: if $r1 == null goto $r2 = specialinvoke r0.<java.lang.Exception: java.lang.String toString()>() 
(assert (= var1597 null-var3023)) ; Cond: $r1 == null 
(assert true)
(define-const var3857 String (toString/-1112415476 (cast-from-var117-to-var3503 var1149))) ; Statement: $r2 = specialinvoke r0.<java.lang.Exception: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {exception/-114990402=([jdk.internal.org.xml.sax.SAXException], java.lang.Exception), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var117-to-var3503=([jdk.internal.org.xml.sax.SAXException], java.lang.Throwable)}
; {var117=jdk.internal.org.xml.sax.SAXException, var1149=r0, var3023=java.lang.Exception, var1597=$r1, var3503=java.lang.Throwable, var3857=$r2}
; {jdk.internal.org.xml.sax.SAXException=var117, r0=var1149, java.lang.Exception=var3023, $r1=var1597, java.lang.Throwable=var3503, $r2=var3857}
;seq <java.lang.Throwable: java.lang.String toString()>
;cnt {}
;stmts r0 := @this: jdk.internal.org.xml.sax.SAXException;	$r1 = r0.<jdk.internal.org.xml.sax.SAXException: java.lang.Exception exception>;	if $r1 == null goto $r2 = specialinvoke r0.<java.lang.Exception: java.lang.String toString()>();	$r2 = specialinvoke r0.<java.lang.Exception: java.lang.String toString()>();	return $r2
;block_num 2