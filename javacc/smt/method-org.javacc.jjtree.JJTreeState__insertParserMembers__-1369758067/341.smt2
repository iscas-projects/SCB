(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3732 0)
(declare-sort var1259 0)
(declare-sort var3226 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1259_getStatic/-616544340 () Bool)
(declare-fun println/2032072932 (var3732) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3226_nameState/428850403 () String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1333914633 (var3732 String) void)
(declare-const null-var3732 var3732)
(declare-const var1963 var3732) ; Statement: r0 := @parameter0: org.javacc.jjtree.IO 
(assert (not (= var1963 null-var3732)))
(define-const var2152 Bool var1259_getStatic/-616544340) ; Statement: $z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getStatic()>() 
 ; Statement: if $z0 == 0 goto r11 = "" 
(assert (= (ite var2152 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2259 String "") ; Statement: r11 = "" 
(assert true) ; Non Conditional
(assert true)
;(assert (println/2032072932 var1963)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void println()>() 

(declare-const var1963!1 var3732)
(define-const var407 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var407)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var407!1 String)
(assert (= var407!1 ""))
(assert true)
(define-const var1736 String (append/672562846 var407!1 "  protected ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  protected ") 
(declare-const var407!2 String)
(assert (= var407!2 (str.++ var407!1 "  protected ")))
(assert true)
(define-const var2934 String (append/672562846 var1736 var2259)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11) 
(declare-const var1736!1 String)
(assert (= var1736!1 (str.++ var1736 var2259)))
(define-const var336 String var3226_nameState/428850403) ; Statement: $r3 = staticinvoke <org.javacc.jjtree.JJTreeState: java.lang.String nameState()>() 
(assert true)
(define-const var917 String (append/672562846 var2934 var336)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2934!1 String)
(assert (= var2934!1 (str.++ var2934 var336)))
(assert true)
(define-const var3511 String (append/672562846 var917 " jjtree = new ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" jjtree = new ") 
(declare-const var917!1 String)
(assert (= var917!1 (str.++ var917 " jjtree = new ")))
(define-const var1315 String var3226_nameState/428850403) ; Statement: $r6 = staticinvoke <org.javacc.jjtree.JJTreeState: java.lang.String nameState()>() 
(assert true)
(define-const var70 String (append/672562846 var3511 var1315)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3511!1 String)
(assert (= var3511!1 (str.++ var3511 var1315)))
(assert true)
(define-const var69 String (append/672562846 var70 "();")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("();") 
(declare-const var70!1 String)
(assert (= var70!1 (str.++ var70 "();")))
(assert true)
(define-const var942 String (toString/-2075883882 var69)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var1963!1 var942)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r10) 

(declare-const var1963!2 var3732)
(declare-const var942!1 String)
(assert true)
;(assert (println/2032072932 var1963!2)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void println()>() 

(declare-const var1963!3 var3732)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1259_getStatic/-616544340=([], boolean), println/2032072932=([org.javacc.jjtree.IO], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3226_nameState/428850403=([], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1333914633=([org.javacc.jjtree.IO, java.lang.String], void)}
; {var3732=org.javacc.jjtree.IO, var1963=r0, var1259=org.javacc.parser.Options, var2152=$z0, var2259=r11, var407=$r1, var1736=$r2, var2934=$r4, var3226=org.javacc.jjtree.JJTreeState, var336=$r3, var917=$r5, var3511=$r7, var1315=$r6, var70=$r8, var69=$r9, var942=$r10}
; {org.javacc.jjtree.IO=var3732, r0=var1963, org.javacc.parser.Options=var1259, $z0=var2152, r11=var2259, $r1=var407, $r2=var1736, $r4=var2934, org.javacc.jjtree.JJTreeState=var3226, $r3=var336, $r5=var917, $r7=var3511, $r6=var1315, $r8=var70, $r9=var69, $r10=var942}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.javacc.jjtree.IO;	$z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getStatic()>();	if $z0 == 0 goto r11 = "";	r11 = "";	virtualinvoke r0.<org.javacc.jjtree.IO: void println()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  protected ");	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11);	$r3 = staticinvoke <org.javacc.jjtree.JJTreeState: java.lang.String nameState()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" jjtree = new ");	$r6 = staticinvoke <org.javacc.jjtree.JJTreeState: java.lang.String nameState()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("();");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r10);	virtualinvoke r0.<org.javacc.jjtree.IO: void println()>();	return
;block_num 3