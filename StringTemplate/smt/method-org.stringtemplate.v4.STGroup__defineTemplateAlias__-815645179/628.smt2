(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2313 0)
(declare-sort var2275 0)
(declare-sort var100 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2275_getText/-2014085613 (var2275) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun rawGetTemplate/1385612115 (var2313 String) var100)
(declare-fun rawDefineTemplate/-1241445942 (var2313 String var100 var2275) void)
(declare-const null-var2313 var2313)
(declare-const null-var2275 var2275)
(declare-const null-var100 var100)
(declare-const var3745 var2313) ; Statement: r4 := @this: org.stringtemplate.v4.STGroup 
(assert (not (= var3745 null-var2313)))
(declare-const var3783 var2275) ; Statement: r0 := @parameter0: org.antlr.runtime.Token 
(assert (not (= var3783 null-var2275)))
(declare-const var1530 var2275) ; Statement: r2 := @parameter1: org.antlr.runtime.Token 
(assert (not (= var1530 null-var2275)))
(define-const var3415 String (var2275_getText/-2014085613 var3783)) ; Statement: r1 = interfaceinvoke r0.<org.antlr.runtime.Token: java.lang.String getText()>() 
(define-const var186 String (var2275_getText/-2014085613 var1530)) ; Statement: r3 = interfaceinvoke r2.<org.antlr.runtime.Token: java.lang.String getText()>() 
(define-const var1777 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1777)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1777!1 String)
(assert (= var1777!1 ""))
(assert true)
(define-const var3565 String (append/672562846 var1777!1 "/")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/") 
(declare-const var1777!2 String)
(assert (= var1777!2 (str.++ var1777!1 "/")))
(assert true)
(define-const var231 String (append/672562846 var3565 var186)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3565!1 String)
(assert (= var3565!1 (str.++ var3565 var186)))
(assert true)
(define-const var886 String (toString/-2075883882 var231)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1207 var100 (rawGetTemplate/1385612115 var3745 var886)) ; Statement: r9 = virtualinvoke r4.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.compiler.CompiledST rawGetTemplate(java.lang.String)>($r8) 
 ; Statement: if r9 != null goto $r10 = new java.lang.StringBuilder 
(assert (not (= var1207 null-var100))) ; Cond: r9 != null 
(define-const var3108 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3108)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3108!1 String)
(assert (= var3108!1 ""))
(assert true)
(define-const var3827 String (append/672562846 var3108!1 "/")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/") 
(declare-const var3108!2 String)
(assert (= var3108!2 (str.++ var3108!1 "/")))
(assert true)
(define-const var2403 String (append/672562846 var3827 var3415)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3827!1 String)
(assert (= var3827!1 (str.++ var3827 var3415)))
(assert true)
(define-const var1388 String (toString/-2075883882 var2403)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (rawDefineTemplate/-1241445942 var3745 var1388 var1207 var3783)) ; Statement: virtualinvoke r4.<org.stringtemplate.v4.STGroup: void rawDefineTemplate(java.lang.String,org.stringtemplate.v4.compiler.CompiledST,org.antlr.runtime.Token)>($r13, r9, r0) 

(declare-const var3745!1 var2313)
(declare-const var1388!1 String)
(declare-const var1207!1 var100)
(declare-const var3783!1 var2275)
 ; Statement: return r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var2275_getText/-2014085613=([org.antlr.runtime.Token], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), rawGetTemplate/1385612115=([org.stringtemplate.v4.STGroup, java.lang.String], org.stringtemplate.v4.compiler.CompiledST), rawDefineTemplate/-1241445942=([org.stringtemplate.v4.STGroup, java.lang.String, org.stringtemplate.v4.compiler.CompiledST, org.antlr.runtime.Token], void)}
; {var2313=org.stringtemplate.v4.STGroup, var3745=r4, var2275=org.antlr.runtime.Token, var3783=r0, var1530=r2, var3415=r1, var186=r3, var1777=$r5, var3565=$r6, var231=$r7, var886=$r8, var100=org.stringtemplate.v4.compiler.CompiledST, var1207=r9, var3108=$r10, var3827=$r11, var2403=$r12, var1388=$r13}
; {org.stringtemplate.v4.STGroup=var2313, r4=var3745, org.antlr.runtime.Token=var2275, r0=var3783, r2=var1530, r1=var3415, r3=var186, $r5=var1777, $r6=var3565, $r7=var231, $r8=var886, org.stringtemplate.v4.compiler.CompiledST=var100, r9=var1207, $r10=var3108, $r11=var3827, $r12=var2403, $r13=var1388}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r4 := @this: org.stringtemplate.v4.STGroup;	r0 := @parameter0: org.antlr.runtime.Token;	r2 := @parameter1: org.antlr.runtime.Token;	r1 = interfaceinvoke r0.<org.antlr.runtime.Token: java.lang.String getText()>();	r3 = interfaceinvoke r2.<org.antlr.runtime.Token: java.lang.String getText()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r9 = virtualinvoke r4.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.compiler.CompiledST rawGetTemplate(java.lang.String)>($r8);	if r9 != null goto $r10 = new java.lang.StringBuilder;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<org.stringtemplate.v4.STGroup: void rawDefineTemplate(java.lang.String,org.stringtemplate.v4.compiler.CompiledST,org.antlr.runtime.Token)>($r13, r9, r0);	return r9
;block_num 2