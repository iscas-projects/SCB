(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2347 0)
(declare-sort var45 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun arr-String-init () (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var2347 var2347)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1425 var2347) ; Statement: r18 := @this: com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper 
(assert (not (= var1425 null-var2347)))
(declare-const var132 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var132 null-String)))
(declare-const var3493 String) ; Statement: r14 := @parameter1: java.lang.String 
(assert (not (= var3493 null-String)))
(declare-const var2442 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var2442 null-String)))
(assert true)
(define-const var2901 String (append/672562846 var132 "\n  var template = Handlebars.template(")) ; Statement: $r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  var template = Handlebars.template(") 
(declare-const var132!1 String)
(assert (= var132!1 (str.++ var132 "\n  var template = Handlebars.template(")))
(assert true)
(define-const var1356 String (append/672562846 var2901 var2442)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2901!1 String)
(assert (= var2901!1 (str.++ var2901 var2442)))
(assert true)
;(assert (append/672562846 var1356 ");\n")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");\n") 
(declare-const var1356!1 String)
(assert (= var1356!1 (str.++ var1356 ");\n")))
(define-const var2214 (Array Int String) arr-String-init) ; Statement: $r4 = newarray (java.lang.String)[2] 
(declare-const var2214!1 (Array Int String))
(assert (not (= var2214!1 null-__Array__Int__String__)))
(assert (= (select var2214!1 0) "templates")) ; Statement: $r4[0] = "templates" 
(declare-const var2214!2 (Array Int String))
(assert (not (= var2214!2 null-__Array__Int__String__)))
(assert (= (select var2214!2 1) "partials")) ; Statement: $r4[1] = "partials" 
(define-const var2062 Int (getLength-Arr-String-1 var2214!2)) ; Statement: i0 = lengthof $r4 
(define-const var1542 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto return 
(assert (>= var1542 var2062)) ; Cond: i1 >= i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), arr-String-init=([], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var2347=com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper, var1425=r18, var132=r0, var3493=r14, var45=null_type, var2442=r1, var2901=$r2, var1356=$r3, var2214=$r4, var2062=i0, var1542=i1}
; {com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper=var2347, r18=var1425, r0=var132, r14=var3493, null_type=var45, r1=var2442, $r2=var2901, $r3=var1356, $r4=var2214, i0=var2062, i1=var1542}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3}
;stmts r18 := @this: com.github.jknack.handlebars.helper.PrecompileHelper$JsWrapper;	r0 := @parameter0: java.lang.StringBuilder;	r14 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.String;	$r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  var template = Handlebars.template(");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");\n");	$r4 = newarray (java.lang.String)[2];	$r4[0] = "templates";	$r4[1] = "partials";	i0 = lengthof $r4;	i1 = 0;	if i1 >= i0 goto return;	return
;block_num 3