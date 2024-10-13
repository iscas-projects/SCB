(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var595 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun externalForm/294403043 (var595) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var595 var595)
(declare-const var845 var595) ; Statement: r1 := @this: freemarker.ext.jsp.TaglibFactory$URLWithExternalForm 
(assert (not (= var845 null-var595)))
(define-const var2793 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2793)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2793!1 String)
(assert (= var2793!1 ""))
(assert true)
(define-const var3551 String (append/672562846 var2793!1 "URLWithExternalForm(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("URLWithExternalForm(") 
(declare-const var2793!2 String)
(assert (= var2793!2 (str.++ var2793!1 "URLWithExternalForm(")))
(define-const var2592 String (externalForm/294403043 var845)) ; Statement: $r2 = r1.<freemarker.ext.jsp.TaglibFactory$URLWithExternalForm: java.lang.String externalForm> 
(assert true)
(define-const var3562 String (append/672562846 var3551 var2592)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3551!1 String)
(assert (= var3551!1 (str.++ var3551 var2592)))
(assert true)
(define-const var1661 String (append/672562846 var3562 ")")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3562!1 String)
(assert (= var3562!1 (str.++ var3562 ")")))
(assert true)
(define-const var919 String (toString/-2075883882 var1661)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), externalForm/294403043=([freemarker.ext.jsp.TaglibFactory$URLWithExternalForm], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var595=freemarker.ext.jsp.TaglibFactory$URLWithExternalForm, var845=r1, var2793=$r0, var3551=$r3, var2592=$r2, var3562=$r4, var1661=$r5, var919=$r6}
; {freemarker.ext.jsp.TaglibFactory$URLWithExternalForm=var595, r1=var845, $r0=var2793, $r3=var3551, $r2=var2592, $r4=var3562, $r5=var1661, $r6=var919}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.ext.jsp.TaglibFactory$URLWithExternalForm;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("URLWithExternalForm(");	$r2 = r1.<freemarker.ext.jsp.TaglibFactory$URLWithExternalForm: java.lang.String externalForm>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1