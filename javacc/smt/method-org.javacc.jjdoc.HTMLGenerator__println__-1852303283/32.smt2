(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3770 0)
(declare-sort var3691 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/-855496625 (var3770 String) void)
(declare-const null-var3770 var3770)
(declare-const null-String String)
(declare-const var3358 var3770) ; Statement: r0 := @this: org.javacc.jjdoc.HTMLGenerator 
(assert (not (= var3358 null-var3770)))
(declare-const var866 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var866 null-String)))
(define-const var2131 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2131)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2131!1 String)
(assert (= var2131!1 ""))
(assert true)
(define-const var1978 String (append/672562846 var2131!1 var866)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2131!2 String)
(assert (= var2131!2 (str.++ var2131!1 var866)))
(assert true)
(define-const var1745 String (append/672562846 var1978 "\n")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var1978!1 String)
(assert (= var1978!1 (str.++ var1978 "\n")))
(assert true)
(define-const var928 String (toString/-2075883882 var1745)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-855496625 var3358 var928)) ; Statement: virtualinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void print(java.lang.String)>($r5) 

(declare-const var3358!1 var3770)
(declare-const var928!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/-855496625=([org.javacc.jjdoc.HTMLGenerator, java.lang.String], void)}
; {var3770=org.javacc.jjdoc.HTMLGenerator, var3358=r0, var866=r2, var3691=null_type, var2131=$r1, var1978=$r3, var1745=$r4, var928=$r5}
; {org.javacc.jjdoc.HTMLGenerator=var3770, r0=var3358, r2=var866, null_type=var3691, $r1=var2131, $r3=var1978, $r4=var1745, $r5=var928}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.jjdoc.HTMLGenerator;	r2 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void print(java.lang.String)>($r5);	return
;block_num 1