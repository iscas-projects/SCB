(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1032 0)
(declare-sort var1741 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1741_getDebugLookahead/-1551651829 () Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1032 var1032)
(declare-const null-Bool Bool)
(declare-const var1694 var1032) ; Statement: r6 := @this: org.javacc.parser.ParseEngine 
(assert (not (= var1694 null-var1032)))
(declare-const var3460 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3460 null-Bool)))
 ; Statement: if z0 == 0 goto $r30 = "false" 
(assert (= (ite var3460 1 0) 0)) ; Cond: z0 == 0 
(define-const var204 String "false") ; Statement: $r30 = "false" 
(assert true) ; Non Conditional
(define-const var1955 String var204) ; Statement: r0 = $r30 
(define-const var1479 Bool var1741_getDebugLookahead/-1551651829) ; Statement: $z1 = staticinvoke <org.javacc.parser.Options: boolean getDebugLookahead()>() 
 ; Statement: if $z1 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var1479 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1305 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1305)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1305!1 String)
(assert (= var1305!1 ""))
(assert true)
(define-const var765 String (append/672562846 var1305!1 "return ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("return ") 
(declare-const var1305!2 String)
(assert (= var1305!2 (str.++ var1305!1 "return ")))
(assert true)
(define-const var3715 String (append/672562846 var765 var1955)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var765!1 String)
(assert (= var765!1 (str.++ var765 var1955)))
(assert true)
(define-const var2563 String (append/672562846 var3715 ";")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";") 
(declare-const var3715!1 String)
(assert (= var3715!1 (str.++ var3715 ";")))
(assert true)
(define-const var2369 String (toString/-2075883882 var2563)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var1741_getDebugLookahead/-1551651829=([], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1032=org.javacc.parser.ParseEngine, var1694=r6, var3460=z0, var204=$r30, var1955=r0, var1741=org.javacc.parser.Options, var1479=$z1, var1305=$r1, var765=$r2, var3715=$r3, var2563=$r4, var2369=$r5}
; {org.javacc.parser.ParseEngine=var1032, r6=var1694, z0=var3460, $r30=var204, r0=var1955, org.javacc.parser.Options=var1741, $z1=var1479, $r1=var1305, $r2=var765, $r3=var3715, $r4=var2563, $r5=var2369}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.javacc.parser.ParseEngine;	z0 := @parameter0: boolean;	if z0 == 0 goto $r30 = "false";	$r30 = "false";	r0 = $r30;	$z1 = staticinvoke <org.javacc.parser.Options: boolean getDebugLookahead()>();	if $z1 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("return ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 4