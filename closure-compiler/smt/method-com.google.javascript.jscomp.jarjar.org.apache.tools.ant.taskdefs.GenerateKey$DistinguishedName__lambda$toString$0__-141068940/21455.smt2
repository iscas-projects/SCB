(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var963 0)
(declare-sort var2268 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/680178337 (var2268) String)
(declare-fun encode/1074289172 (var963 String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getValue/656235645 (var2268) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var963 var963)
(declare-const null-var2268 var2268)
(declare-const var1137 var963) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GenerateKey$DistinguishedName 
(assert (not (= var1137 null-var963)))
(declare-const var906 var2268) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GenerateKey$DnameParam 
(assert (not (= var906 null-var2268)))
(define-const var1706 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1706)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1706!1 String)
(assert (= var1706!1 ""))
(assert true)
(define-const var160 String (getName/680178337 var906)) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GenerateKey$DnameParam: java.lang.String getName()>() 
(assert true)
(define-const var3063 String (encode/1074289172 var1137 var160)) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GenerateKey$DistinguishedName: java.lang.String encode(java.lang.String)>($r3) 
(assert true)
(define-const var3683 String (append/672562846 var1706!1 var3063)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1706!2 String)
(assert (= var1706!2 (str.++ var1706!1 var3063)))
(assert true)
(define-const var3732 String (append/672562846 var3683 "=")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=") 
(declare-const var3683!1 String)
(assert (= var3683!1 (str.++ var3683 "=")))
(assert true)
(define-const var3087 String (getValue/656235645 var906)) ; Statement: $r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GenerateKey$DnameParam: java.lang.String getValue()>() 
(assert true)
(define-const var2504 String (encode/1074289172 var1137 var3087)) ; Statement: $r7 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GenerateKey$DistinguishedName: java.lang.String encode(java.lang.String)>($r6) 
(assert true)
(define-const var618 String (append/672562846 var3732 var2504)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3732!1 String)
(assert (= var3732!1 (str.++ var3732 var2504)))
(assert true)
(define-const var632 String (toString/-2075883882 var618)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/680178337=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GenerateKey$DnameParam], java.lang.String), encode/1074289172=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GenerateKey$DistinguishedName, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getValue/656235645=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GenerateKey$DnameParam], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var963=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GenerateKey$DistinguishedName, var1137=r1, var2268=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GenerateKey$DnameParam, var906=r2, var1706=$r0, var160=$r3, var3063=$r4, var3683=$r5, var3732=$r8, var3087=$r6, var2504=$r7, var618=$r9, var632=$r10}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GenerateKey$DistinguishedName=var963, r1=var1137, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GenerateKey$DnameParam=var2268, r2=var906, $r0=var1706, $r3=var160, $r4=var3063, $r5=var3683, $r8=var3732, $r6=var3087, $r7=var2504, $r9=var618, $r10=var632}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GenerateKey$DistinguishedName;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GenerateKey$DnameParam;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GenerateKey$DnameParam: java.lang.String getName()>();	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GenerateKey$DistinguishedName: java.lang.String encode(java.lang.String)>($r3);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=");	$r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GenerateKey$DnameParam: java.lang.String getValue()>();	$r7 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GenerateKey$DistinguishedName: java.lang.String encode(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1