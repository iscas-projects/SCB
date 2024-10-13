(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1225 0)
(declare-sort var2179 0)
(declare-sort var2276 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exception/-114990402 (var1225) var2179)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-1112415476 (var2276) String)
(declare-fun cast-from-var1225-to-var2276 (var1225) var2276)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cast-from-var2179-to-var2276 (var2179) var2276)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1225 var1225)
(declare-const null-var2179 var2179)
(declare-const var2164 var1225) ; Statement: r0 := @this: jdk.internal.org.xml.sax.SAXException 
(assert (not (= var2164 null-var1225)))
(define-const var1628 var2179 (exception/-114990402 var2164)) ; Statement: $r1 = r0.<jdk.internal.org.xml.sax.SAXException: java.lang.Exception exception> 
 ; Statement: if $r1 == null goto $r2 = specialinvoke r0.<java.lang.Exception: java.lang.String toString()>() 
(assert (not (= var1628 null-var2179))) ; Negate: Cond: $r1 == null  
(define-const var2234 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2234)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2234!1 String)
(assert (= var2234!1 ""))
(assert true)
(define-const var402 String (toString/-1112415476 (cast-from-var1225-to-var2276 var2164))) ; Statement: $r4 = specialinvoke r0.<java.lang.Exception: java.lang.String toString()>() 
(assert true)
(define-const var1052 String (append/672562846 var2234!1 var402)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2234!2 String)
(assert (= var2234!2 (str.++ var2234!1 var402)))
(assert true)
(define-const var1215 String (append/672562846 var1052 "\n")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var1052!1 String)
(assert (= var1052!1 (str.++ var1052 "\n")))
(define-const var3885 var2179 (exception/-114990402 var2164)) ; Statement: $r6 = r0.<jdk.internal.org.xml.sax.SAXException: java.lang.Exception exception> 
(assert true)
(define-const var3948 String (toString/-1112415476 (cast-from-var2179-to-var2276 var3885))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.Exception: java.lang.String toString()>() 
(assert true)
(define-const var2343 String (append/672562846 var1215 var3948)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1215!1 String)
(assert (= var1215!1 (str.++ var1215 var3948)))
(assert true)
(define-const var2396 String (toString/-2075883882 var2343)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {exception/-114990402=([jdk.internal.org.xml.sax.SAXException], java.lang.Exception), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var1225-to-var2276=([jdk.internal.org.xml.sax.SAXException], java.lang.Throwable), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-var2179-to-var2276=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1225=jdk.internal.org.xml.sax.SAXException, var2164=r0, var2179=java.lang.Exception, var1628=$r1, var2234=$r3, var2276=java.lang.Throwable, var402=$r4, var1052=$r5, var1215=$r8, var3885=$r6, var3948=$r7, var2343=$r9, var2396=$r10}
; {jdk.internal.org.xml.sax.SAXException=var1225, r0=var2164, java.lang.Exception=var2179, $r1=var1628, $r3=var2234, java.lang.Throwable=var2276, $r4=var402, $r5=var1052, $r8=var1215, $r6=var3885, $r7=var3948, $r9=var2343, $r10=var2396}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.xml.sax.SAXException;	$r1 = r0.<jdk.internal.org.xml.sax.SAXException: java.lang.Exception exception>;	if $r1 == null goto $r2 = specialinvoke r0.<java.lang.Exception: java.lang.String toString()>();	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = specialinvoke r0.<java.lang.Exception: java.lang.String toString()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r6 = r0.<jdk.internal.org.xml.sax.SAXException: java.lang.Exception exception>;	$r7 = virtualinvoke $r6.<java.lang.Exception: java.lang.String toString()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 2