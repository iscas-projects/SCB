(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1377 0)
(declare-sort var1369 0)
(declare-sort var2175 0)
(declare-sort var2373 0)
(declare-sort var3616 0)
(declare-sort var52 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun outputFormat/-1475596563 (var1377) var2175)
(declare-fun var2373-init () var2373)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3616) String)
(declare-fun cast-from-var2175-to-var3616 (var2175) var3616)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun template/-1475596563 (var1377) var52)
(declare-fun <init>/-549569735 (var2373 String var52 var1369) void)
(declare-const null-var1377 var1377)
(declare-const null-var1369 var1369)
(declare-const var238 var1377) ; Statement: r0 := @this: freemarker.core.FMParser 
(assert (not (= var238 null-var1377)))
(declare-const var1655 var1369) ; Statement: r7 := @parameter0: freemarker.core.Token 
(assert (not (= var1655 null-var1369)))
(define-const var882 var2175 (outputFormat/-1475596563 var238)) ; Statement: $r1 = r0.<freemarker.core.FMParser: freemarker.core.OutputFormat outputFormat> 
(define-const var3390 Bool false) ; Statement: $z0 = $r1 instanceof freemarker.core.MarkupOutputFormat 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var3390 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var438 var2373 var2373-init) ; Statement: $r2 = new freemarker.core.ParseException 
(define-const var2039 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2039)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2039!1 String)
(assert (= var2039!1 ""))
(assert true)
(define-const var247 String (append/672562846 var2039!1 "The current output format can\u0027t do escaping: ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The current output format can\'t do escaping: ") 
(declare-const var2039!2 String)
(assert (= var2039!2 (str.++ var2039!1 "The current output format can\u0027t do escaping: ")))
(define-const var1054 var2175 (outputFormat/-1475596563 var238)) ; Statement: $r4 = r0.<freemarker.core.FMParser: freemarker.core.OutputFormat outputFormat> 
(assert true)
(define-const var2854 String (append/-1031950772 var247 (cast-from-var2175-to-var3616 var1054))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var247!1 String)
(assert (str.prefixof var247 var247!1))
(assert true)
(define-const var1957 String (toString/-2075883882 var2854)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var348 var52 (template/-1475596563 var238)) ; Statement: $r8 = r0.<freemarker.core.FMParser: freemarker.template.Template template> 
(assert true)
;(assert (<init>/-549569735 var438 var1957 var348 var1655)) ; Statement: specialinvoke $r2.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.template.Template,freemarker.core.Token)>($r9, $r8, r7) 

(declare-const var438!1 var2373)
(declare-const var1957!1 String)
(declare-const var348!1 var52)
(declare-const var1655!1 var1369)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {outputFormat/-1475596563=([freemarker.core.FMParser], freemarker.core.OutputFormat), var2373-init=([], freemarker.core.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2175-to-var3616=([freemarker.core.OutputFormat], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), template/-1475596563=([freemarker.core.FMParser], freemarker.template.Template), <init>/-549569735=([freemarker.core.ParseException, java.lang.String, freemarker.template.Template, freemarker.core.Token], void)}
; {var1377=freemarker.core.FMParser, var238=r0, var1369=freemarker.core.Token, var1655=r7, var2175=freemarker.core.OutputFormat, var882=$r1, var3390=$z0, var2373=freemarker.core.ParseException, var438=$r2, var2039=$r3, var247=$r5, var1054=$r4, var3616=java.lang.Object, var2854=$r6, var1957=$r9, var52=freemarker.template.Template, var348=$r8}
; {freemarker.core.FMParser=var1377, r0=var238, freemarker.core.Token=var1369, r7=var1655, freemarker.core.OutputFormat=var2175, $r1=var882, $z0=var3390, freemarker.core.ParseException=var2373, $r2=var438, $r3=var2039, $r5=var247, $r4=var1054, java.lang.Object=var3616, $r6=var2854, $r9=var1957, freemarker.template.Template=var52, $r8=var348}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.FMParser;	r7 := @parameter0: freemarker.core.Token;	$r1 = r0.<freemarker.core.FMParser: freemarker.core.OutputFormat outputFormat>;	$z0 = $r1 instanceof freemarker.core.MarkupOutputFormat;	if $z0 != 0 goto return;	$r2 = new freemarker.core.ParseException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The current output format can\'t do escaping: ");	$r4 = r0.<freemarker.core.FMParser: freemarker.core.OutputFormat outputFormat>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = r0.<freemarker.core.FMParser: freemarker.template.Template template>;	specialinvoke $r2.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.template.Template,freemarker.core.Token)>($r9, $r8, r7);	throw $r2
;block_num 2