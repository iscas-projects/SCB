(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var689 0)
(declare-sort var1470 0)
(declare-sort var444 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var444_booleanValue/1280995494 (String) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/-1652180213 (var689 String) void)
(declare-const null-var689 var689)
(declare-const null-String String)
(declare-const var31 var689) ; Statement: r1 := @parameter0: org.javacc.jjtree.IO 
(assert (not (= var31 null-var689)))
(declare-const var1516 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1516 null-String)))
 ; Statement: if r0 == null goto $r2 = new java.lang.StringBuilder 
(assert (= var1516 null-String)) ; Cond: r0 == null 
(define-const var202 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var202)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var202!1 String)
(assert (= var202!1 ""))
(assert true)
(define-const var3311 String (append/672562846 var202!1 "/*@bgen(jjtree)")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/*@bgen(jjtree)") 
(declare-const var202!2 String)
(assert (= var202!2 (str.++ var202!1 "/*@bgen(jjtree)")))
(define-const var2025 Bool (var444_booleanValue/1280995494 "IGNORE_ACTIONS")) ; Statement: $z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean booleanValue(java.lang.String)>("IGNORE_ACTIONS") 
 ; Statement: if $z0 == 0 goto $r12 = "*/" 
(assert (not (= (ite var2025 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var614 String "") ; Statement: $r12 = "" 
 ; Statement: goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)] 
(assert true) ; Non Conditional
(assert true)
(define-const var143 String (append/672562846 var3311 var614)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var3311!1 String)
(assert (= var3311!1 (str.++ var3311 var614)))
(assert true)
(define-const var3600 String (toString/-2075883882 var143)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-1652180213 var31 var3600)) ; Statement: virtualinvoke r1.<org.javacc.jjtree.IO: void print(java.lang.String)>($r5) 

(declare-const var31!1 var689)
(declare-const var3600!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var444_booleanValue/1280995494=([java.lang.String], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/-1652180213=([org.javacc.jjtree.IO, java.lang.String], void)}
; {var689=org.javacc.jjtree.IO, var31=r1, var1516=r0, var1470=null_type, var202=$r2, var3311=$r3, var444=org.javacc.parser.Options, var2025=$z0, var614=$r12, var143=$r4, var3600=$r5}
; {org.javacc.jjtree.IO=var689, r1=var31, r0=var1516, null_type=var1470, $r2=var202, $r3=var3311, org.javacc.parser.Options=var444, $z0=var2025, $r12=var614, $r4=var143, $r5=var3600}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.javacc.jjtree.IO;	r0 := @parameter1: java.lang.String;	if r0 == null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/*@bgen(jjtree)");	$z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean booleanValue(java.lang.String)>("IGNORE_ACTIONS");	if $z0 == 0 goto $r12 = "*/";	$r12 = "";	goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)];	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<org.javacc.jjtree.IO: void print(java.lang.String)>($r5);	return
;block_num 5