(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var393 0)
(declare-sort var2591 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun script/1532117966 (var393) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var393 var393)
(declare-const null-String String)
(declare-const var600 var393) ; Statement: r1 := @this: freemarker.ext.ant.JythonAntTask 
(assert (not (= var600 null-var393)))
(declare-const var3870 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3870 null-String)))
(define-const var3582 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3582)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3582!1 String)
(assert (= var3582!1 ""))
(define-const var2254 String (script/1532117966 var600)) ; Statement: $r2 = r1.<freemarker.ext.ant.JythonAntTask: java.lang.String script> 
(assert true)
(define-const var361 String (append/672562846 var3582!1 var2254)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3582!2 String)
(assert (= var3582!2 (str.++ var3582!1 var2254)))
(assert true)
(define-const var906 String (append/672562846 var361 var3870)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var361!1 String)
(assert (= var361!1 (str.++ var361 var3870)))
(assert true)
(define-const var649 String (toString/-2075883882 var906)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var600!1 var393)
(assert (not (= var600!1 null-var393)))
(assert (= (script/1532117966 var600!1) var649)) ; Statement: r1.<freemarker.ext.ant.JythonAntTask: java.lang.String script> = $r6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), script/1532117966=([freemarker.ext.ant.JythonAntTask], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var393=freemarker.ext.ant.JythonAntTask, var600=r1, var3870=r3, var2591=null_type, var3582=$r0, var2254=$r2, var361=$r4, var906=$r5, var649=$r6}
; {freemarker.ext.ant.JythonAntTask=var393, r1=var600, r3=var3870, null_type=var2591, $r0=var3582, $r2=var2254, $r4=var361, $r5=var906, $r6=var649}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.ext.ant.JythonAntTask;	r3 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<freemarker.ext.ant.JythonAntTask: java.lang.String script>;	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	r1.<freemarker.ext.ant.JythonAntTask: java.lang.String script> = $r6;	return
;block_num 1