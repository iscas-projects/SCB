(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2593 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cDataCollector/-1648853815 (var2593) String)
(declare-fun append/-1748486345 (String (Array Int Int) Int Int) String)
(declare-const null-var2593 var2593)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var2717 var2593) ; Statement: r0 := @this: freemarker.ext.jsp.TaglibFactory$TldParserForTaglibUriExtraction 
(assert (not (= var2717 null-var2593)))
(declare-const var1909 (Array Int Int)) ; Statement: r2 := @parameter0: char[] 
(assert (not (= var1909 null-__Array__Int__Int__)))
(declare-const var2965 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2965 null-Int)))
(declare-const var510 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var510 null-Int)))
(define-const var3480 String (cDataCollector/-1648853815 var2717)) ; Statement: $r1 = r0.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibUriExtraction: java.lang.StringBuilder cDataCollector> 
 ; Statement: if $r1 == null goto return 
(assert (not (= var3480 null-String))) ; Negate: Cond: $r1 == null  
(define-const var571 String (cDataCollector/-1648853815 var2717)) ; Statement: $r3 = r0.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibUriExtraction: java.lang.StringBuilder cDataCollector> 
(assert true)
;(assert (append/-1748486345 var571 var1909 var2965 var510)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r2, i0, i1) 
(declare-const var571!1 String)
(assert (str.prefixof var571 var571!1))
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cDataCollector/-1648853815=([freemarker.ext.jsp.TaglibFactory$TldParserForTaglibUriExtraction], java.lang.StringBuilder), append/-1748486345=([java.lang.StringBuilder, char[], int, int], java.lang.StringBuilder)}
; {var2593=freemarker.ext.jsp.TaglibFactory$TldParserForTaglibUriExtraction, var2717=r0, var1909=r2, var2965=i0, var510=i1, var3480=$r1, var571=$r3}
; {freemarker.ext.jsp.TaglibFactory$TldParserForTaglibUriExtraction=var2593, r0=var2717, r2=var1909, i0=var2965, i1=var510, $r1=var3480, $r3=var571}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>": 1}
;stmts r0 := @this: freemarker.ext.jsp.TaglibFactory$TldParserForTaglibUriExtraction;	r2 := @parameter0: char[];	i0 := @parameter1: int;	i1 := @parameter2: int;	$r1 = r0.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibUriExtraction: java.lang.StringBuilder cDataCollector>;	if $r1 == null goto return;	$r3 = r0.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibUriExtraction: java.lang.StringBuilder cDataCollector>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r2, i0, i1);	return
;block_num 3