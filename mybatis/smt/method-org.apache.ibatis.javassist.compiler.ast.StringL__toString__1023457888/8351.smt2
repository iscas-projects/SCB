(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var70 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun text/-1374700856 (var70) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var70 var70)
(declare-const var2317 var70) ; Statement: r1 := @this: org.apache.ibatis.javassist.compiler.ast.StringL 
(assert (not (= var2317 null-var70)))
(define-const var2019 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2019)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2019!1 String)
(assert (= var2019!1 ""))
(assert true)
(define-const var713 String (append/672562846 var2019!1 "\u0022")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var2019!2 String)
(assert (= var2019!2 (str.++ var2019!1 "\u0022")))
(define-const var2301 String (text/-1374700856 var2317)) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.compiler.ast.StringL: java.lang.String text> 
(assert true)
(define-const var3665 String (append/672562846 var713 var2301)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var713!1 String)
(assert (= var713!1 (str.++ var713 var2301)))
(assert true)
(define-const var3137 String (append/672562846 var3665 "\u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var3665!1 String)
(assert (= var3665!1 (str.++ var3665 "\u0022")))
(assert true)
(define-const var2052 String (toString/-2075883882 var3137)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), text/-1374700856=([org.apache.ibatis.javassist.compiler.ast.StringL], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var70=org.apache.ibatis.javassist.compiler.ast.StringL, var2317=r1, var2019=$r0, var713=$r3, var2301=$r2, var3665=$r4, var3137=$r5, var2052=$r6}
; {org.apache.ibatis.javassist.compiler.ast.StringL=var70, r1=var2317, $r0=var2019, $r3=var713, $r2=var2301, $r4=var3665, $r5=var3137, $r6=var2052}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.compiler.ast.StringL;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r2 = r1.<org.apache.ibatis.javassist.compiler.ast.StringL: java.lang.String text>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1