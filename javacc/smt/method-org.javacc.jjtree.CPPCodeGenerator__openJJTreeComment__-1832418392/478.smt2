(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2415 0)
(declare-sort var2526 0)
(declare-sort var1616 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1616_booleanValue/1280995494 (String) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/-1652180213 (var2415 String) void)
(declare-const null-var2415 var2415)
(declare-const null-String String)
(declare-const var19 var2415) ; Statement: r1 := @parameter0: org.javacc.jjtree.IO 
(assert (not (= var19 null-var2415)))
(declare-const var3022 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3022 null-String)))
 ; Statement: if r0 == null goto $r2 = new java.lang.StringBuilder 
(assert (= var3022 null-String)) ; Cond: r0 == null 
(define-const var111 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var111)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var111!1 String)
(assert (= var111!1 ""))
(assert true)
(define-const var2435 String (append/672562846 var111!1 "/*@bgen(jjtree)")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/*@bgen(jjtree)") 
(declare-const var111!2 String)
(assert (= var111!2 (str.++ var111!1 "/*@bgen(jjtree)")))
(define-const var1531 Bool (var1616_booleanValue/1280995494 "IGNORE_ACTIONS")) ; Statement: $z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean booleanValue(java.lang.String)>("IGNORE_ACTIONS") 
 ; Statement: if $z0 == 0 goto $r12 = "*/" 
(assert (= (ite var1531 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3390 String "*/") ; Statement: $r12 = "*/" 
(assert true) ; Non Conditional
(assert true)
(define-const var3772 String (append/672562846 var2435 var3390)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2435!1 String)
(assert (= var2435!1 (str.++ var2435 var3390)))
(assert true)
(define-const var3555 String (toString/-2075883882 var3772)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-1652180213 var19 var3555)) ; Statement: virtualinvoke r1.<org.javacc.jjtree.IO: void print(java.lang.String)>($r5) 

(declare-const var19!1 var2415)
(declare-const var3555!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1616_booleanValue/1280995494=([java.lang.String], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/-1652180213=([org.javacc.jjtree.IO, java.lang.String], void)}
; {var2415=org.javacc.jjtree.IO, var19=r1, var3022=r0, var2526=null_type, var111=$r2, var2435=$r3, var1616=org.javacc.parser.Options, var1531=$z0, var3390=$r12, var3772=$r4, var3555=$r5}
; {org.javacc.jjtree.IO=var2415, r1=var19, r0=var3022, null_type=var2526, $r2=var111, $r3=var2435, org.javacc.parser.Options=var1616, $z0=var1531, $r12=var3390, $r4=var3772, $r5=var3555}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.javacc.jjtree.IO;	r0 := @parameter1: java.lang.String;	if r0 == null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/*@bgen(jjtree)");	$z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean booleanValue(java.lang.String)>("IGNORE_ACTIONS");	if $z0 == 0 goto $r12 = "*/";	$r12 = "*/";	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<org.javacc.jjtree.IO: void print(java.lang.String)>($r5);	return
;block_num 5