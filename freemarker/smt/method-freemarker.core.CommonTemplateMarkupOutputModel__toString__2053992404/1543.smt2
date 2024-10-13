(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var474 0)
(declare-sort var2600 0)
(declare-sort var1796 0)
(declare-sort var1205 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getOutputFormat/-433426401 (var474) var2600)
(declare-fun getName/-959053322 (var1796) String)
(declare-fun cast-from-var2600-to-var1796 (var2600) var1796)
(declare-fun plainTextContent/604363572 (var474) String)
(declare-fun markupContent/604363572 (var474) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var474 var474)
(declare-const null-String String)
(declare-const var2816 var474) ; Statement: r1 := @this: freemarker.core.CommonTemplateMarkupOutputModel 
(assert (not (= var2816 null-var474)))
(define-const var1909 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1909)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1909!1 String)
(assert (= var1909!1 ""))
(assert true)
(define-const var2911 String (append/672562846 var1909!1 "markupOutput(format=")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("markupOutput(format=") 
(declare-const var1909!2 String)
(assert (= var1909!2 (str.++ var1909!1 "markupOutput(format=")))
(assert true)
(define-const var1929 var2600 (getOutputFormat/-433426401 var2816)) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.CommonTemplateMarkupOutputModel: freemarker.core.CommonMarkupOutputFormat getOutputFormat()>() 
(assert true)
(define-const var1878 String (getName/-959053322 (cast-from-var2600-to-var1796 var1929))) ; Statement: $r3 = virtualinvoke $r2.<freemarker.core.CommonMarkupOutputFormat: java.lang.String getName()>() 
(assert true)
(define-const var3742 String (append/672562846 var2911 var1878)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2911!1 String)
(assert (= var2911!1 (str.++ var2911 var1878)))
(assert true)
(define-const var2774 String (append/672562846 var3742 ", ")) ; Statement: $r11 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var3742!1 String)
(assert (= var3742!1 (str.++ var3742 ", ")))
(define-const var2184 String (plainTextContent/604363572 var2816)) ; Statement: $r6 = r1.<freemarker.core.CommonTemplateMarkupOutputModel: java.lang.String plainTextContent> 
 ; Statement: if $r6 == null goto $r7 = new java.lang.StringBuilder 
(assert (= var2184 null-String)) ; Cond: $r6 == null 
(define-const var732 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var732)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var732!1 String)
(assert (= var732!1 ""))
(assert true)
(define-const var3059 String (append/672562846 var732!1 "markup=")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("markup=") 
(declare-const var732!2 String)
(assert (= var732!2 (str.++ var732!1 "markup=")))
(define-const var2532 String (markupContent/604363572 var2816)) ; Statement: $r8 = r1.<freemarker.core.CommonTemplateMarkupOutputModel: java.lang.String markupContent> 
(assert true)
(define-const var321 String (append/672562846 var3059 var2532)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3059!1 String)
(assert (= var3059!1 (str.++ var3059 var2532)))
(assert true)
(define-const var596 String (toString/-2075883882 var321)) ; Statement: $r19 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var3061 String (append/672562846 var2774 var596)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var2774!1 String)
(assert (= var2774!1 (str.++ var2774 var596)))
(assert true)
(define-const var2342 String (append/672562846 var3061 ")")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3061!1 String)
(assert (= var3061!1 (str.++ var3061 ")")))
(assert true)
(define-const var2330 String (toString/-2075883882 var2342)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getOutputFormat/-433426401=([freemarker.core.CommonTemplateMarkupOutputModel], freemarker.core.CommonMarkupOutputFormat), getName/-959053322=([freemarker.core.OutputFormat], java.lang.String), cast-from-var2600-to-var1796=([freemarker.core.CommonMarkupOutputFormat], freemarker.core.OutputFormat), plainTextContent/604363572=([freemarker.core.CommonTemplateMarkupOutputModel], java.lang.String), markupContent/604363572=([freemarker.core.CommonTemplateMarkupOutputModel], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var474=freemarker.core.CommonTemplateMarkupOutputModel, var2816=r1, var1909=$r0, var2911=$r4, var2600=freemarker.core.CommonMarkupOutputFormat, var1929=$r2, var1796=freemarker.core.OutputFormat, var1878=$r3, var3742=$r5, var2774=$r11, var2184=$r6, var1205=null_type, var732=$r7, var3059=$r9, var2532=$r8, var321=$r10, var596=$r19, var3061=$r12, var2342=$r13, var2330=$r14}
; {freemarker.core.CommonTemplateMarkupOutputModel=var474, r1=var2816, $r0=var1909, $r4=var2911, freemarker.core.CommonMarkupOutputFormat=var2600, $r2=var1929, freemarker.core.OutputFormat=var1796, $r3=var1878, $r5=var3742, $r11=var2774, $r6=var2184, null_type=var1205, $r7=var732, $r9=var3059, $r8=var2532, $r10=var321, $r19=var596, $r12=var3061, $r13=var2342, $r14=var2330}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: freemarker.core.CommonTemplateMarkupOutputModel;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("markupOutput(format=");	$r2 = virtualinvoke r1.<freemarker.core.CommonTemplateMarkupOutputModel: freemarker.core.CommonMarkupOutputFormat getOutputFormat()>();	$r3 = virtualinvoke $r2.<freemarker.core.CommonMarkupOutputFormat: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r11 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r6 = r1.<freemarker.core.CommonTemplateMarkupOutputModel: java.lang.String plainTextContent>;	if $r6 == null goto $r7 = new java.lang.StringBuilder;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("markup=");	$r8 = r1.<freemarker.core.CommonTemplateMarkupOutputModel: java.lang.String markupContent>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r19 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 3