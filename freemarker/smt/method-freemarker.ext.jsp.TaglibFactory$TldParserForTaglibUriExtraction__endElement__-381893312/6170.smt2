(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1127 0)
(declare-sort var3200 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var1127 var1127)
(declare-const null-String String)
(declare-const var1885 var1127) ; Statement: r2 := @this: freemarker.ext.jsp.TaglibFactory$TldParserForTaglibUriExtraction 
(assert (not (= var1885 null-var1127)))
(declare-const var2611 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var2611 null-String)))
(declare-const var921 String) ; Statement: r7 := @parameter1: java.lang.String 
(assert (not (= var921 null-String)))
(declare-const var3440 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var3440 null-String)))
(define-const var3718 String "uri") ; Statement: $r1 = "uri" 
(assert true)
(define-const var48 Bool (= var3718 var3440)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var48 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1127=freemarker.ext.jsp.TaglibFactory$TldParserForTaglibUriExtraction, var1885=r2, var2611=r6, var3200=null_type, var921=r7, var3440=r0, var3718=$r1, var48=$z0}
; {freemarker.ext.jsp.TaglibFactory$TldParserForTaglibUriExtraction=var1127, r2=var1885, r6=var2611, null_type=var3200, r7=var921, r0=var3440, $r1=var3718, $z0=var48}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: freemarker.ext.jsp.TaglibFactory$TldParserForTaglibUriExtraction;	r6 := @parameter0: java.lang.String;	r7 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	$r1 = "uri";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto return;	return
;block_num 2