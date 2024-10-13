(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var670 0)
(declare-sort var3984 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3984_booleanValue/1280995494 (String) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/-1652180213 (var670 String) void)
(declare-const null-var670 var670)
(declare-const var482 var670) ; Statement: r0 := @parameter0: org.javacc.jjtree.IO 
(assert (not (= var482 null-var670)))
(define-const var2414 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2414)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2414!1 String)
(assert (= var2414!1 ""))
(define-const var3062 Bool (var3984_booleanValue/1280995494 "IGNORE_ACTIONS")) ; Statement: $z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean booleanValue(java.lang.String)>("IGNORE_ACTIONS") 
 ; Statement: if $z0 == 0 goto $r5 = "/*" 
(assert (= (ite var3062 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2141 String "/*") ; Statement: $r5 = "/*" 
(assert true) ; Non Conditional
(assert true)
(define-const var498 String (append/672562846 var2414!1 var2141)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2414!2 String)
(assert (= var2414!2 (str.++ var2414!1 var2141)))
(assert true)
(define-const var3230 String (append/672562846 var498 "@egen*/")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@egen*/") 
(declare-const var498!1 String)
(assert (= var498!1 (str.++ var498 "@egen*/")))
(assert true)
(define-const var704 String (toString/-2075883882 var3230)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-1652180213 var482 var704)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void print(java.lang.String)>($r4) 

(declare-const var482!1 var670)
(declare-const var704!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3984_booleanValue/1280995494=([java.lang.String], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/-1652180213=([org.javacc.jjtree.IO, java.lang.String], void)}
; {var670=org.javacc.jjtree.IO, var482=r0, var2414=$r1, var3984=org.javacc.parser.Options, var3062=$z0, var2141=$r5, var498=$r2, var3230=$r3, var704=$r4}
; {org.javacc.jjtree.IO=var670, r0=var482, $r1=var2414, org.javacc.parser.Options=var3984, $z0=var3062, $r5=var2141, $r2=var498, $r3=var3230, $r4=var704}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.javacc.jjtree.IO;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean booleanValue(java.lang.String)>("IGNORE_ACTIONS");	if $z0 == 0 goto $r5 = "/*";	$r5 = "/*";	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@egen*/");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.javacc.jjtree.IO: void print(java.lang.String)>($r4);	return
;block_num 3