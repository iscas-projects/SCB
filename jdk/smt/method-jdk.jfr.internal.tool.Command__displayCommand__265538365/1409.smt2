(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1630 0)
(declare-sort var3093 0)
(declare-sort var1821 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3093_buildAlias/-576785184 (var3093) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1039626076 (var3093) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getOptionSyntax/-1232839498 (var3093) var1821)
(declare-fun var1821_iterator/-912451715 (var1821) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var1630 var1630)
(declare-const null-var3093 var3093)
(declare-const var3802 var1630) ; Statement: r11 := @parameter0: java.io.PrintStream 
(assert (not (= var3802 null-var1630)))
(declare-const var3747 var3093) ; Statement: r0 := @parameter1: jdk.jfr.internal.tool.Command 
(assert (not (= var3747 null-var3093)))
(define-const var707 Bool (ite (= 1 1) true false)) ; Statement: z1 = 1 
(define-const var158 String (var3093_buildAlias/-576785184 var3747)) ; Statement: r1 = staticinvoke <jdk.jfr.internal.tool.Command: java.lang.String buildAlias(jdk.jfr.internal.tool.Command)>(r0) 
(define-const var534 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var534)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var534!1 String)
(assert (= var534!1 ""))
(assert true)
(define-const var1288 String (append/672562846 var534!1 " jfr ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" jfr ") 
(declare-const var534!2 String)
(assert (= var534!2 (str.++ var534!1 " jfr ")))
(assert true)
(define-const var3533 String (getName/1039626076 var3747)) ; Statement: $r3 = virtualinvoke r0.<jdk.jfr.internal.tool.Command: java.lang.String getName()>() 
(assert true)
(define-const var466 String (append/672562846 var1288 var3533)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1288!1 String)
(assert (= var1288!1 (str.++ var1288 var3533)))
(assert true)
(define-const var1403 String (toString/-2075883882 var466)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2736 var1821 (getOptionSyntax/-1232839498 var3747)) ; Statement: $r7 = virtualinvoke r0.<jdk.jfr.internal.tool.Command: java.util.List getOptionSyntax()>() 
(define-const var1103 Iterator (var1821_iterator/-912451715 var2736)) ; Statement: r8 = interfaceinvoke $r7.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1406 Bool (Iterator_hasNext/-1669924200 var1103)) ; Statement: $z0 = interfaceinvoke r8.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var1406 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3093_buildAlias/-576785184=([jdk.jfr.internal.tool.Command], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1039626076=([jdk.jfr.internal.tool.Command], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getOptionSyntax/-1232839498=([jdk.jfr.internal.tool.Command], java.util.List), var1821_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var1630=java.io.PrintStream, var3802=r11, var3093=jdk.jfr.internal.tool.Command, var3747=r0, var707=z1, var158=r1, var534=$r2, var1288=$r4, var3533=$r3, var466=$r5, var1403=r6, var1821=java.util.List, var2736=$r7, var1103=r8, var1406=$z0}
; {java.io.PrintStream=var1630, r11=var3802, jdk.jfr.internal.tool.Command=var3093, r0=var3747, z1=var707, r1=var158, $r2=var534, $r4=var1288, $r3=var3533, $r5=var466, r6=var1403, java.util.List=var1821, $r7=var2736, r8=var1103, $z0=var1406}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @parameter0: java.io.PrintStream;	r0 := @parameter1: jdk.jfr.internal.tool.Command;	z1 = 1;	r1 = staticinvoke <jdk.jfr.internal.tool.Command: java.lang.String buildAlias(jdk.jfr.internal.tool.Command)>(r0);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" jfr ");	$r3 = virtualinvoke r0.<jdk.jfr.internal.tool.Command: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke r0.<jdk.jfr.internal.tool.Command: java.util.List getOptionSyntax()>();	r8 = interfaceinvoke $r7.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r8.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return;	return
;block_num 3