(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1745 0)
(declare-sort var1839 0)
(declare-sort var2613 0)
(declare-sort var3741 0)
(declare-sort var3144 0)
(declare-sort var2232 0)
(declare-sort var974 0)
(declare-sort var2299 0)
(declare-sort var2472 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3741_parse/-981832491 (String var2613) String)
(declare-fun builderAssistant/-1490269348 (var1745) var3144)
(declare-fun applyCurrentNamespace/296309646 (var3144 String Bool) String)
(declare-fun configuration/-1490269348 (var1745) var2232)
(declare-fun var2299-init () var2299)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1853877964 (var2299 String var2472) void)
(declare-fun cast-from-var974-to-var2472 (var974) var2472)
(declare-const null-var1745 var1745)
(declare-const null-String String)
(declare-const null-var2613 var2613)
(declare-const null-var974 var974)
(declare-const var2759 var1745) ; Statement: r1 := @this: org.apache.ibatis.builder.xml.XMLIncludeTransformer 
(assert (not (= var2759 null-var1745)))
(declare-const var2591 String) ; Statement: r15 := @parameter0: java.lang.String 
(assert (not (= var2591 null-String)))
(declare-const var3357 var2613) ; Statement: r0 := @parameter1: java.util.Properties 
(assert (not (= var3357 null-var2613)))
(define-const var1455 String (var3741_parse/-981832491 var2591 var3357)) ; Statement: r16 = staticinvoke <org.apache.ibatis.parsing.PropertyParser: java.lang.String parse(java.lang.String,java.util.Properties)>(r15, r0) 
(define-const var80 var3144 (builderAssistant/-1490269348 var2759)) ; Statement: $r2 = r1.<org.apache.ibatis.builder.xml.XMLIncludeTransformer: org.apache.ibatis.builder.MapperBuilderAssistant builderAssistant> 
(assert true)
(define-const var1654 String (applyCurrentNamespace/296309646 var80 var1455 (ite (= 1 1) true false))) ; Statement: r17 = virtualinvoke $r2.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.String applyCurrentNamespace(java.lang.String,boolean)>(r16, 1) 
(define-const var2413 var2232 (configuration/-1490269348 var2759)) ; Statement: $r3 = r1.<org.apache.ibatis.builder.xml.XMLIncludeTransformer: org.apache.ibatis.session.Configuration configuration> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var732 var974) ; Statement: $r8 := @caughtexception 
(assert (not (= var732 null-var974)))
(define-const var1032 var2299 var2299-init) ; Statement: $r9 = new org.apache.ibatis.builder.IncompleteElementException 
(define-const var3624 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3624)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3624!1 String)
(assert (= var3624!1 ""))
(assert true)
(define-const var3362 String (append/672562846 var3624!1 "Could not find SQL statement to include with refid \u0027")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find SQL statement to include with refid \'") 
(declare-const var3624!2 String)
(assert (= var3624!2 (str.++ var3624!1 "Could not find SQL statement to include with refid \u0027")))
(assert true)
(define-const var993 String (append/672562846 var3362 var1654)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r17) 
(declare-const var3362!1 String)
(assert (= var3362!1 (str.++ var3362 var1654)))
(assert true)
(define-const var1842 String (append/672562846 var993 "\u0027")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var993!1 String)
(assert (= var993!1 (str.++ var993 "\u0027")))
(assert true)
(define-const var3579 String (toString/-2075883882 var1842)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1853877964 var1032 var3579 (cast-from-var974-to-var2472 var732))) ; Statement: specialinvoke $r9.<org.apache.ibatis.builder.IncompleteElementException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r8) 

(declare-const var1032!1 var2299)
(declare-const var3579!1 String)
(declare-const var732!1 var974)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var3741_parse/-981832491=([java.lang.String, java.util.Properties], java.lang.String), builderAssistant/-1490269348=([org.apache.ibatis.builder.xml.XMLIncludeTransformer], org.apache.ibatis.builder.MapperBuilderAssistant), applyCurrentNamespace/296309646=([org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.String, boolean], java.lang.String), configuration/-1490269348=([org.apache.ibatis.builder.xml.XMLIncludeTransformer], org.apache.ibatis.session.Configuration), var2299-init=([], org.apache.ibatis.builder.IncompleteElementException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1853877964=([org.apache.ibatis.builder.IncompleteElementException, java.lang.String, java.lang.Throwable], void), cast-from-var974-to-var2472=([java.lang.IllegalArgumentException], java.lang.Throwable)}
; {var1745=org.apache.ibatis.builder.xml.XMLIncludeTransformer, var2759=r1, var2591=r15, var1839=null_type, var2613=java.util.Properties, var3357=r0, var3741=org.apache.ibatis.parsing.PropertyParser, var1455=r16, var3144=org.apache.ibatis.builder.MapperBuilderAssistant, var80=$r2, var1654=r17, var2232=org.apache.ibatis.session.Configuration, var2413=$r3, var974=java.lang.IllegalArgumentException, var732=$r8, var2299=org.apache.ibatis.builder.IncompleteElementException, var1032=$r9, var3624=$r10, var3362=$r11, var993=$r12, var1842=$r13, var3579=$r14, var2472=java.lang.Throwable}
; {org.apache.ibatis.builder.xml.XMLIncludeTransformer=var1745, r1=var2759, r15=var2591, null_type=var1839, java.util.Properties=var2613, r0=var3357, org.apache.ibatis.parsing.PropertyParser=var3741, r16=var1455, org.apache.ibatis.builder.MapperBuilderAssistant=var3144, $r2=var80, r17=var1654, org.apache.ibatis.session.Configuration=var2232, $r3=var2413, java.lang.IllegalArgumentException=var974, $r8=var732, org.apache.ibatis.builder.IncompleteElementException=var2299, $r9=var1032, $r10=var3624, $r11=var3362, $r12=var993, $r13=var1842, $r14=var3579, java.lang.Throwable=var2472}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.builder.xml.XMLIncludeTransformer;	r15 := @parameter0: java.lang.String;	r0 := @parameter1: java.util.Properties;	r16 = staticinvoke <org.apache.ibatis.parsing.PropertyParser: java.lang.String parse(java.lang.String,java.util.Properties)>(r15, r0);	$r2 = r1.<org.apache.ibatis.builder.xml.XMLIncludeTransformer: org.apache.ibatis.builder.MapperBuilderAssistant builderAssistant>;	r17 = virtualinvoke $r2.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.String applyCurrentNamespace(java.lang.String,boolean)>(r16, 1);	$r3 = r1.<org.apache.ibatis.builder.xml.XMLIncludeTransformer: org.apache.ibatis.session.Configuration configuration>;	$r8 := @caughtexception;	$r9 = new org.apache.ibatis.builder.IncompleteElementException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find SQL statement to include with refid \'");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r17);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<org.apache.ibatis.builder.IncompleteElementException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r8);	throw $r9
;block_num 2