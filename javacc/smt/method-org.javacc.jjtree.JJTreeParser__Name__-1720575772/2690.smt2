(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var948 0)
(declare-sort var3335 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun JavaIdentifier/541069444 (var948) String)
(declare-fun jj_2_23/411284452 (var948 Int) Bool)
(declare-fun jj_consume_token/-1568095275 (var948 Int) var3335)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var948 var948)
(declare-const var741 var948) ; Statement: r0 := @this: org.javacc.jjtree.JJTreeParser 
(assert (not (= var741 null-var948)))
(assert true)
(define-const var1049 String (JavaIdentifier/541069444 var741)) ; Statement: r6 = virtualinvoke r0.<org.javacc.jjtree.JJTreeParser: java.lang.String JavaIdentifier()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var2581 Bool (jj_2_23/411284452 var741 2)) ; Statement: $z0 = specialinvoke r0.<org.javacc.jjtree.JJTreeParser: boolean jj_2_23(int)>(2) 
 ; Statement: if $z0 == 0 goto return r6 
(assert (not (= (ite var2581 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (jj_consume_token/-1568095275 var741 93)) ; Statement: specialinvoke r0.<org.javacc.jjtree.JJTreeParser: org.javacc.jjtree.Token jj_consume_token(int)>(93) 

(declare-const var741!1 var948)
(declare-const var1256 Int)
(assert true)
(define-const var2156 String (JavaIdentifier/541069444 var741!1)) ; Statement: r1 = virtualinvoke r0.<org.javacc.jjtree.JJTreeParser: java.lang.String JavaIdentifier()>() 
(define-const var3317 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3317)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3317!1 String)
(assert (= var3317!1 ""))
(assert true)
(define-const var2253 String (append/672562846 var3317!1 var1049)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var3317!2 String)
(assert (= var3317!2 (str.++ var3317!1 var1049)))
(assert true)
(define-const var3576 String (append/672562846 var2253 ".")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var2253!1 String)
(assert (= var2253!1 (str.++ var2253 ".")))
(assert true)
(define-const var346 String (append/672562846 var3576 var2156)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3576!1 String)
(assert (= var3576!1 (str.++ var3576 var2156)))
(assert true)
(define-const var1049!1 String (toString/-2075883882 var346)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $z0 = specialinvoke r0.<org.javacc.jjtree.JJTreeParser: boolean jj_2_23(int)>(2)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2581!1 Bool (jj_2_23/411284452 var741!1 2)) ; Statement: $z0 = specialinvoke r0.<org.javacc.jjtree.JJTreeParser: boolean jj_2_23(int)>(2) 
 ; Statement: if $z0 == 0 goto return r6 
(assert (= (ite var2581!1 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r6 
(check-sat)
(get-model)
(get-unsat-core)
; {JavaIdentifier/541069444=([org.javacc.jjtree.JJTreeParser], java.lang.String), jj_2_23/411284452=([org.javacc.jjtree.JJTreeParser, int], boolean), jj_consume_token/-1568095275=([org.javacc.jjtree.JJTreeParser, int], org.javacc.jjtree.Token), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var948=org.javacc.jjtree.JJTreeParser, var741=r0, var1049=r6, var2581=$z0, var1256=93, var2156=r1, var3317=$r2, var2253=$r3, var3576=$r4, var346=$r5, var3335=org.javacc.jjtree.Token}
; {org.javacc.jjtree.JJTreeParser=var948, r0=var741, r6=var1049, $z0=var2581, 93=var1256, r1=var2156, $r2=var3317, $r3=var2253, $r4=var3576, $r5=var346, org.javacc.jjtree.Token=var3335}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.jjtree.JJTreeParser;	r6 = virtualinvoke r0.<org.javacc.jjtree.JJTreeParser: java.lang.String JavaIdentifier()>();	$z0 = specialinvoke r0.<org.javacc.jjtree.JJTreeParser: boolean jj_2_23(int)>(2);	if $z0 == 0 goto return r6;	specialinvoke r0.<org.javacc.jjtree.JJTreeParser: org.javacc.jjtree.Token jj_consume_token(int)>(93);	r1 = virtualinvoke r0.<org.javacc.jjtree.JJTreeParser: java.lang.String JavaIdentifier()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $z0 = specialinvoke r0.<org.javacc.jjtree.JJTreeParser: boolean jj_2_23(int)>(2)];	$z0 = specialinvoke r0.<org.javacc.jjtree.JJTreeParser: boolean jj_2_23(int)>(2);	if $z0 == 0 goto return r6;	return r6
;block_num 5