(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2680 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cDataCollector/-384195938 (var2680) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-const null-var2680 var2680)
(declare-const null-String String)
(declare-const var3520 var2680) ; Statement: r0 := @this: freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding 
(assert (not (= var3520 null-var2680)))
(define-const var762 String (cDataCollector/-384195938 var3520)) ; Statement: $r1 = r0.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding: java.lang.StringBuilder cDataCollector> 
(assert true)
(define-const var754 String (toString/-2075883882 var762)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3035 String (trim/-847153721 var754)) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>() 
(declare-const var3520!1 var2680)
(assert (not (= var3520!1 null-var2680)))
(assert (= (cDataCollector/-384195938 var3520!1) null-String)) ; Statement: r0.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding: java.lang.StringBuilder cDataCollector> = null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {cDataCollector/-384195938=([freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String)}
; {var2680=freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding, var3520=r0, var762=$r1, var754=$r2, var3035=r3}
; {freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding=var2680, r0=var3520, $r1=var762, $r2=var754, r3=var3035}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String trim()>": 1}
;stmts r0 := @this: freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding;	$r1 = r0.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding: java.lang.StringBuilder cDataCollector>;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>();	r0.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding: java.lang.StringBuilder cDataCollector> = null;	return r3
;block_num 1