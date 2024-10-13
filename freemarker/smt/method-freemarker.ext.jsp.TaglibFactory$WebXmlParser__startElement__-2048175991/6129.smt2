(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3051 0)
(declare-sort var2602 0)
(declare-sort var3316 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var3051 var3051)
(declare-const null-String String)
(declare-const null-var3316 var3316)
(declare-const var3000 var3051) ; Statement: r2 := @this: freemarker.ext.jsp.TaglibFactory$WebXmlParser 
(assert (not (= var3000 null-var3051)))
(declare-const var68 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var68 null-String)))
(declare-const var3595 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var3595 null-String)))
(declare-const var2621 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var2621 null-String)))
(declare-const var1288 var3316) ; Statement: r7 := @parameter3: org.xml.sax.Attributes 
(assert (not (= var1288 null-var3316)))
(define-const var3776 String "taglib-uri") ; Statement: $r1 = "taglib-uri" 
(assert true)
(define-const var1919 Bool (= var3776 var2621)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $r3 = new java.lang.StringBuilder 
(assert (not (not (= (ite var1919 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var9 String "taglib-location") ; Statement: $r4 = "taglib-location" 
(assert true)
(define-const var3210 Bool (= var9 var2621)) ; Statement: $z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var3210 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3051=freemarker.ext.jsp.TaglibFactory$WebXmlParser, var3000=r2, var68=r5, var2602=null_type, var3595=r6, var2621=r0, var3316=org.xml.sax.Attributes, var1288=r7, var3776=$r1, var1919=$z0, var9=$r4, var3210=$z1}
; {freemarker.ext.jsp.TaglibFactory$WebXmlParser=var3051, r2=var3000, r5=var68, null_type=var2602, r6=var3595, r0=var2621, org.xml.sax.Attributes=var3316, r7=var1288, $r1=var3776, $z0=var1919, $r4=var9, $z1=var3210}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r2 := @this: freemarker.ext.jsp.TaglibFactory$WebXmlParser;	r5 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	r7 := @parameter3: org.xml.sax.Attributes;	$r1 = "taglib-uri";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto $r3 = new java.lang.StringBuilder;	$r4 = "taglib-location";	$z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z1 == 0 goto return;	return
;block_num 3