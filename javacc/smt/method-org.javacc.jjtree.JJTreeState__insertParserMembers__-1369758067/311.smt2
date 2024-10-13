(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1545 0)
(declare-sort var1008 0)
(declare-sort var17 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1008_getStatic/-616544340 () Bool)
(declare-fun println/2032072932 (var1545) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var17_nameState/428850403 () String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1333914633 (var1545 String) void)
(declare-const null-var1545 var1545)
(declare-const var1899 var1545) ; Statement: r0 := @parameter0: org.javacc.jjtree.IO 
(assert (not (= var1899 null-var1545)))
(define-const var3721 Bool var1008_getStatic/-616544340) ; Statement: $z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getStatic()>() 
 ; Statement: if $z0 == 0 goto r11 = "" 
(assert (not (= (ite var3721 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3381 String "static ") ; Statement: r11 = "static " 
 ; Statement: goto [?= virtualinvoke r0.<org.javacc.jjtree.IO: void println()>()] 
(assert true) ; Non Conditional
(assert true)
;(assert (println/2032072932 var1899)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void println()>() 

(declare-const var1899!1 var1545)
(define-const var3706 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3706)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3706!1 String)
(assert (= var3706!1 ""))
(assert true)
(define-const var1690 String (append/672562846 var3706!1 "  protected ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  protected ") 
(declare-const var3706!2 String)
(assert (= var3706!2 (str.++ var3706!1 "  protected ")))
(assert true)
(define-const var2244 String (append/672562846 var1690 var3381)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11) 
(declare-const var1690!1 String)
(assert (= var1690!1 (str.++ var1690 var3381)))
(define-const var2048 String var17_nameState/428850403) ; Statement: $r3 = staticinvoke <org.javacc.jjtree.JJTreeState: java.lang.String nameState()>() 
(assert true)
(define-const var1737 String (append/672562846 var2244 var2048)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2244!1 String)
(assert (= var2244!1 (str.++ var2244 var2048)))
(assert true)
(define-const var219 String (append/672562846 var1737 " jjtree = new ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" jjtree = new ") 
(declare-const var1737!1 String)
(assert (= var1737!1 (str.++ var1737 " jjtree = new ")))
(define-const var2036 String var17_nameState/428850403) ; Statement: $r6 = staticinvoke <org.javacc.jjtree.JJTreeState: java.lang.String nameState()>() 
(assert true)
(define-const var1750 String (append/672562846 var219 var2036)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var219!1 String)
(assert (= var219!1 (str.++ var219 var2036)))
(assert true)
(define-const var3111 String (append/672562846 var1750 "();")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("();") 
(declare-const var1750!1 String)
(assert (= var1750!1 (str.++ var1750 "();")))
(assert true)
(define-const var1463 String (toString/-2075883882 var3111)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var1899!1 var1463)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r10) 

(declare-const var1899!2 var1545)
(declare-const var1463!1 String)
(assert true)
;(assert (println/2032072932 var1899!2)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void println()>() 

(declare-const var1899!3 var1545)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1008_getStatic/-616544340=([], boolean), println/2032072932=([org.javacc.jjtree.IO], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var17_nameState/428850403=([], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1333914633=([org.javacc.jjtree.IO, java.lang.String], void)}
; {var1545=org.javacc.jjtree.IO, var1899=r0, var1008=org.javacc.parser.Options, var3721=$z0, var3381=r11, var3706=$r1, var1690=$r2, var2244=$r4, var17=org.javacc.jjtree.JJTreeState, var2048=$r3, var1737=$r5, var219=$r7, var2036=$r6, var1750=$r8, var3111=$r9, var1463=$r10}
; {org.javacc.jjtree.IO=var1545, r0=var1899, org.javacc.parser.Options=var1008, $z0=var3721, r11=var3381, $r1=var3706, $r2=var1690, $r4=var2244, org.javacc.jjtree.JJTreeState=var17, $r3=var2048, $r5=var1737, $r7=var219, $r6=var2036, $r8=var1750, $r9=var3111, $r10=var1463}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.javacc.jjtree.IO;	$z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getStatic()>();	if $z0 == 0 goto r11 = "";	r11 = "static ";	goto [?= virtualinvoke r0.<org.javacc.jjtree.IO: void println()>()];	virtualinvoke r0.<org.javacc.jjtree.IO: void println()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  protected ");	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11);	$r3 = staticinvoke <org.javacc.jjtree.JJTreeState: java.lang.String nameState()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" jjtree = new ");	$r6 = staticinvoke <org.javacc.jjtree.JJTreeState: java.lang.String nameState()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("();");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r10);	virtualinvoke r0.<org.javacc.jjtree.IO: void println()>();	return
;block_num 3