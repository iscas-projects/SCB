(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var471 0)
(declare-sort var3677 0)
(declare-sort var3515 0)
(declare-sort var3585 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun document/-1339122628 (var471) var3677)
(declare-fun getHeaderFooterPolicy/47297177 (var3677) var3515)
(declare-fun extractHeaders/-239114949 (var471 String var3515) void)
(declare-fun getBodyElements/1658068303 (var3677) var3585)
(declare-fun var3585_iterator/-912451715 (var3585) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun extractFooters/-285760695 (var471 String var3515) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var471 var471)
(declare-const var3703 var471) ; Statement: r1 := @this: org.apache.poi.xwpf.extractor.XWPFWordExtractor 
(assert (not (= var3703 null-var471)))
(define-const var2870 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var2870 64)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(64) 

(declare-const var2870!1 String)
(declare-const var2793 Int)
(define-const var3788 var3677 (document/-1339122628 var3703)) ; Statement: $r2 = r1.<org.apache.poi.xwpf.extractor.XWPFWordExtractor: org.apache.poi.xwpf.usermodel.XWPFDocument document> 
(assert true)
(define-const var1123 var3515 (getHeaderFooterPolicy/47297177 var3788)) ; Statement: r3 = virtualinvoke $r2.<org.apache.poi.xwpf.usermodel.XWPFDocument: org.apache.poi.xwpf.model.XWPFHeaderFooterPolicy getHeaderFooterPolicy()>() 
(assert true)
;(assert (extractHeaders/-239114949 var3703 var2870!1 var1123)) ; Statement: specialinvoke r1.<org.apache.poi.xwpf.extractor.XWPFWordExtractor: void extractHeaders(java.lang.StringBuilder,org.apache.poi.xwpf.model.XWPFHeaderFooterPolicy)>($r0, r3) 

(declare-const var3703!1 var471)
(declare-const var2870!2 String)
(declare-const var1123!1 var3515)
(define-const var1579 var3677 (document/-1339122628 var3703!1)) ; Statement: $r4 = r1.<org.apache.poi.xwpf.extractor.XWPFWordExtractor: org.apache.poi.xwpf.usermodel.XWPFDocument document> 
(assert true)
(define-const var2975 var3585 (getBodyElements/1658068303 var1579)) ; Statement: $r5 = virtualinvoke $r4.<org.apache.poi.xwpf.usermodel.XWPFDocument: java.util.List getBodyElements()>() 
(define-const var691 Iterator (var3585_iterator/-912451715 var2975)) ; Statement: r6 = interfaceinvoke $r5.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var189 Bool (Iterator_hasNext/-1669924200 var691)) ; Statement: $z0 = interfaceinvoke r6.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto specialinvoke r1.<org.apache.poi.xwpf.extractor.XWPFWordExtractor: void extractFooters(java.lang.StringBuilder,org.apache.poi.xwpf.model.XWPFHeaderFooterPolicy)>($r0, r3) 
(assert (= (ite var189 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (extractFooters/-285760695 var3703!1 var2870!2 var1123!1)) ; Statement: specialinvoke r1.<org.apache.poi.xwpf.extractor.XWPFWordExtractor: void extractFooters(java.lang.StringBuilder,org.apache.poi.xwpf.model.XWPFHeaderFooterPolicy)>($r0, r3) 

(declare-const var3703!2 var471)
(declare-const var2870!3 String)
(declare-const var1123!2 var3515)
(assert true)
(define-const var2732 String (toString/-2075883882 var2870!3)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), document/-1339122628=([org.apache.poi.xwpf.extractor.XWPFWordExtractor], org.apache.poi.xwpf.usermodel.XWPFDocument), getHeaderFooterPolicy/47297177=([org.apache.poi.xwpf.usermodel.XWPFDocument], org.apache.poi.xwpf.model.XWPFHeaderFooterPolicy), extractHeaders/-239114949=([org.apache.poi.xwpf.extractor.XWPFWordExtractor, java.lang.StringBuilder, org.apache.poi.xwpf.model.XWPFHeaderFooterPolicy], void), getBodyElements/1658068303=([org.apache.poi.xwpf.usermodel.XWPFDocument], java.util.List), var3585_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), extractFooters/-285760695=([org.apache.poi.xwpf.extractor.XWPFWordExtractor, java.lang.StringBuilder, org.apache.poi.xwpf.model.XWPFHeaderFooterPolicy], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var471=org.apache.poi.xwpf.extractor.XWPFWordExtractor, var3703=r1, var2870=$r0, var2793=64, var3677=org.apache.poi.xwpf.usermodel.XWPFDocument, var3788=$r2, var3515=org.apache.poi.xwpf.model.XWPFHeaderFooterPolicy, var1123=r3, var1579=$r4, var3585=java.util.List, var2975=$r5, var691=r6, var189=$z0, var2732=$r7}
; {org.apache.poi.xwpf.extractor.XWPFWordExtractor=var471, r1=var3703, $r0=var2870, 64=var2793, org.apache.poi.xwpf.usermodel.XWPFDocument=var3677, $r2=var3788, org.apache.poi.xwpf.model.XWPFHeaderFooterPolicy=var3515, r3=var1123, $r4=var1579, java.util.List=var3585, $r5=var2975, r6=var691, $z0=var189, $r7=var2732}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xwpf.extractor.XWPFWordExtractor;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(64);	$r2 = r1.<org.apache.poi.xwpf.extractor.XWPFWordExtractor: org.apache.poi.xwpf.usermodel.XWPFDocument document>;	r3 = virtualinvoke $r2.<org.apache.poi.xwpf.usermodel.XWPFDocument: org.apache.poi.xwpf.model.XWPFHeaderFooterPolicy getHeaderFooterPolicy()>();	specialinvoke r1.<org.apache.poi.xwpf.extractor.XWPFWordExtractor: void extractHeaders(java.lang.StringBuilder,org.apache.poi.xwpf.model.XWPFHeaderFooterPolicy)>($r0, r3);	$r4 = r1.<org.apache.poi.xwpf.extractor.XWPFWordExtractor: org.apache.poi.xwpf.usermodel.XWPFDocument document>;	$r5 = virtualinvoke $r4.<org.apache.poi.xwpf.usermodel.XWPFDocument: java.util.List getBodyElements()>();	r6 = interfaceinvoke $r5.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r6.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto specialinvoke r1.<org.apache.poi.xwpf.extractor.XWPFWordExtractor: void extractFooters(java.lang.StringBuilder,org.apache.poi.xwpf.model.XWPFHeaderFooterPolicy)>($r0, r3);	specialinvoke r1.<org.apache.poi.xwpf.extractor.XWPFWordExtractor: void extractFooters(java.lang.StringBuilder,org.apache.poi.xwpf.model.XWPFHeaderFooterPolicy)>($r0, r3);	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 3