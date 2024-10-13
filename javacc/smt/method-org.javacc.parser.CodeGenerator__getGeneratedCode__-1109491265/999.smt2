(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3933 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun outputBuffer/-1919349735 (var3933) String)
(define-fun toString/-222306083 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3933 var3933)
(declare-const var1871 var3933) ; Statement: r1 := @this: org.javacc.parser.CodeGenerator 
(assert (not (= var1871 null-var3933)))
(define-const var1658 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1658)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1658!1 String)
(assert (= var1658!1 ""))
(define-const var18 String (outputBuffer/-1919349735 var1871)) ; Statement: $r2 = r1.<org.javacc.parser.CodeGenerator: java.lang.StringBuffer outputBuffer> 
(assert true)
(define-const var1662 String (toString/-222306083 var18)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
(define-const var2351 String (append/672562846 var1658!1 var1662)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1658!2 String)
(assert (= var1658!2 (str.++ var1658!1 var1662)))
(assert true)
(define-const var981 String (append/672562846 var2351 "\n")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var2351!1 String)
(assert (= var2351!1 (str.++ var2351 "\n")))
(assert true)
(define-const var1302 String (toString/-2075883882 var981)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), outputBuffer/-1919349735=([org.javacc.parser.CodeGenerator], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3933=org.javacc.parser.CodeGenerator, var1871=r1, var1658=$r0, var18=$r2, var1662=$r3, var2351=$r4, var981=$r5, var1302=$r6}
; {org.javacc.parser.CodeGenerator=var3933, r1=var1871, $r0=var1658, $r2=var18, $r3=var1662, $r4=var2351, $r5=var981, $r6=var1302}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.javacc.parser.CodeGenerator;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.javacc.parser.CodeGenerator: java.lang.StringBuffer outputBuffer>;	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1