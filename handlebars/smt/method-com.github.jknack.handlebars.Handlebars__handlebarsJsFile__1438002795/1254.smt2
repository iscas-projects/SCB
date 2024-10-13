(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1401 0)
(declare-sort var2316 0)
(declare-sort var788 0)
(declare-sort var2174 0)
(declare-sort var1161 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var788-init () (Array Int var788))
(declare-fun var2174_notEmpty/1384193294 (String String (Array Int var788)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun handlebarsJsFile/-815703110 (var1401) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun getClass/1258963082 (var788) ClassObject)
(declare-fun cast-from-var1401-to-var788 (var1401) var788)
(declare-fun getResource/413390302 (ClassObject String) var1161)
(declare-const null-var1401 var1401)
(declare-const null-String String)
(declare-const null-var1161 var1161)
(declare-const var2532 var1401) ; Statement: r0 := @this: com.github.jknack.handlebars.Handlebars 
(assert (not (= var2532 null-var1401)))
(declare-const var2661 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2661 null-String)))
(define-const var3277 (Array Int var788) arr-var788-init) ; Statement: $r2 = newarray (java.lang.Object)[0] 
(define-const var3630 String (var2174_notEmpty/1384193294 (cast-from-String-to-String var2661) "A handlebars.js location is required." var3277)) ; Statement: $r3 = staticinvoke <org.apache.commons.lang3.Validate: java.lang.CharSequence notEmpty(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r1, "A handlebars.js location is required.", $r2) 
(define-const var1060 String (cast-from-String-to-String var3630)) ; Statement: $r4 = (java.lang.String) $r3 
(declare-const var2532!1 var1401)
(assert (not (= var2532!1 null-var1401)))
(assert (= (handlebarsJsFile/-815703110 var2532!1) var1060)) ; Statement: r0.<com.github.jknack.handlebars.Handlebars: java.lang.String handlebarsJsFile> = $r4 
(define-const var856 String (handlebarsJsFile/-815703110 var2532!1)) ; Statement: $r5 = r0.<com.github.jknack.handlebars.Handlebars: java.lang.String handlebarsJsFile> 
(assert true)
(define-const var1854 Bool (startsWith/-1785782452 var856 "/")) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 != 0 goto $r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (= (ite var1854 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var475 ClassObject (getClass/1258963082 (cast-from-var1401-to-var788 var2532!1))) ; Statement: $r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(define-const var2988 String (handlebarsJsFile/-815703110 var2532!1)) ; Statement: $r6 = r0.<com.github.jknack.handlebars.Handlebars: java.lang.String handlebarsJsFile> 
(assert true)
(define-const var15 var1161 (getResource/413390302 var475 var2988)) ; Statement: $r13 = virtualinvoke $r7.<java.lang.Class: java.net.URL getResource(java.lang.String)>($r6) 
 ; Statement: if $r13 != null goto return r0 
(assert (not (= var15 null-var1161))) ; Cond: $r13 != null 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var788-init=([], java.lang.Object[]), var2174_notEmpty/1384193294=([java.lang.CharSequence, java.lang.String, java.lang.Object[]], java.lang.CharSequence), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), handlebarsJsFile/-815703110=([com.github.jknack.handlebars.Handlebars], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1401-to-var788=([com.github.jknack.handlebars.Handlebars], java.lang.Object), getResource/413390302=([java.lang.Class, java.lang.String], java.net.URL)}
; {var1401=com.github.jknack.handlebars.Handlebars, var2532=r0, var2661=r1, var2316=null_type, var788=java.lang.Object, var3277=$r2, var2174=org.apache.commons.lang3.Validate, var3630=$r3, var1060=$r4, var856=$r5, var1854=$z0, var475=$r7, var2988=$r6, var1161=java.net.URL, var15=$r13}
; {com.github.jknack.handlebars.Handlebars=var1401, r0=var2532, r1=var2661, null_type=var2316, java.lang.Object=var788, $r2=var3277, org.apache.commons.lang3.Validate=var2174, $r3=var3630, $r4=var1060, $r5=var856, $z0=var1854, $r7=var475, $r6=var2988, java.net.URL=var1161, $r13=var15}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.Handlebars;	r1 := @parameter0: java.lang.String;	$r2 = newarray (java.lang.Object)[0];	$r3 = staticinvoke <org.apache.commons.lang3.Validate: java.lang.CharSequence notEmpty(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r1, "A handlebars.js location is required.", $r2);	$r4 = (java.lang.String) $r3;	r0.<com.github.jknack.handlebars.Handlebars: java.lang.String handlebarsJsFile> = $r4;	$r5 = r0.<com.github.jknack.handlebars.Handlebars: java.lang.String handlebarsJsFile>;	$z0 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 != 0 goto $r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r6 = r0.<com.github.jknack.handlebars.Handlebars: java.lang.String handlebarsJsFile>;	$r13 = virtualinvoke $r7.<java.lang.Class: java.net.URL getResource(java.lang.String)>($r6);	if $r13 != null goto return r0;	return r0
;block_num 3