(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2731 0)
(declare-sort var44 0)
(declare-sort var70 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendTypeNode/-548978742 (var2731 String var70) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2731 var2731)
(declare-const null-String String)
(declare-const null-var70 var70)
(declare-const var2404 var2731) ; Statement: r2 := @this: com.google.javascript.jscomp.JSDocInfoPrinter 
(assert (not (= var2404 null-var2731)))
(declare-const var1006 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1006 null-String)))
(declare-const var2985 var70) ; Statement: r3 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var2985 null-var70)))
(declare-const var1789 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var1789 null-String)))
(define-const var404 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var404)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var404!1 String)
(assert (= var404!1 ""))
(assert true)
;(assert (append/672562846 var404!1 "@")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@") 
(declare-const var404!2 String)
(assert (= var404!2 (str.++ var404!1 "@")))
(assert true)
;(assert (append/672562846 var404!2 var1006)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var404!3 String)
(assert (= var404!3 (str.++ var404!2 var1006)))
(assert true)
;(assert (append/672562846 var404!3 " {")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" {") 
(declare-const var404!4 String)
(assert (= var404!4 (str.++ var404!3 " {")))
(assert true)
;(assert (appendTypeNode/-548978742 var2404 var404!4 var2985)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.JSDocInfoPrinter: void appendTypeNode(java.lang.StringBuilder,com.google.javascript.rhino.Node)>($r0, r3) 

(declare-const var2404!1 var2731)
(declare-const var404!5 String)
(declare-const var2985!1 var70)
(assert true)
;(assert (append/672562846 var404!5 "}")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var404!6 String)
(assert (= var404!6 (str.++ var404!5 "}")))
 ; Statement: if r4 == null goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var1789 null-String)) ; Cond: r4 == null 
(assert true)
(define-const var2532 String (toString/-2075883882 var404!6)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), appendTypeNode/-548978742=([com.google.javascript.jscomp.JSDocInfoPrinter, java.lang.StringBuilder, com.google.javascript.rhino.Node], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2731=com.google.javascript.jscomp.JSDocInfoPrinter, var2404=r2, var1006=r1, var44=null_type, var70=com.google.javascript.rhino.Node, var2985=r3, var1789=r4, var404=$r0, var2532=$r5}
; {com.google.javascript.jscomp.JSDocInfoPrinter=var2731, r2=var2404, r1=var1006, null_type=var44, com.google.javascript.rhino.Node=var70, r3=var2985, r4=var1789, $r0=var404, $r5=var2532}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.JSDocInfoPrinter;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: com.google.javascript.rhino.Node;	r4 := @parameter2: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" {");	virtualinvoke r2.<com.google.javascript.jscomp.JSDocInfoPrinter: void appendTypeNode(java.lang.StringBuilder,com.google.javascript.rhino.Node)>($r0, r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	if r4 == null goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 2