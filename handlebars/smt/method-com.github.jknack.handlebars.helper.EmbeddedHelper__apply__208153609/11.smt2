(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1575 0)
(declare-sort var1189 0)
(declare-sort var1072 0)
(declare-sort var1728 0)
(declare-sort var1729 0)
(declare-sort var954 0)
(declare-sort var81 0)
(declare-sort var2867 0)
(declare-sort var3449 0)
(declare-sort var2580 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1728-init () (Array Int var1728))
(declare-fun cast-from-String-to-var1728 (String) var1728)
(declare-fun var1729_notEmpty/1384193294 (String String (Array Int var1728)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun handlebars/-493974260 (var1072) var954)
(declare-fun getLoader/-1149920659 (var954) var81)
(declare-fun var81_getSuffix/-1250247444 (var81) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun param/622138271 (var1072 Int var1728) var1728)
(declare-fun cast-from-var1728-to-String (var1728) String)
(declare-fun var81_sourceAt/-803108316 (var81 String) var2867)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getCharset/-772689681 (var954) var3449)
(declare-fun var2867_content/649220310 (var2867 var3449) String)
(declare-fun var2580-init () var2580)
(declare-fun <init>/-35122668 (var2580 String) void)
(declare-const null-var1575 var1575)
(declare-const null-String String)
(declare-const null-var1072 var1072)
(declare-const null-__Array__Int__var1728__ (Array Int var1728))
(declare-const var180 var1575) ; Statement: r22 := @this: com.github.jknack.handlebars.helper.EmbeddedHelper 
(assert (not (= var180 null-var1575)))
(declare-const var429 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var429 null-String)))
(declare-const var3344 var1072) ; Statement: r2 := @parameter1: com.github.jknack.handlebars.Options 
(assert (not (= var3344 null-var1072)))
(define-const var722 (Array Int var1728) arr-var1728-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(declare-const var722!1 (Array Int var1728))
(assert (not (= var722!1 null-__Array__Int__var1728__)))
(assert (= (select var722!1 0) (cast-from-String-to-var1728 var429))) ; Statement: $r1[0] = r0 
;(assert (var1729_notEmpty/1384193294 (cast-from-String-to-String var429) "found \u0027%s\u0027, expected \u0027partial\u0027s name\u0027" var722!1)) ; Statement: staticinvoke <org.apache.commons.lang3.Validate: java.lang.CharSequence notEmpty(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r0, "found \'%s\', expected \'partial\'s name\'", $r1) 

(declare-const var429!1 String)
(declare-const var315 String)
(declare-const var722!2 (Array Int var1728))
(define-const var3732 var954 (handlebars/-493974260 var3344)) ; Statement: $r3 = r2.<com.github.jknack.handlebars.Options: com.github.jknack.handlebars.Handlebars handlebars> 
(assert true)
(define-const var2581 var81 (getLoader/-1149920659 var3732)) ; Statement: $r4 = virtualinvoke $r3.<com.github.jknack.handlebars.Handlebars: com.github.jknack.handlebars.io.TemplateLoader getLoader()>() 
(define-const var3607 String (var81_getSuffix/-1250247444 var2581)) ; Statement: r5 = interfaceinvoke $r4.<com.github.jknack.handlebars.io.TemplateLoader: java.lang.String getSuffix()>() 
(define-const var295 String (str.++ "\u0001\u0001" var429!1 var3607)) ; Statement: $r6 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>(r0, r5) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001") 
(assert true)
(define-const var3272 String (replace/1524665721 var295 47 45)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.String: java.lang.String replace(char,char)>(47, 45) 
(assert true)
(define-const var1877 String (replace/1524665721 var3272 46 45)) ; Statement: r8 = virtualinvoke $r7.<java.lang.String: java.lang.String replace(char,char)>(46, 45) 
(assert true)
(define-const var868 var1728 (param/622138271 var3344 0 (cast-from-String-to-var1728 var1877))) ; Statement: $r9 = virtualinvoke r2.<com.github.jknack.handlebars.Options: java.lang.Object param(int,java.lang.Object)>(0, r8) 
(define-const var2088 String (cast-from-var1728-to-String var868)) ; Statement: r10 = (java.lang.String) $r9 
(define-const var2896 var954 (handlebars/-493974260 var3344)) ; Statement: $r11 = r2.<com.github.jknack.handlebars.Options: com.github.jknack.handlebars.Handlebars handlebars> 
(assert true)
(define-const var1024 var81 (getLoader/-1149920659 var2896)) ; Statement: $r12 = virtualinvoke $r11.<com.github.jknack.handlebars.Handlebars: com.github.jknack.handlebars.io.TemplateLoader getLoader()>() 
(define-const var3905 var2867 (var81_sourceAt/-803108316 var1024 var429!1)) ; Statement: r13 = interfaceinvoke $r12.<com.github.jknack.handlebars.io.TemplateLoader: com.github.jknack.handlebars.io.TemplateSource sourceAt(java.lang.String)>(r0) 
(define-const var1931 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1931)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1931!1 String)
(assert (= var1931!1 ""))
(assert true)
(define-const var1207 String (append/672562846 var1931!1 "<script id=\u0022")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<script id=\"") 
(declare-const var1931!2 String)
(assert (= var1931!2 (str.++ var1931!1 "<script id=\u0022")))
(assert true)
(define-const var3372 String (append/672562846 var1207 var2088)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var1207!1 String)
(assert (= var1207!1 (str.++ var1207 var2088)))
(assert true)
;(assert (append/672562846 var3372 "\u0022 type=\u0022text/x-handlebars\u0022>\n")) ; Statement: virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" type=\"text/x-handlebars\">\n") 
(declare-const var3372!1 String)
(assert (= var3372!1 (str.++ var3372 "\u0022 type=\u0022text/x-handlebars\u0022>\n")))
(define-const var1027 var954 (handlebars/-493974260 var3344)) ; Statement: $r17 = r2.<com.github.jknack.handlebars.Options: com.github.jknack.handlebars.Handlebars handlebars> 
(assert true)
(define-const var2424 var3449 (getCharset/-772689681 var1027)) ; Statement: $r18 = virtualinvoke $r17.<com.github.jknack.handlebars.Handlebars: java.nio.charset.Charset getCharset()>() 
(define-const var2006 String (var2867_content/649220310 var3905 var2424)) ; Statement: $r19 = interfaceinvoke r13.<com.github.jknack.handlebars.io.TemplateSource: java.lang.String content(java.nio.charset.Charset)>($r18) 
(assert true)
(define-const var690 String (append/672562846 var1931!2 var2006)) ; Statement: $r20 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var1931!3 String)
(assert (= var1931!3 (str.++ var1931!2 var2006)))
(assert true)
;(assert (append/672562846 var690 "\n")) ; Statement: virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var690!1 String)
(assert (= var690!1 (str.++ var690 "\n")))
(assert true)
;(assert (append/672562846 var1931!3 "</script>")) ; Statement: virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</script>") 
(declare-const var1931!4 String)
(assert (= var1931!4 (str.++ var1931!3 "</script>")))
(define-const var2739 var2580 var2580-init) ; Statement: $r21 = new com.github.jknack.handlebars.Handlebars$SafeString 
(assert true)
;(assert (<init>/-35122668 var2739 (cast-from-String-to-String var1931!4))) ; Statement: specialinvoke $r21.<com.github.jknack.handlebars.Handlebars$SafeString: void <init>(java.lang.CharSequence)>($r14) 

(declare-const var2739!1 var2580)
(declare-const var1931!5 String)
 ; Statement: return $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1728-init=([], java.lang.Object[]), cast-from-String-to-var1728=([java.lang.String], java.lang.Object), var1729_notEmpty/1384193294=([java.lang.CharSequence, java.lang.String, java.lang.Object[]], java.lang.CharSequence), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), handlebars/-493974260=([com.github.jknack.handlebars.Options], com.github.jknack.handlebars.Handlebars), getLoader/-1149920659=([com.github.jknack.handlebars.Handlebars], com.github.jknack.handlebars.io.TemplateLoader), var81_getSuffix/-1250247444=([com.github.jknack.handlebars.io.TemplateLoader], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), param/622138271=([com.github.jknack.handlebars.Options, int, java.lang.Object], java.lang.Object), cast-from-var1728-to-String=([java.lang.Object], java.lang.String), var81_sourceAt/-803108316=([com.github.jknack.handlebars.io.TemplateLoader, java.lang.String], com.github.jknack.handlebars.io.TemplateSource), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getCharset/-772689681=([com.github.jknack.handlebars.Handlebars], java.nio.charset.Charset), var2867_content/649220310=([com.github.jknack.handlebars.io.TemplateSource, java.nio.charset.Charset], java.lang.String), var2580-init=([], com.github.jknack.handlebars.Handlebars$SafeString), <init>/-35122668=([com.github.jknack.handlebars.Handlebars$SafeString, java.lang.CharSequence], void)}
; {var1575=com.github.jknack.handlebars.helper.EmbeddedHelper, var180=r22, var429=r0, var1189=null_type, var1072=com.github.jknack.handlebars.Options, var3344=r2, var1728=java.lang.Object, var722=$r1, var1729=org.apache.commons.lang3.Validate, var315="found \'%s\', expected \'partial\'s name\'", var954=com.github.jknack.handlebars.Handlebars, var3732=$r3, var81=com.github.jknack.handlebars.io.TemplateLoader, var2581=$r4, var3607=r5, var295=$r6, var3272=$r7, var1877=r8, var868=$r9, var2088=r10, var2896=$r11, var1024=$r12, var2867=com.github.jknack.handlebars.io.TemplateSource, var3905=r13, var1931=$r14, var1207=$r15, var3372=$r16, var1027=$r17, var3449=java.nio.charset.Charset, var2424=$r18, var2006=$r19, var690=$r20, var2580=com.github.jknack.handlebars.Handlebars$SafeString, var2739=$r21}
; {com.github.jknack.handlebars.helper.EmbeddedHelper=var1575, r22=var180, r0=var429, null_type=var1189, com.github.jknack.handlebars.Options=var1072, r2=var3344, java.lang.Object=var1728, $r1=var722, org.apache.commons.lang3.Validate=var1729, "found \'%s\', expected \'partial\'s name\'"=var315, com.github.jknack.handlebars.Handlebars=var954, $r3=var3732, com.github.jknack.handlebars.io.TemplateLoader=var81, $r4=var2581, r5=var3607, $r6=var295, $r7=var3272, r8=var1877, $r9=var868, r10=var2088, $r11=var2896, $r12=var1024, com.github.jknack.handlebars.io.TemplateSource=var2867, r13=var3905, $r14=var1931, $r15=var1207, $r16=var3372, $r17=var1027, java.nio.charset.Charset=var3449, $r18=var2424, $r19=var2006, $r20=var690, com.github.jknack.handlebars.Handlebars$SafeString=var2580, $r21=var2739}
;seq <java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6}
;stmts r22 := @this: com.github.jknack.handlebars.helper.EmbeddedHelper;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: com.github.jknack.handlebars.Options;	$r1 = newarray (java.lang.Object)[1];	$r1[0] = r0;	staticinvoke <org.apache.commons.lang3.Validate: java.lang.CharSequence notEmpty(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r0, "found \'%s\', expected \'partial\'s name\'", $r1);	$r3 = r2.<com.github.jknack.handlebars.Options: com.github.jknack.handlebars.Handlebars handlebars>;	$r4 = virtualinvoke $r3.<com.github.jknack.handlebars.Handlebars: com.github.jknack.handlebars.io.TemplateLoader getLoader()>();	r5 = interfaceinvoke $r4.<com.github.jknack.handlebars.io.TemplateLoader: java.lang.String getSuffix()>();	$r6 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>(r0, r5) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001");	$r7 = virtualinvoke $r6.<java.lang.String: java.lang.String replace(char,char)>(47, 45);	r8 = virtualinvoke $r7.<java.lang.String: java.lang.String replace(char,char)>(46, 45);	$r9 = virtualinvoke r2.<com.github.jknack.handlebars.Options: java.lang.Object param(int,java.lang.Object)>(0, r8);	r10 = (java.lang.String) $r9;	$r11 = r2.<com.github.jknack.handlebars.Options: com.github.jknack.handlebars.Handlebars handlebars>;	$r12 = virtualinvoke $r11.<com.github.jknack.handlebars.Handlebars: com.github.jknack.handlebars.io.TemplateLoader getLoader()>();	r13 = interfaceinvoke $r12.<com.github.jknack.handlebars.io.TemplateLoader: com.github.jknack.handlebars.io.TemplateSource sourceAt(java.lang.String)>(r0);	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<script id=\"");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" type=\"text/x-handlebars\">\n");	$r17 = r2.<com.github.jknack.handlebars.Options: com.github.jknack.handlebars.Handlebars handlebars>;	$r18 = virtualinvoke $r17.<com.github.jknack.handlebars.Handlebars: java.nio.charset.Charset getCharset()>();	$r19 = interfaceinvoke r13.<com.github.jknack.handlebars.io.TemplateSource: java.lang.String content(java.nio.charset.Charset)>($r18);	$r20 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</script>");	$r21 = new com.github.jknack.handlebars.Handlebars$SafeString;	specialinvoke $r21.<com.github.jknack.handlebars.Handlebars$SafeString: void <init>(java.lang.CharSequence)>($r14);	return $r21
;block_num 1