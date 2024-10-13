(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3260 0)
(declare-sort var1267 0)
(declare-sort var1879 0)
(declare-sort var2166 0)
(declare-sort var1230 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1267_getText/-2014085613 (var1267) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1879 String) void)
(declare-const null-var3260 var3260)
(declare-const null-var1267 var1267)
(declare-const var3260-verbose Bool)
(declare-const var2166-out var1879)
(declare-const null-String String)
(declare-const var3500 var3260) ; Statement: r3 := @this: org.stringtemplate.v4.STGroup 
(assert (not (= var3500 null-var3260)))
(declare-const var2396 var1267) ; Statement: r0 := @parameter0: org.antlr.runtime.Token 
(assert (not (= var2396 null-var1267)))
(define-const var1955 Bool var3260-verbose) ; Statement: $z0 = <org.stringtemplate.v4.STGroup: boolean verbose> 
 ; Statement: if $z0 == 0 goto $r28 = interfaceinvoke r0.<org.antlr.runtime.Token: java.lang.String getText()>() 
(assert (not (= (ite var1955 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1431 var1879 var2166-out) ; Statement: $r22 = <java.lang.System: java.io.PrintStream out> 
(define-const var2273 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2273)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2273!1 String)
(assert (= var2273!1 ""))
(assert true)
(define-const var846 String (append/672562846 var2273!1 "importTemplates(")) ; Statement: $r24 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("importTemplates(") 
(declare-const var2273!2 String)
(assert (= var2273!2 (str.++ var2273!1 "importTemplates(")))
(define-const var3992 String (var1267_getText/-2014085613 var2396)) ; Statement: $r23 = interfaceinvoke r0.<org.antlr.runtime.Token: java.lang.String getText()>() 
(assert true)
(define-const var3534 String (append/672562846 var846 var3992)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var846!1 String)
(assert (= var846!1 (str.++ var846 var3992)))
(assert true)
(define-const var274 String (append/672562846 var3534 ")")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3534!1 String)
(assert (= var3534!1 (str.++ var3534 ")")))
(assert true)
(define-const var2356 String (toString/-2075883882 var274)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1431 var2356)) ; Statement: virtualinvoke $r22.<java.io.PrintStream: void println(java.lang.String)>($r27) 

(declare-const var1431!1 var1879)
(declare-const var2356!1 String)
(assert true) ; Non Conditional
(define-const var1613 String (var1267_getText/-2014085613 var2396)) ; Statement: $r28 = interfaceinvoke r0.<org.antlr.runtime.Token: java.lang.String getText()>() 
 ; Statement: if $r28 == null goto return 
(assert (= var1613 null-String)) ; Cond: $r28 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1267_getText/-2014085613=([org.antlr.runtime.Token], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var3260=org.stringtemplate.v4.STGroup, var3500=r3, var1267=org.antlr.runtime.Token, var2396=r0, var1955=$z0, var1879=java.io.PrintStream, var2166=java.lang.System, var1431=$r22, var2273=$r54, var846=$r24, var3992=$r23, var3534=$r25, var274=$r26, var2356=$r27, var1613=$r28, var1230=null_type}
; {org.stringtemplate.v4.STGroup=var3260, r3=var3500, org.antlr.runtime.Token=var1267, r0=var2396, $z0=var1955, java.io.PrintStream=var1879, java.lang.System=var2166, $r22=var1431, $r54=var2273, $r24=var846, $r23=var3992, $r25=var3534, $r26=var274, $r27=var2356, $r28=var1613, null_type=var1230}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.stringtemplate.v4.STGroup;	r0 := @parameter0: org.antlr.runtime.Token;	$z0 = <org.stringtemplate.v4.STGroup: boolean verbose>;	if $z0 == 0 goto $r28 = interfaceinvoke r0.<org.antlr.runtime.Token: java.lang.String getText()>();	$r22 = <java.lang.System: java.io.PrintStream out>;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("importTemplates(");	$r23 = interfaceinvoke r0.<org.antlr.runtime.Token: java.lang.String getText()>();	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r22.<java.io.PrintStream: void println(java.lang.String)>($r27);	$r28 = interfaceinvoke r0.<org.antlr.runtime.Token: java.lang.String getText()>();	if $r28 == null goto return;	return
;block_num 4