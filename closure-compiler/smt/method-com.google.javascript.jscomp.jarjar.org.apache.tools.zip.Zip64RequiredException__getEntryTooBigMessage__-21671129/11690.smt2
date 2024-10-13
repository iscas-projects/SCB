(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3953 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-29768105 (var3953) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3953 var3953)
(declare-const var234 var3953) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry 
(assert (not (= var234 null-var3953)))
(define-const var1515 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1515)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1515!1 String)
(assert (= var1515!1 ""))
(assert true)
(define-const var2260 String (getName/-29768105 var234)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry: java.lang.String getName()>() 
(assert true)
(define-const var1522 String (append/672562846 var1515!1 var2260)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1515!2 String)
(assert (= var1515!2 (str.++ var1515!1 var2260)))
(assert true)
(define-const var2674 String (append/672562846 var1522 "\u0027s size exceeds the limit of 4GByte.")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'s size exceeds the limit of 4GByte.") 
(declare-const var1522!1 String)
(assert (= var1522!1 (str.++ var1522 "\u0027s size exceeds the limit of 4GByte.")))
(assert true)
(define-const var17 String (toString/-2075883882 var2674)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-29768105=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3953=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry, var234=r1, var1515=$r0, var2260=$r2, var1522=$r3, var2674=$r4, var17=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry=var3953, r1=var234, $r0=var1515, $r2=var2260, $r3=var1522, $r4=var2674, $r5=var17}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry: java.lang.String getName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'s size exceeds the limit of 4GByte.");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1