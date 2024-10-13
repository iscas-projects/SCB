(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2830 0)
(declare-sort var118 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var2830 var2830)
(declare-const null-String String)
(declare-const var3089 var2830) ; Statement: r3 := @this: org.apache.poi.ooxml.extractor.POIXMLPropertiesTextExtractor 
(assert (not (= var3089 null-var2830)))
(declare-const var3664 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3664 null-String)))
(declare-const var1171 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1171 null-String)))
(declare-const var521 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var521 null-String)))
 ; Statement: if r0 != null goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(assert (not (= var521 null-String))) ; Cond: r0 != null 
(assert true)
;(assert (append/672562846 var3664 var1171)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3664!1 String)
(assert (= var3664!1 (str.++ var3664 var1171)))
(assert true)
;(assert (append/672562846 var3664!1 " = ")) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = ") 
(declare-const var3664!2 String)
(assert (= var3664!2 (str.++ var3664!1 " = ")))
(assert true)
;(assert (append/672562846 var3664!2 var521)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3664!3 String)
(assert (= var3664!3 (str.++ var3664!2 var521)))
(assert true)
;(assert (append/-1166366385 var3664!3 10)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var3664!4 String)
(assert (str.prefixof var3664!3 var3664!4))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var2830=org.apache.poi.ooxml.extractor.POIXMLPropertiesTextExtractor, var3089=r3, var3664=r1, var1171=r2, var118=null_type, var521=r0}
; {org.apache.poi.ooxml.extractor.POIXMLPropertiesTextExtractor=var2830, r3=var3089, r1=var3664, r2=var1171, null_type=var118, r0=var521}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r3 := @this: org.apache.poi.ooxml.extractor.POIXMLPropertiesTextExtractor;	r1 := @parameter0: java.lang.StringBuilder;	r2 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	if r0 != null goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = ");	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	return
;block_num 2