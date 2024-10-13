(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2969 0)
(declare-sort var3522 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun defaultValueToken/-597608604 (var2969) var3522)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun name/-597608604 (var2969) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3522_getText/-2014085613 (var3522) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2969 var2969)
(declare-const null-var3522 var3522)
(declare-const var1428 var2969) ; Statement: r0 := @this: org.stringtemplate.v4.compiler.FormalArgument 
(assert (not (= var1428 null-var2969)))
(define-const var3444 var3522 (defaultValueToken/-597608604 var1428)) ; Statement: $r1 = r0.<org.stringtemplate.v4.compiler.FormalArgument: org.antlr.runtime.Token defaultValueToken> 
 ; Statement: if $r1 == null goto $r2 = r0.<org.stringtemplate.v4.compiler.FormalArgument: java.lang.String name> 
(assert (not (= var3444 null-var3522))) ; Negate: Cond: $r1 == null  
(define-const var2290 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2290)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2290!1 String)
(assert (= var2290!1 ""))
(define-const var3275 String (name/-597608604 var1428)) ; Statement: $r4 = r0.<org.stringtemplate.v4.compiler.FormalArgument: java.lang.String name> 
(assert true)
(define-const var194 String (append/672562846 var2290!1 var3275)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2290!2 String)
(assert (= var2290!2 (str.++ var2290!1 var3275)))
(assert true)
(define-const var466 String (append/672562846 var194 "=")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=") 
(declare-const var194!1 String)
(assert (= var194!1 (str.++ var194 "=")))
(define-const var3288 var3522 (defaultValueToken/-597608604 var1428)) ; Statement: $r6 = r0.<org.stringtemplate.v4.compiler.FormalArgument: org.antlr.runtime.Token defaultValueToken> 
(define-const var1181 String (var3522_getText/-2014085613 var3288)) ; Statement: $r7 = interfaceinvoke $r6.<org.antlr.runtime.Token: java.lang.String getText()>() 
(assert true)
(define-const var583 String (append/672562846 var466 var1181)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var466!1 String)
(assert (= var466!1 (str.++ var466 var1181)))
(assert true)
(define-const var3459 String (toString/-2075883882 var583)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {defaultValueToken/-597608604=([org.stringtemplate.v4.compiler.FormalArgument], org.antlr.runtime.Token), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), name/-597608604=([org.stringtemplate.v4.compiler.FormalArgument], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3522_getText/-2014085613=([org.antlr.runtime.Token], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2969=org.stringtemplate.v4.compiler.FormalArgument, var1428=r0, var3522=org.antlr.runtime.Token, var3444=$r1, var2290=$r3, var3275=$r4, var194=$r5, var466=$r8, var3288=$r6, var1181=$r7, var583=$r9, var3459=$r10}
; {org.stringtemplate.v4.compiler.FormalArgument=var2969, r0=var1428, org.antlr.runtime.Token=var3522, $r1=var3444, $r3=var2290, $r4=var3275, $r5=var194, $r8=var466, $r6=var3288, $r7=var1181, $r9=var583, $r10=var3459}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.stringtemplate.v4.compiler.FormalArgument;	$r1 = r0.<org.stringtemplate.v4.compiler.FormalArgument: org.antlr.runtime.Token defaultValueToken>;	if $r1 == null goto $r2 = r0.<org.stringtemplate.v4.compiler.FormalArgument: java.lang.String name>;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = r0.<org.stringtemplate.v4.compiler.FormalArgument: java.lang.String name>;	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=");	$r6 = r0.<org.stringtemplate.v4.compiler.FormalArgument: org.antlr.runtime.Token defaultValueToken>;	$r7 = interfaceinvoke $r6.<org.antlr.runtime.Token: java.lang.String getText()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 2