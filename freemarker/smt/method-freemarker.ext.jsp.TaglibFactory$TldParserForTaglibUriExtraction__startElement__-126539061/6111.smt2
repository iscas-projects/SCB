(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3757 0)
(declare-sort var802 0)
(declare-sort var2647 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var3757 var3757)
(declare-const null-String String)
(declare-const null-var2647 var2647)
(declare-const var1413 var3757) ; Statement: r2 := @this: freemarker.ext.jsp.TaglibFactory$TldParserForTaglibUriExtraction 
(assert (not (= var1413 null-var3757)))
(declare-const var1048 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1048 null-String)))
(declare-const var1282 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var1282 null-String)))
(declare-const var3753 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var3753 null-String)))
(declare-const var584 var2647) ; Statement: r6 := @parameter3: org.xml.sax.Attributes 
(assert (not (= var584 null-var2647)))
(define-const var1851 String "uri") ; Statement: $r1 = "uri" 
(assert true)
(define-const var2295 Bool (= var1851 var3753)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var2295 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3757=freemarker.ext.jsp.TaglibFactory$TldParserForTaglibUriExtraction, var1413=r2, var1048=r4, var802=null_type, var1282=r5, var3753=r0, var2647=org.xml.sax.Attributes, var584=r6, var1851=$r1, var2295=$z0}
; {freemarker.ext.jsp.TaglibFactory$TldParserForTaglibUriExtraction=var3757, r2=var1413, r4=var1048, null_type=var802, r5=var1282, r0=var3753, org.xml.sax.Attributes=var2647, r6=var584, $r1=var1851, $z0=var2295}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: freemarker.ext.jsp.TaglibFactory$TldParserForTaglibUriExtraction;	r4 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	r6 := @parameter3: org.xml.sax.Attributes;	$r1 = "uri";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto return;	return
;block_num 2