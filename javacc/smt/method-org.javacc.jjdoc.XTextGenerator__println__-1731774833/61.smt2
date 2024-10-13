(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2126 0)
(declare-sort var3260 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/512225041 (var2126 String) void)
(declare-const null-var2126 var2126)
(declare-const null-String String)
(declare-const var1467 var2126) ; Statement: r0 := @this: org.javacc.jjdoc.XTextGenerator 
(assert (not (= var1467 null-var2126)))
(declare-const var3678 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3678 null-String)))
(define-const var1408 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1408)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1408!1 String)
(assert (= var1408!1 ""))
(assert true)
(define-const var922 String (append/672562846 var1408!1 var3678)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1408!2 String)
(assert (= var1408!2 (str.++ var1408!1 var3678)))
(assert true)
(define-const var1518 String (append/672562846 var922 "\n")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var922!1 String)
(assert (= var922!1 (str.++ var922 "\n")))
(assert true)
(define-const var401 String (toString/-2075883882 var1518)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/512225041 var1467 var401)) ; Statement: virtualinvoke r0.<org.javacc.jjdoc.XTextGenerator: void print(java.lang.String)>($r5) 

(declare-const var1467!1 var2126)
(declare-const var401!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/512225041=([org.javacc.jjdoc.XTextGenerator, java.lang.String], void)}
; {var2126=org.javacc.jjdoc.XTextGenerator, var1467=r0, var3678=r2, var3260=null_type, var1408=$r1, var922=$r3, var1518=$r4, var401=$r5}
; {org.javacc.jjdoc.XTextGenerator=var2126, r0=var1467, r2=var3678, null_type=var3260, $r1=var1408, $r3=var922, $r4=var1518, $r5=var401}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.jjdoc.XTextGenerator;	r2 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.javacc.jjdoc.XTextGenerator: void print(java.lang.String)>($r5);	return
;block_num 1