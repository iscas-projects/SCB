(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1292 0)
(declare-sort var865 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var865_getProperty/-1260770973 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var2551 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2551 null-String)))
(define-const var3232 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3232)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3232!1 String)
(assert (= var3232!1 ""))
(assert true)
(define-const var1952 String (append/672562846 var3232!1 var2551)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3232!2 String)
(assert (= var3232!2 (str.++ var3232!1 var2551)))
(assert true)
(define-const var2537 String (append/672562846 var1952 " : ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" : ") 
(declare-const var1952!1 String)
(assert (= var1952!1 (str.++ var1952 " : ")))
(define-const var765 String (var865_getProperty/-1260770973 var2551)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: java.lang.String getProperty(java.lang.String)>(r1) 
(assert true)
(define-const var2112 String (append/672562846 var2537 var765)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2537!1 String)
(assert (= var2537!1 (str.++ var2537 var765)))
(assert true)
(define-const var2768 String (toString/-2075883882 var2112)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var865_getProperty/-1260770973=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2551=r1, var1292=null_type, var3232=$r0, var1952=$r2, var2537=$r4, var865=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics, var765=$r3, var2112=$r5, var2768=$r6}
; {r1=var2551, null_type=var1292, $r0=var3232, $r2=var1952, $r4=var2537, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics=var865, $r3=var765, $r5=var2112, $r6=var2768}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" : ");	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: java.lang.String getProperty(java.lang.String)>(r1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1