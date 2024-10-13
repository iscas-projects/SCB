(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3214 0)
(declare-sort var966 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun specialToken/197050796 (var966) var966)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getStringForTokenOnly/1047505572 (var3214 var966) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3214 var3214)
(declare-const null-var966 var966)
(declare-const var3154 var3214) ; Statement: r2 := @this: org.javacc.parser.CodeGenerator 
(assert (not (= var3154 null-var3214)))
(declare-const var2606 var966) ; Statement: r0 := @parameter0: org.javacc.parser.Token 
(assert (not (= var2606 null-var966)))
(define-const var2197 String "") ; Statement: r12 = "" 
(define-const var3847 var966 (specialToken/197050796 var2606)) ; Statement: r13 = r0.<org.javacc.parser.Token: org.javacc.parser.Token specialToken> 
 ; Statement: if r13 == null goto $r1 = new java.lang.StringBuilder 
(assert (= var3847 null-var966)) ; Cond: r13 == null 
(define-const var1794 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1794)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1794!1 String)
(assert (= var1794!1 ""))
(assert true)
(define-const var1688 String (append/672562846 var1794!1 var2197)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12) 
(declare-const var1794!2 String)
(assert (= var1794!2 (str.++ var1794!1 var2197)))
(assert true)
(define-const var1783 String (getStringForTokenOnly/1047505572 var3154 var2606)) ; Statement: $r3 = virtualinvoke r2.<org.javacc.parser.CodeGenerator: java.lang.String getStringForTokenOnly(org.javacc.parser.Token)>(r0) 
(assert true)
(define-const var755 String (append/672562846 var1688 var1783)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1688!1 String)
(assert (= var1688!1 (str.++ var1688 var1783)))
(assert true)
(define-const var1755 String (toString/-2075883882 var755)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {specialToken/197050796=([org.javacc.parser.Token], org.javacc.parser.Token), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getStringForTokenOnly/1047505572=([org.javacc.parser.CodeGenerator, org.javacc.parser.Token], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3214=org.javacc.parser.CodeGenerator, var3154=r2, var966=org.javacc.parser.Token, var2606=r0, var2197=r12, var3847=r13, var1794=$r1, var1688=$r4, var1783=$r3, var755=$r5, var1755=$r6}
; {org.javacc.parser.CodeGenerator=var3214, r2=var3154, org.javacc.parser.Token=var966, r0=var2606, r12=var2197, r13=var3847, $r1=var1794, $r4=var1688, $r3=var1783, $r5=var755, $r6=var1755}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.javacc.parser.CodeGenerator;	r0 := @parameter0: org.javacc.parser.Token;	r12 = "";	r13 = r0.<org.javacc.parser.Token: org.javacc.parser.Token specialToken>;	if r13 == null goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12);	$r3 = virtualinvoke r2.<org.javacc.parser.CodeGenerator: java.lang.String getStringForTokenOnly(org.javacc.parser.Token)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2