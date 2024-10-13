(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var797 0)
(declare-sort var1818 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun specifiedEncoding/450252621 (var797) String)
(declare-fun constructorSpecifiedEncoding/450252621 (var797) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var797 var797)
(declare-const null-String String)
(declare-const var3309 var797) ; Statement: r1 := @this: freemarker.template.Template$WrongEncodingException 
(assert (not (= var3309 null-var797)))
(define-const var316 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var316)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var316!1 String)
(assert (= var316!1 ""))
(assert true)
(define-const var156 String (append/672562846 var316!1 "Encoding specified inside the template (")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Encoding specified inside the template (") 
(declare-const var316!2 String)
(assert (= var316!2 (str.++ var316!1 "Encoding specified inside the template (")))
(define-const var3237 String (specifiedEncoding/450252621 var3309)) ; Statement: $r2 = r1.<freemarker.template.Template$WrongEncodingException: java.lang.String specifiedEncoding> 
(assert true)
(define-const var3644 String (append/672562846 var156 var3237)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var156!1 String)
(assert (= var156!1 (str.++ var156 var3237)))
(assert true)
(define-const var2591 String (append/672562846 var3644 ") doesn\u0027t match the encoding specified for the Template constructor")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") doesn\'t match the encoding specified for the Template constructor") 
(declare-const var3644!1 String)
(assert (= var3644!1 (str.++ var3644 ") doesn\u0027t match the encoding specified for the Template constructor")))
(define-const var191 String (constructorSpecifiedEncoding/450252621 var3309)) ; Statement: $r5 = r1.<freemarker.template.Template$WrongEncodingException: java.lang.String constructorSpecifiedEncoding> 
 ; Statement: if $r5 == null goto $r14 = "." 
(assert (not (= var191 null-String))) ; Negate: Cond: $r5 == null  
(define-const var3227 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3227)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3227!1 String)
(assert (= var3227!1 ""))
(assert true)
(define-const var3384 String (append/672562846 var3227!1 " (")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var3227!2 String)
(assert (= var3227!2 (str.++ var3227!1 " (")))
(define-const var2923 String (constructorSpecifiedEncoding/450252621 var3309)) ; Statement: $r10 = r1.<freemarker.template.Template$WrongEncodingException: java.lang.String constructorSpecifiedEncoding> 
(assert true)
(define-const var3897 String (append/672562846 var3384 var2923)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3384!1 String)
(assert (= var3384!1 (str.++ var3384 var2923)))
(assert true)
(define-const var1047 String (append/672562846 var3897 ").")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(").") 
(declare-const var3897!1 String)
(assert (= var3897!1 (str.++ var3897 ").")))
(assert true)
(define-const var1406 String (toString/-2075883882 var1047)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3593 String (append/672562846 var2591 var1406)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var2591!1 String)
(assert (= var2591!1 (str.++ var2591 var1406)))
(assert true)
(define-const var2699 String (toString/-2075883882 var3593)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), specifiedEncoding/450252621=([freemarker.template.Template$WrongEncodingException], java.lang.String), constructorSpecifiedEncoding/450252621=([freemarker.template.Template$WrongEncodingException], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var797=freemarker.template.Template$WrongEncodingException, var3309=r1, var316=$r0, var156=$r3, var3237=$r2, var3644=$r4, var2591=$r6, var191=$r5, var1818=null_type, var3227=$r9, var3384=$r11, var2923=$r10, var3897=$r12, var1047=$r13, var1406=$r14, var3593=$r7, var2699=$r8}
; {freemarker.template.Template$WrongEncodingException=var797, r1=var3309, $r0=var316, $r3=var156, $r2=var3237, $r4=var3644, $r6=var2591, $r5=var191, null_type=var1818, $r9=var3227, $r11=var3384, $r10=var2923, $r12=var3897, $r13=var1047, $r14=var1406, $r7=var3593, $r8=var2699}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: freemarker.template.Template$WrongEncodingException;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Encoding specified inside the template (");	$r2 = r1.<freemarker.template.Template$WrongEncodingException: java.lang.String specifiedEncoding>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") doesn\'t match the encoding specified for the Template constructor");	$r5 = r1.<freemarker.template.Template$WrongEncodingException: java.lang.String constructorSpecifiedEncoding>;	if $r5 == null goto $r14 = ".";	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r10 = r1.<freemarker.template.Template$WrongEncodingException: java.lang.String constructorSpecifiedEncoding>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(").");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14)];	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3