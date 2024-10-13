(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2483 0)
(declare-sort var196 0)
(declare-sort var3952 0)
(declare-sort var3028 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getOutputFormat/-433426401 (var2483) var196)
(declare-fun getName/-959053322 (var3952) String)
(declare-fun cast-from-var196-to-var3952 (var196) var3952)
(declare-fun plainTextContent/604363572 (var2483) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2483 var2483)
(declare-const null-String String)
(declare-const var368 var2483) ; Statement: r1 := @this: freemarker.core.CommonTemplateMarkupOutputModel 
(assert (not (= var368 null-var2483)))
(define-const var3769 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3769)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3769!1 String)
(assert (= var3769!1 ""))
(assert true)
(define-const var3231 String (append/672562846 var3769!1 "markupOutput(format=")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("markupOutput(format=") 
(declare-const var3769!2 String)
(assert (= var3769!2 (str.++ var3769!1 "markupOutput(format=")))
(assert true)
(define-const var3614 var196 (getOutputFormat/-433426401 var368)) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.CommonTemplateMarkupOutputModel: freemarker.core.CommonMarkupOutputFormat getOutputFormat()>() 
(assert true)
(define-const var1394 String (getName/-959053322 (cast-from-var196-to-var3952 var3614))) ; Statement: $r3 = virtualinvoke $r2.<freemarker.core.CommonMarkupOutputFormat: java.lang.String getName()>() 
(assert true)
(define-const var3163 String (append/672562846 var3231 var1394)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3231!1 String)
(assert (= var3231!1 (str.++ var3231 var1394)))
(assert true)
(define-const var3035 String (append/672562846 var3163 ", ")) ; Statement: $r11 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var3163!1 String)
(assert (= var3163!1 (str.++ var3163 ", ")))
(define-const var2575 String (plainTextContent/604363572 var368)) ; Statement: $r6 = r1.<freemarker.core.CommonTemplateMarkupOutputModel: java.lang.String plainTextContent> 
 ; Statement: if $r6 == null goto $r7 = new java.lang.StringBuilder 
(assert (not (= var2575 null-String))) ; Negate: Cond: $r6 == null  
(define-const var1130 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1130)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1130!1 String)
(assert (= var1130!1 ""))
(assert true)
(define-const var741 String (append/672562846 var1130!1 "plainText=")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("plainText=") 
(declare-const var1130!2 String)
(assert (= var1130!2 (str.++ var1130!1 "plainText=")))
(define-const var2825 String (plainTextContent/604363572 var368)) ; Statement: $r16 = r1.<freemarker.core.CommonTemplateMarkupOutputModel: java.lang.String plainTextContent> 
(assert true)
(define-const var1375 String (append/672562846 var741 var2825)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var741!1 String)
(assert (= var741!1 (str.++ var741 var2825)))
(assert true)
(define-const var442 String (toString/-2075883882 var1375)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2820 String (append/672562846 var3035 var442)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var3035!1 String)
(assert (= var3035!1 (str.++ var3035 var442)))
(assert true)
(define-const var3847 String (append/672562846 var2820 ")")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2820!1 String)
(assert (= var2820!1 (str.++ var2820 ")")))
(assert true)
(define-const var3793 String (toString/-2075883882 var3847)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getOutputFormat/-433426401=([freemarker.core.CommonTemplateMarkupOutputModel], freemarker.core.CommonMarkupOutputFormat), getName/-959053322=([freemarker.core.OutputFormat], java.lang.String), cast-from-var196-to-var3952=([freemarker.core.CommonMarkupOutputFormat], freemarker.core.OutputFormat), plainTextContent/604363572=([freemarker.core.CommonTemplateMarkupOutputModel], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2483=freemarker.core.CommonTemplateMarkupOutputModel, var368=r1, var3769=$r0, var3231=$r4, var196=freemarker.core.CommonMarkupOutputFormat, var3614=$r2, var3952=freemarker.core.OutputFormat, var1394=$r3, var3163=$r5, var3035=$r11, var2575=$r6, var3028=null_type, var1130=$r15, var741=$r17, var2825=$r16, var1375=$r18, var442=$r19, var2820=$r12, var3847=$r13, var3793=$r14}
; {freemarker.core.CommonTemplateMarkupOutputModel=var2483, r1=var368, $r0=var3769, $r4=var3231, freemarker.core.CommonMarkupOutputFormat=var196, $r2=var3614, freemarker.core.OutputFormat=var3952, $r3=var1394, $r5=var3163, $r11=var3035, $r6=var2575, null_type=var3028, $r15=var1130, $r17=var741, $r16=var2825, $r18=var1375, $r19=var442, $r12=var2820, $r13=var3847, $r14=var3793}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: freemarker.core.CommonTemplateMarkupOutputModel;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("markupOutput(format=");	$r2 = virtualinvoke r1.<freemarker.core.CommonTemplateMarkupOutputModel: freemarker.core.CommonMarkupOutputFormat getOutputFormat()>();	$r3 = virtualinvoke $r2.<freemarker.core.CommonMarkupOutputFormat: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r11 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r6 = r1.<freemarker.core.CommonTemplateMarkupOutputModel: java.lang.String plainTextContent>;	if $r6 == null goto $r7 = new java.lang.StringBuilder;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("plainText=");	$r16 = r1.<freemarker.core.CommonTemplateMarkupOutputModel: java.lang.String plainTextContent>;	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19)];	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 3