(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2645 0)
(declare-sort var3436 0)
(declare-sort var3959 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3959_booleanValue/1280995494 (String) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/-1652180213 (var2645 String) void)
(declare-const null-var2645 var2645)
(declare-const null-String String)
(declare-const var1117 var2645) ; Statement: r1 := @parameter0: org.javacc.jjtree.IO 
(assert (not (= var1117 null-var2645)))
(declare-const var2240 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2240 null-String)))
 ; Statement: if r0 == null goto $r2 = new java.lang.StringBuilder 
(assert (not (= var2240 null-String))) ; Negate: Cond: r0 == null  
(define-const var2566 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2566)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2566!1 String)
(assert (= var2566!1 ""))
(assert true)
(define-const var3042 String (append/672562846 var2566!1 "/*@bgen(jjtree) ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/*@bgen(jjtree) ") 
(declare-const var2566!2 String)
(assert (= var2566!2 (str.++ var2566!1 "/*@bgen(jjtree) ")))
(assert true)
(define-const var1010 String (append/672562846 var3042 var2240)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3042!1 String)
(assert (= var3042!1 (str.++ var3042 var2240)))
(define-const var1909 Bool (var3959_booleanValue/1280995494 "IGNORE_ACTIONS")) ; Statement: $z1 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean booleanValue(java.lang.String)>("IGNORE_ACTIONS") 
 ; Statement: if $z1 == 0 goto $r11 = " */" 
(assert (not (= (ite var1909 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1726 String "") ; Statement: $r11 = "" 
 ; Statement: goto [?= $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11)] 
(assert true) ; Non Conditional
(assert true)
(define-const var534 String (append/672562846 var1010 var1726)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1010!1 String)
(assert (= var1010!1 (str.++ var1010 var1726)))
(assert true)
(define-const var148 String (toString/-2075883882 var534)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-1652180213 var1117 var148)) ; Statement: virtualinvoke r1.<org.javacc.jjtree.IO: void print(java.lang.String)>($r10) 

(declare-const var1117!1 var2645)
(declare-const var148!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3959_booleanValue/1280995494=([java.lang.String], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/-1652180213=([org.javacc.jjtree.IO, java.lang.String], void)}
; {var2645=org.javacc.jjtree.IO, var1117=r1, var2240=r0, var3436=null_type, var2566=$r6, var3042=$r7, var1010=$r8, var3959=org.javacc.parser.Options, var1909=$z1, var1726=$r11, var534=$r9, var148=$r10}
; {org.javacc.jjtree.IO=var2645, r1=var1117, r0=var2240, null_type=var3436, $r6=var2566, $r7=var3042, $r8=var1010, org.javacc.parser.Options=var3959, $z1=var1909, $r11=var1726, $r9=var534, $r10=var148}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.javacc.jjtree.IO;	r0 := @parameter1: java.lang.String;	if r0 == null goto $r2 = new java.lang.StringBuilder;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/*@bgen(jjtree) ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$z1 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean booleanValue(java.lang.String)>("IGNORE_ACTIONS");	if $z1 == 0 goto $r11 = " */";	$r11 = "";	goto [?= $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11)];	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<org.javacc.jjtree.IO: void print(java.lang.String)>($r10);	goto [?= return];	return
;block_num 5