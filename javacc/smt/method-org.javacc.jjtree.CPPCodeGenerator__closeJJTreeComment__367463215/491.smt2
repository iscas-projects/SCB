(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var204 0)
(declare-sort var2252 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2252_booleanValue/1280995494 (String) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/-1652180213 (var204 String) void)
(declare-const null-var204 var204)
(declare-const var1526 var204) ; Statement: r0 := @parameter0: org.javacc.jjtree.IO 
(assert (not (= var1526 null-var204)))
(define-const var1829 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1829)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1829!1 String)
(assert (= var1829!1 ""))
(define-const var1002 Bool (var2252_booleanValue/1280995494 "IGNORE_ACTIONS")) ; Statement: $z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean booleanValue(java.lang.String)>("IGNORE_ACTIONS") 
 ; Statement: if $z0 == 0 goto $r5 = "/*" 
(assert (not (= (ite var1002 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var776 String "") ; Statement: $r5 = "" 
 ; Statement: goto [?= $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1912 String (append/672562846 var1829!1 var776)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1829!2 String)
(assert (= var1829!2 (str.++ var1829!1 var776)))
(assert true)
(define-const var3301 String (append/672562846 var1912 "@egen*/")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@egen*/") 
(declare-const var1912!1 String)
(assert (= var1912!1 (str.++ var1912 "@egen*/")))
(assert true)
(define-const var1296 String (toString/-2075883882 var3301)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-1652180213 var1526 var1296)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void print(java.lang.String)>($r4) 

(declare-const var1526!1 var204)
(declare-const var1296!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2252_booleanValue/1280995494=([java.lang.String], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/-1652180213=([org.javacc.jjtree.IO, java.lang.String], void)}
; {var204=org.javacc.jjtree.IO, var1526=r0, var1829=$r1, var2252=org.javacc.parser.Options, var1002=$z0, var776=$r5, var1912=$r2, var3301=$r3, var1296=$r4}
; {org.javacc.jjtree.IO=var204, r0=var1526, $r1=var1829, org.javacc.parser.Options=var2252, $z0=var1002, $r5=var776, $r2=var1912, $r3=var3301, $r4=var1296}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.javacc.jjtree.IO;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean booleanValue(java.lang.String)>("IGNORE_ACTIONS");	if $z0 == 0 goto $r5 = "/*";	$r5 = "";	goto [?= $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5)];	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@egen*/");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.javacc.jjtree.IO: void print(java.lang.String)>($r4);	return
;block_num 3