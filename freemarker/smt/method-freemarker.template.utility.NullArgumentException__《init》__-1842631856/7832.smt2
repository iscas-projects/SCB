(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3619 0)
(declare-sort var1304 0)
(declare-sort var2651 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2651 String) void)
(declare-fun cast-from-var3619-to-var2651 (var3619) var2651)
(declare-const null-var3619 var3619)
(declare-const null-String String)
(declare-const var1439 var3619) ; Statement: r0 := @this: freemarker.template.utility.NullArgumentException 
(assert (not (= var1439 null-var3619)))
(declare-const var2070 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2070 null-String)))
(declare-const var2654 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var2654 null-String)))
(define-const var3884 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3884)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3884!1 String)
(assert (= var3884!1 ""))
(assert true)
(define-const var518 String (append/672562846 var3884!1 "The \u0022")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \"") 
(declare-const var3884!2 String)
(assert (= var3884!2 (str.++ var3884!1 "The \u0022")))
(assert true)
(define-const var3403 String (append/672562846 var518 var2070)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var518!1 String)
(assert (= var518!1 (str.++ var518 var2070)))
(assert true)
(define-const var513 String (append/672562846 var3403 "\u0022 argument can\u0027t be null. ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" argument can\'t be null. ") 
(declare-const var3403!1 String)
(assert (= var3403!1 (str.++ var3403 "\u0022 argument can\u0027t be null. ")))
(assert true)
(define-const var2187 String (append/672562846 var513 var2654)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var513!1 String)
(assert (= var513!1 (str.++ var513 var2654)))
(assert true)
(define-const var20 String (toString/-2075883882 var2187)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 (cast-from-var3619-to-var2651 var1439) var20)) ; Statement: specialinvoke r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var1439!1 var3619)
(declare-const var20!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void), cast-from-var3619-to-var2651=([freemarker.template.utility.NullArgumentException], java.lang.IllegalArgumentException)}
; {var3619=freemarker.template.utility.NullArgumentException, var1439=r0, var2070=r2, var1304=null_type, var2654=r5, var3884=$r1, var518=$r3, var3403=$r4, var513=$r6, var2187=$r7, var20=$r8, var2651=java.lang.IllegalArgumentException}
; {freemarker.template.utility.NullArgumentException=var3619, r0=var1439, r2=var2070, null_type=var1304, r5=var2654, $r1=var3884, $r3=var518, $r4=var3403, $r6=var513, $r7=var2187, $r8=var20, java.lang.IllegalArgumentException=var2651}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.template.utility.NullArgumentException;	r2 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \"");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" argument can\'t be null. ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	return
;block_num 1