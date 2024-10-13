(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3250 0)
(declare-sort var232 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun defaultNS/-1785025210 (var3250) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3250 var3250)
(declare-const null-String String)
(declare-const var2673 var3250) ; Statement: r1 := @this: freemarker.template.Template 
(assert (not (= var2673 null-var3250)))
(declare-const var2924 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2924 null-String)))
(declare-const var2179 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2179 null-String)))
 ; Statement: if r0 == null goto $r2 = r1.<freemarker.template.Template: java.lang.String defaultNS> 
(assert (= var2179 null-String)) ; Cond: r0 == null 
(define-const var1184 String (defaultNS/-1785025210 var2673)) ; Statement: $r2 = r1.<freemarker.template.Template: java.lang.String defaultNS> 
 ; Statement: if $r2 == null goto return r3 
(assert (not (= var1184 null-String))) ; Negate: Cond: $r2 == null  
(define-const var3123 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3123)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3123!1 String)
(assert (= var3123!1 ""))
(assert true)
(define-const var299 String (append/672562846 var3123!1 "N:")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("N:") 
(declare-const var3123!2 String)
(assert (= var3123!2 (str.++ var3123!1 "N:")))
(assert true)
(define-const var2405 String (append/672562846 var299 var2924)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var299!1 String)
(assert (= var299!1 (str.++ var299 var2924)))
(assert true)
(define-const var1166 String (toString/-2075883882 var2405)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {defaultNS/-1785025210=([freemarker.template.Template], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3250=freemarker.template.Template, var2673=r1, var2924=r3, var232=null_type, var2179=r0, var1184=$r2, var3123=$r4, var299=$r5, var2405=$r6, var1166=$r7}
; {freemarker.template.Template=var3250, r1=var2673, r3=var2924, null_type=var232, r0=var2179, $r2=var1184, $r4=var3123, $r5=var299, $r6=var2405, $r7=var1166}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.template.Template;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	if r0 == null goto $r2 = r1.<freemarker.template.Template: java.lang.String defaultNS>;	$r2 = r1.<freemarker.template.Template: java.lang.String defaultNS>;	if $r2 == null goto return r3;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("N:");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 3