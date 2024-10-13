(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2193 0)
(declare-sort var874 0)
(declare-sort var1725 0)
(declare-sort var826 0)
(declare-sort var1959 0)
(declare-sort var2875 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1725-init () (Array Int var1725))
(declare-fun var826_notEmpty/1384193294 (String String (Array Int var1725)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun handlebarsJsFile/-815703110 (var2193) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun getClass/1258963082 (var1725) ClassObject)
(declare-fun cast-from-var2193-to-var1725 (var2193) var1725)
(declare-fun getResource/413390302 (ClassObject String) var1959)
(declare-fun var2875-init () var2875)
(declare-fun <init>/875830710 (var2875 String) void)
(declare-const null-var2193 var2193)
(declare-const null-String String)
(declare-const null-var1959 var1959)
(declare-const var3306 var2193) ; Statement: r0 := @this: com.github.jknack.handlebars.Handlebars 
(assert (not (= var3306 null-var2193)))
(declare-const var3586 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3586 null-String)))
(define-const var2010 (Array Int var1725) arr-var1725-init) ; Statement: $r2 = newarray (java.lang.Object)[0] 
(define-const var3590 String (var826_notEmpty/1384193294 (cast-from-String-to-String var3586) "A handlebars.js location is required." var2010)) ; Statement: $r3 = staticinvoke <org.apache.commons.lang3.Validate: java.lang.CharSequence notEmpty(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r1, "A handlebars.js location is required.", $r2) 
(define-const var528 String (cast-from-String-to-String var3590)) ; Statement: $r4 = (java.lang.String) $r3 
(declare-const var3306!1 var2193)
(assert (not (= var3306!1 null-var2193)))
(assert (= (handlebarsJsFile/-815703110 var3306!1) var528)) ; Statement: r0.<com.github.jknack.handlebars.Handlebars: java.lang.String handlebarsJsFile> = $r4 
(define-const var610 String (handlebarsJsFile/-815703110 var3306!1)) ; Statement: $r5 = r0.<com.github.jknack.handlebars.Handlebars: java.lang.String handlebarsJsFile> 
(assert true)
(define-const var2263 Bool (startsWith/-1785782452 var610 "/")) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 != 0 goto $r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (= (ite var2263 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var3755 ClassObject (getClass/1258963082 (cast-from-var2193-to-var1725 var3306!1))) ; Statement: $r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(define-const var2167 String (handlebarsJsFile/-815703110 var3306!1)) ; Statement: $r6 = r0.<com.github.jknack.handlebars.Handlebars: java.lang.String handlebarsJsFile> 
(assert true)
(define-const var3387 var1959 (getResource/413390302 var3755 var2167)) ; Statement: $r13 = virtualinvoke $r7.<java.lang.Class: java.net.URL getResource(java.lang.String)>($r6) 
 ; Statement: if $r13 != null goto return r0 
(assert (not (not (= var3387 null-var1959)))) ; Negate: Cond: $r13 != null  
(define-const var653 var2875 var2875-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(define-const var3479 String (handlebarsJsFile/-815703110 var3306!1)) ; Statement: $r9 = r0.<com.github.jknack.handlebars.Handlebars: java.lang.String handlebarsJsFile> 
(define-const var1450 String (str.++ "File not found: \u0001" var3479)) ; Statement: $r10 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r9) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("File not found: \u0001") 
(assert true)
;(assert (<init>/875830710 var653 var1450)) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var653!1 var2875)
(declare-const var1450!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1725-init=([], java.lang.Object[]), var826_notEmpty/1384193294=([java.lang.CharSequence, java.lang.String, java.lang.Object[]], java.lang.CharSequence), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), handlebarsJsFile/-815703110=([com.github.jknack.handlebars.Handlebars], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2193-to-var1725=([com.github.jknack.handlebars.Handlebars], java.lang.Object), getResource/413390302=([java.lang.Class, java.lang.String], java.net.URL), var2875-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2193=com.github.jknack.handlebars.Handlebars, var3306=r0, var3586=r1, var874=null_type, var1725=java.lang.Object, var2010=$r2, var826=org.apache.commons.lang3.Validate, var3590=$r3, var528=$r4, var610=$r5, var2263=$z0, var3755=$r7, var2167=$r6, var1959=java.net.URL, var3387=$r13, var2875=java.lang.IllegalArgumentException, var653=$r8, var3479=$r9, var1450=$r10}
; {com.github.jknack.handlebars.Handlebars=var2193, r0=var3306, r1=var3586, null_type=var874, java.lang.Object=var1725, $r2=var2010, org.apache.commons.lang3.Validate=var826, $r3=var3590, $r4=var528, $r5=var610, $z0=var2263, $r7=var3755, $r6=var2167, java.net.URL=var1959, $r13=var3387, java.lang.IllegalArgumentException=var2875, $r8=var653, $r9=var3479, $r10=var1450}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.Handlebars;	r1 := @parameter0: java.lang.String;	$r2 = newarray (java.lang.Object)[0];	$r3 = staticinvoke <org.apache.commons.lang3.Validate: java.lang.CharSequence notEmpty(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r1, "A handlebars.js location is required.", $r2);	$r4 = (java.lang.String) $r3;	r0.<com.github.jknack.handlebars.Handlebars: java.lang.String handlebarsJsFile> = $r4;	$r5 = r0.<com.github.jknack.handlebars.Handlebars: java.lang.String handlebarsJsFile>;	$z0 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 != 0 goto $r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r6 = r0.<com.github.jknack.handlebars.Handlebars: java.lang.String handlebarsJsFile>;	$r13 = virtualinvoke $r7.<java.lang.Class: java.net.URL getResource(java.lang.String)>($r6);	if $r13 != null goto return r0;	$r8 = new java.lang.IllegalArgumentException;	$r9 = r0.<com.github.jknack.handlebars.Handlebars: java.lang.String handlebarsJsFile>;	$r10 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r9) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("File not found: \u0001");	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r8
;block_num 3