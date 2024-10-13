(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1029 0)
(declare-sort var1716 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun specifiedEncoding/450252621 (var1029) String)
(declare-fun constructorSpecifiedEncoding/450252621 (var1029) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1029 var1029)
(declare-const null-String String)
(declare-const var3640 var1029) ; Statement: r1 := @this: freemarker.template.Template$WrongEncodingException 
(assert (not (= var3640 null-var1029)))
(define-const var3645 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3645)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3645!1 String)
(assert (= var3645!1 ""))
(assert true)
(define-const var1875 String (append/672562846 var3645!1 "Encoding specified inside the template (")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Encoding specified inside the template (") 
(declare-const var3645!2 String)
(assert (= var3645!2 (str.++ var3645!1 "Encoding specified inside the template (")))
(define-const var1581 String (specifiedEncoding/450252621 var3640)) ; Statement: $r2 = r1.<freemarker.template.Template$WrongEncodingException: java.lang.String specifiedEncoding> 
(assert true)
(define-const var2901 String (append/672562846 var1875 var1581)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1875!1 String)
(assert (= var1875!1 (str.++ var1875 var1581)))
(assert true)
(define-const var699 String (append/672562846 var2901 ") doesn\u0027t match the encoding specified for the Template constructor")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") doesn\'t match the encoding specified for the Template constructor") 
(declare-const var2901!1 String)
(assert (= var2901!1 (str.++ var2901 ") doesn\u0027t match the encoding specified for the Template constructor")))
(define-const var1503 String (constructorSpecifiedEncoding/450252621 var3640)) ; Statement: $r5 = r1.<freemarker.template.Template$WrongEncodingException: java.lang.String constructorSpecifiedEncoding> 
 ; Statement: if $r5 == null goto $r14 = "." 
(assert (= var1503 null-String)) ; Cond: $r5 == null 
(define-const var3588 String ".") ; Statement: $r14 = "." 
(assert true) ; Non Conditional
(assert true)
(define-const var1076 String (append/672562846 var699 var3588)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var699!1 String)
(assert (= var699!1 (str.++ var699 var3588)))
(assert true)
(define-const var372 String (toString/-2075883882 var1076)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), specifiedEncoding/450252621=([freemarker.template.Template$WrongEncodingException], java.lang.String), constructorSpecifiedEncoding/450252621=([freemarker.template.Template$WrongEncodingException], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1029=freemarker.template.Template$WrongEncodingException, var3640=r1, var3645=$r0, var1875=$r3, var1581=$r2, var2901=$r4, var699=$r6, var1503=$r5, var1716=null_type, var3588=$r14, var1076=$r7, var372=$r8}
; {freemarker.template.Template$WrongEncodingException=var1029, r1=var3640, $r0=var3645, $r3=var1875, $r2=var1581, $r4=var2901, $r6=var699, $r5=var1503, null_type=var1716, $r14=var3588, $r7=var1076, $r8=var372}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.template.Template$WrongEncodingException;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Encoding specified inside the template (");	$r2 = r1.<freemarker.template.Template$WrongEncodingException: java.lang.String specifiedEncoding>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") doesn\'t match the encoding specified for the Template constructor");	$r5 = r1.<freemarker.template.Template$WrongEncodingException: java.lang.String constructorSpecifiedEncoding>;	if $r5 == null goto $r14 = ".";	$r14 = ".";	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3