(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2402 0)
(declare-sort var1265 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getProperty/1391780669 (var2402 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2402 var2402)
(declare-const null-String String)
(declare-const var923 var2402) ; Statement: r3 := @parameter0: java.util.Properties 
(assert (not (= var923 null-var2402)))
(declare-const var2699 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2699 null-String)))
(define-const var605 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var605)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var605!1 String)
(assert (= var605!1 ""))
(assert true)
(define-const var991 String (append/672562846 var605!1 var2699)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var605!2 String)
(assert (= var605!2 (str.++ var605!1 var2699)))
(assert true)
(define-const var2433 String (append/672562846 var991 "=")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=") 
(declare-const var991!1 String)
(assert (= var991!1 (str.++ var991 "=")))
(assert true)
(define-const var803 String (getProperty/1391780669 var923 var2699)) ; Statement: $r4 = virtualinvoke r3.<java.util.Properties: java.lang.String getProperty(java.lang.String)>(r1) 
(assert true)
(define-const var3675 String (append/672562846 var2433 var803)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2433!1 String)
(assert (= var2433!1 (str.++ var2433 var803)))
(assert true)
(define-const var2365 String (toString/-2075883882 var3675)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getProperty/1391780669=([java.util.Properties, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2402=java.util.Properties, var923=r3, var2699=r1, var1265=null_type, var605=$r0, var991=$r2, var2433=$r5, var803=$r4, var3675=$r6, var2365=$r7}
; {java.util.Properties=var2402, r3=var923, r1=var2699, null_type=var1265, $r0=var605, $r2=var991, $r5=var2433, $r4=var803, $r6=var3675, $r7=var2365}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.util.Properties;	r1 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=");	$r4 = virtualinvoke r3.<java.util.Properties: java.lang.String getProperty(java.lang.String)>(r1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1