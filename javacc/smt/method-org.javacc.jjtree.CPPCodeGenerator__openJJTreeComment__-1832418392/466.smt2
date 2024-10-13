(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3627 0)
(declare-sort var3380 0)
(declare-sort var2709 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2709_booleanValue/1280995494 (String) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/-1652180213 (var3627 String) void)
(declare-const null-var3627 var3627)
(declare-const null-String String)
(declare-const var844 var3627) ; Statement: r1 := @parameter0: org.javacc.jjtree.IO 
(assert (not (= var844 null-var3627)))
(declare-const var3004 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3004 null-String)))
 ; Statement: if r0 == null goto $r2 = new java.lang.StringBuilder 
(assert (not (= var3004 null-String))) ; Negate: Cond: r0 == null  
(define-const var2123 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2123)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2123!1 String)
(assert (= var2123!1 ""))
(assert true)
(define-const var3626 String (append/672562846 var2123!1 "/*@bgen(jjtree) ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/*@bgen(jjtree) ") 
(declare-const var2123!2 String)
(assert (= var2123!2 (str.++ var2123!1 "/*@bgen(jjtree) ")))
(assert true)
(define-const var2298 String (append/672562846 var3626 var3004)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3626!1 String)
(assert (= var3626!1 (str.++ var3626 var3004)))
(define-const var2793 Bool (var2709_booleanValue/1280995494 "IGNORE_ACTIONS")) ; Statement: $z1 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean booleanValue(java.lang.String)>("IGNORE_ACTIONS") 
 ; Statement: if $z1 == 0 goto $r11 = " */" 
(assert (= (ite var2793 1 0) 0)) ; Cond: $z1 == 0 
(define-const var11 String " */") ; Statement: $r11 = " */" 
(assert true) ; Non Conditional
(assert true)
(define-const var1162 String (append/672562846 var2298 var11)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2298!1 String)
(assert (= var2298!1 (str.++ var2298 var11)))
(assert true)
(define-const var1793 String (toString/-2075883882 var1162)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-1652180213 var844 var1793)) ; Statement: virtualinvoke r1.<org.javacc.jjtree.IO: void print(java.lang.String)>($r10) 

(declare-const var844!1 var3627)
(declare-const var1793!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2709_booleanValue/1280995494=([java.lang.String], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/-1652180213=([org.javacc.jjtree.IO, java.lang.String], void)}
; {var3627=org.javacc.jjtree.IO, var844=r1, var3004=r0, var3380=null_type, var2123=$r6, var3626=$r7, var2298=$r8, var2709=org.javacc.parser.Options, var2793=$z1, var11=$r11, var1162=$r9, var1793=$r10}
; {org.javacc.jjtree.IO=var3627, r1=var844, r0=var3004, null_type=var3380, $r6=var2123, $r7=var3626, $r8=var2298, org.javacc.parser.Options=var2709, $z1=var2793, $r11=var11, $r9=var1162, $r10=var1793}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.javacc.jjtree.IO;	r0 := @parameter1: java.lang.String;	if r0 == null goto $r2 = new java.lang.StringBuilder;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/*@bgen(jjtree) ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$z1 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean booleanValue(java.lang.String)>("IGNORE_ACTIONS");	if $z1 == 0 goto $r11 = " */";	$r11 = " */";	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<org.javacc.jjtree.IO: void print(java.lang.String)>($r10);	goto [?= return];	return
;block_num 5