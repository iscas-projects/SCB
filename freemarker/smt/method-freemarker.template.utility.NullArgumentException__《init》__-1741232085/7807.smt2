(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3976 0)
(declare-sort var409 0)
(declare-sort var3380 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3380 String) void)
(declare-fun cast-from-var3976-to-var3380 (var3976) var3380)
(declare-const null-var3976 var3976)
(declare-const null-String String)
(declare-const var2995 var3976) ; Statement: r0 := @this: freemarker.template.utility.NullArgumentException 
(assert (not (= var2995 null-var3976)))
(declare-const var334 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var334 null-String)))
(define-const var1507 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1507)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1507!1 String)
(assert (= var1507!1 ""))
(assert true)
(define-const var3911 String (append/672562846 var1507!1 "The \u0022")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \"") 
(declare-const var1507!2 String)
(assert (= var1507!2 (str.++ var1507!1 "The \u0022")))
(assert true)
(define-const var1731 String (append/672562846 var3911 var334)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3911!1 String)
(assert (= var3911!1 (str.++ var3911 var334)))
(assert true)
(define-const var1898 String (append/672562846 var1731 "\u0022 argument can\u0027t be null")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" argument can\'t be null") 
(declare-const var1731!1 String)
(assert (= var1731!1 (str.++ var1731 "\u0022 argument can\u0027t be null")))
(assert true)
(define-const var281 String (toString/-2075883882 var1898)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 (cast-from-var3976-to-var3380 var2995) var281)) ; Statement: specialinvoke r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var2995!1 var3976)
(declare-const var281!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void), cast-from-var3976-to-var3380=([freemarker.template.utility.NullArgumentException], java.lang.IllegalArgumentException)}
; {var3976=freemarker.template.utility.NullArgumentException, var2995=r0, var334=r2, var409=null_type, var1507=$r1, var3911=$r3, var1731=$r4, var1898=$r5, var281=$r6, var3380=java.lang.IllegalArgumentException}
; {freemarker.template.utility.NullArgumentException=var3976, r0=var2995, r2=var334, null_type=var409, $r1=var1507, $r3=var3911, $r4=var1731, $r5=var1898, $r6=var281, java.lang.IllegalArgumentException=var3380}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.template.utility.NullArgumentException;	r2 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \"");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" argument can\'t be null");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	return
;block_num 1