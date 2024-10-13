(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3102 0)
(declare-sort var1979 0)
(declare-sort var3009 0)
(declare-sort var304 0)
(declare-sort var3407 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun format/-1346839480 (var3102) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var3009_atError/-805220085 (var3009) var304)
(declare-fun var304_withThrowable/-363971767 (var304 var1979) var304)
(declare-fun var304_log/1618568336 (var304 String) void)
(declare-fun var3407-init () var3407)
(declare-fun <init>/983569409 (var3407 String) void)
(declare-const null-var3102 var3102)
(declare-const null-var1979 var1979)
(declare-const var3102-LOG var3009)
(declare-const var2576 var3102) ; Statement: r0 := @this: org.apache.poi.xslf.util.PPTX2PNG 
(assert (not (= var2576 null-var3102)))
(define-const var1792 String (format/-1346839480 var2576)) ; Statement: r1 = r0.<org.apache.poi.xslf.util.PPTX2PNG: java.lang.String format> 
(define-const var3434 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var3202 Int (hashCode/-467973558 var1792)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 107332: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log");     case 110834: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("pdf");     case 114276: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("svg");     default: goto tableswitch(b1) {     case 0: goto $r6 = new org.apache.poi.xslf.util.SVGFormat;     case 1: goto $r3 = new org.apache.poi.xslf.util.PDFFormat;     case 2: goto $r2 = new org.apache.poi.xslf.util.DummyFormat;     default: goto $r7 = new org.apache.poi.xslf.util.BitmapFormat; }; } 
(assert (and (not (= var3202 114276)) (and (not (= var3202 110834)) (and (not (= var3202 107332)) true)))) ; Intersect: Negate: Cond: $i0 == 114276   and Intersect: Negate: Cond: $i0 == 110834   and Intersect: Negate: Cond: $i0 == 107332   and Non Conditional   
 ; Statement: tableswitch(b1) {     case 0: goto $r6 = new org.apache.poi.xslf.util.SVGFormat;     case 1: goto $r3 = new org.apache.poi.xslf.util.PDFFormat;     case 2: goto $r2 = new org.apache.poi.xslf.util.DummyFormat;     default: goto $r7 = new org.apache.poi.xslf.util.BitmapFormat; } 
(assert (and (not (= var3434 2)) (and (not (= var3434 1)) (and (not (= var3434 0)) true)))) ; Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional   
(declare-const var2472 var1979) ; Statement: $r9 := @caughtexception 
(assert (not (= var2472 null-var1979)))
(define-const var3611 var3009 var3102-LOG) ; Statement: $r10 = <org.apache.poi.xslf.util.PPTX2PNG: org.apache.logging.log4j.Logger LOG> 
(define-const var1243 var304 (var3009_atError/-805220085 var3611)) ; Statement: $r11 = interfaceinvoke $r10.<org.apache.logging.log4j.Logger: org.apache.logging.log4j.LogBuilder atError()>() 
(define-const var904 var304 (var304_withThrowable/-363971767 var1243 var2472)) ; Statement: $r12 = interfaceinvoke $r11.<org.apache.logging.log4j.LogBuilder: org.apache.logging.log4j.LogBuilder withThrowable(java.lang.Throwable)>($r9) 
;(assert (var304_log/1618568336 var904 "Batik is not added to/working on the module-path. Use classpath mode instead of JPMS. Fallback to PNG.")) ; Statement: interfaceinvoke $r12.<org.apache.logging.log4j.LogBuilder: void log(java.lang.String)>("Batik is not added to/working on the module-path. Use classpath mode instead of JPMS. Fallback to PNG.") 

(declare-const var904!1 var304)
(declare-const var531 String)
(define-const var2939 var3407 var3407-init) ; Statement: $r13 = new org.apache.poi.xslf.util.BitmapFormat 
(assert true)
;(assert (<init>/983569409 var2939 "png")) ; Statement: specialinvoke $r13.<org.apache.poi.xslf.util.BitmapFormat: void <init>(java.lang.String)>("png") 

(declare-const var2939!1 var3407)
(declare-const var3601 String)
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {format/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], java.lang.String), hashCode/-467973558=([java.lang.String], int), var3009_atError/-805220085=([org.apache.logging.log4j.Logger], org.apache.logging.log4j.LogBuilder), var304_withThrowable/-363971767=([org.apache.logging.log4j.LogBuilder, java.lang.Throwable], org.apache.logging.log4j.LogBuilder), var304_log/1618568336=([org.apache.logging.log4j.LogBuilder, java.lang.String], void), var3407-init=([], org.apache.poi.xslf.util.BitmapFormat), <init>/983569409=([org.apache.poi.xslf.util.BitmapFormat, java.lang.String], void)}
; {var3102=org.apache.poi.xslf.util.PPTX2PNG, var2576=r0, var1792=r1, var3434=b1, var3202=$i0, var1979=java.lang.Throwable, var2472=$r9, var3009=org.apache.logging.log4j.Logger, var3611=$r10, var304=org.apache.logging.log4j.LogBuilder, var1243=$r11, var904=$r12, var531="Batik is not added to/working on the module-path. Use classpath mode instead of JPMS. Fallback to PNG.", var3407=org.apache.poi.xslf.util.BitmapFormat, var2939=$r13, var3601="png"}
; {org.apache.poi.xslf.util.PPTX2PNG=var3102, r0=var2576, r1=var1792, b1=var3434, $i0=var3202, java.lang.Throwable=var1979, $r9=var2472, org.apache.logging.log4j.Logger=var3009, $r10=var3611, org.apache.logging.log4j.LogBuilder=var304, $r11=var1243, $r12=var904, "Batik is not added to/working on the module-path. Use classpath mode instead of JPMS. Fallback to PNG."=var531, org.apache.poi.xslf.util.BitmapFormat=var3407, $r13=var2939, "png"=var3601}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.poi.xslf.util.PPTX2PNG;	r1 = r0.<org.apache.poi.xslf.util.PPTX2PNG: java.lang.String format>;	b1 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 107332: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log");     case 110834: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("pdf");     case 114276: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("svg");     default: goto tableswitch(b1) {     case 0: goto $r6 = new org.apache.poi.xslf.util.SVGFormat;     case 1: goto $r3 = new org.apache.poi.xslf.util.PDFFormat;     case 2: goto $r2 = new org.apache.poi.xslf.util.DummyFormat;     default: goto $r7 = new org.apache.poi.xslf.util.BitmapFormat; }; };	tableswitch(b1) {     case 0: goto $r6 = new org.apache.poi.xslf.util.SVGFormat;     case 1: goto $r3 = new org.apache.poi.xslf.util.PDFFormat;     case 2: goto $r2 = new org.apache.poi.xslf.util.DummyFormat;     default: goto $r7 = new org.apache.poi.xslf.util.BitmapFormat; };	$r9 := @caughtexception;	$r10 = <org.apache.poi.xslf.util.PPTX2PNG: org.apache.logging.log4j.Logger LOG>;	$r11 = interfaceinvoke $r10.<org.apache.logging.log4j.Logger: org.apache.logging.log4j.LogBuilder atError()>();	$r12 = interfaceinvoke $r11.<org.apache.logging.log4j.LogBuilder: org.apache.logging.log4j.LogBuilder withThrowable(java.lang.Throwable)>($r9);	interfaceinvoke $r12.<org.apache.logging.log4j.LogBuilder: void log(java.lang.String)>("Batik is not added to/working on the module-path. Use classpath mode instead of JPMS. Fallback to PNG.");	$r13 = new org.apache.poi.xslf.util.BitmapFormat;	specialinvoke $r13.<org.apache.poi.xslf.util.BitmapFormat: void <init>(java.lang.String)>("png");	return $r13
;block_num 3