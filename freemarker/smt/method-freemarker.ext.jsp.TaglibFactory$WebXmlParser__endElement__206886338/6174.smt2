(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var315 0)
(declare-sort var2365 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cDataCollector/837522883 (var315) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun taglibUriCData/837522883 (var315) String)
(declare-const null-var315 var315)
(declare-const null-String String)
(declare-const var2327 var315) ; Statement: r4 := @this: freemarker.ext.jsp.TaglibFactory$WebXmlParser 
(assert (not (= var2327 null-var315)))
(declare-const var748 String) ; Statement: r35 := @parameter0: java.lang.String 
(assert (not (= var748 null-String)))
(declare-const var1674 String) ; Statement: r36 := @parameter1: java.lang.String 
(assert (not (= var1674 null-String)))
(declare-const var2771 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var2771 null-String)))
(define-const var2191 String "taglib-uri") ; Statement: $r1 = "taglib-uri" 
(assert true)
(define-const var793 Bool (= var2191 var2771)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "taglib-location" 
(assert (not (= (ite var793 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var825 String (cDataCollector/837522883 var2327)) ; Statement: $r24 = r4.<freemarker.ext.jsp.TaglibFactory$WebXmlParser: java.lang.StringBuilder cDataCollector> 
(assert true)
(define-const var1245 String (toString/-2075883882 var825)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1418 String (trim/-847153721 var1245)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.String: java.lang.String trim()>() 
(declare-const var2327!1 var315)
(assert (not (= var2327!1 null-var315)))
(assert (= (taglibUriCData/837522883 var2327!1) var1418)) ; Statement: r4.<freemarker.ext.jsp.TaglibFactory$WebXmlParser: java.lang.String taglibUriCData> = $r26 
(declare-const var2327!2 var315)
(assert (not (= var2327!2 null-var315)))
(assert (= (cDataCollector/837522883 var2327!2) null-String)) ; Statement: r4.<freemarker.ext.jsp.TaglibFactory$WebXmlParser: java.lang.StringBuilder cDataCollector> = null 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cDataCollector/837522883=([freemarker.ext.jsp.TaglibFactory$WebXmlParser], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), taglibUriCData/837522883=([freemarker.ext.jsp.TaglibFactory$WebXmlParser], java.lang.String)}
; {var315=freemarker.ext.jsp.TaglibFactory$WebXmlParser, var2327=r4, var748=r35, var2365=null_type, var1674=r36, var2771=r0, var2191=$r1, var793=$z0, var825=$r24, var1245=$r25, var1418=$r26}
; {freemarker.ext.jsp.TaglibFactory$WebXmlParser=var315, r4=var2327, r35=var748, null_type=var2365, r36=var1674, r0=var2771, $r1=var2191, $z0=var793, $r24=var825, $r25=var1245, $r26=var1418}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String trim()>": 1}
;stmts r4 := @this: freemarker.ext.jsp.TaglibFactory$WebXmlParser;	r35 := @parameter0: java.lang.String;	r36 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	$r1 = "taglib-uri";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = "taglib-location";	$r24 = r4.<freemarker.ext.jsp.TaglibFactory$WebXmlParser: java.lang.StringBuilder cDataCollector>;	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	$r26 = virtualinvoke $r25.<java.lang.String: java.lang.String trim()>();	r4.<freemarker.ext.jsp.TaglibFactory$WebXmlParser: java.lang.String taglibUriCData> = $r26;	r4.<freemarker.ext.jsp.TaglibFactory$WebXmlParser: java.lang.StringBuilder cDataCollector> = null;	goto [?= return];	return
;block_num 3