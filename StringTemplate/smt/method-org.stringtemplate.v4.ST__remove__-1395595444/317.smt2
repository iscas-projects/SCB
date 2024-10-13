(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var889 0)
(declare-sort var2840 0)
(declare-sort var111 0)
(declare-sort var1090 0)
(declare-sort var167 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun impl/55375992 (var889) var111)
(declare-fun formalArguments/1377009226 (var111) var1090)
(declare-fun hasFormalArgs/1377009226 (var111) Bool)
(declare-fun var167-init () var167)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var167 String) void)
(declare-const null-var889 var889)
(declare-const null-String String)
(declare-const null-var1090 var1090)
(declare-const var3643 var889) ; Statement: r0 := @this: org.stringtemplate.v4.ST 
(assert (not (= var3643 null-var889)))
(declare-const var3570 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3570 null-String)))
(define-const var2207 var111 (impl/55375992 var3643)) ; Statement: $r1 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
(define-const var1340 var1090 (formalArguments/1377009226 var2207)) ; Statement: $r2 = $r1.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments> 
 ; Statement: if $r2 != null goto $r3 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
(assert (not (not (= var1340 null-var1090)))) ; Negate: Cond: $r2 != null  
(define-const var1254 var111 (impl/55375992 var3643)) ; Statement: $r15 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
(define-const var2916 Bool (hasFormalArgs/1377009226 var1254)) ; Statement: $z0 = $r15.<org.stringtemplate.v4.compiler.CompiledST: boolean hasFormalArgs> 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var2916 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2882 var167 var167-init) ; Statement: $r16 = new java.lang.IllegalArgumentException 
(define-const var903 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var903)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var903!1 String)
(assert (= var903!1 ""))
(assert true)
(define-const var2872 String (append/672562846 var903!1 "no such attribute: ")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no such attribute: ") 
(declare-const var903!2 String)
(assert (= var903!2 (str.++ var903!1 "no such attribute: ")))
(assert true)
(define-const var901 String (append/672562846 var2872 var3570)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2872!1 String)
(assert (= var2872!1 (str.++ var2872 var3570)))
(assert true)
(define-const var423 String (toString/-2075883882 var901)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2882 var423)) ; Statement: specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r20) 

(declare-const var2882!1 var167)
(declare-const var423!1 String)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {impl/55375992=([org.stringtemplate.v4.ST], org.stringtemplate.v4.compiler.CompiledST), formalArguments/1377009226=([org.stringtemplate.v4.compiler.CompiledST], java.util.Map), hasFormalArgs/1377009226=([org.stringtemplate.v4.compiler.CompiledST], boolean), var167-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var889=org.stringtemplate.v4.ST, var3643=r0, var3570=r4, var2840=null_type, var111=org.stringtemplate.v4.compiler.CompiledST, var2207=$r1, var1090=java.util.Map, var1340=$r2, var1254=$r15, var2916=$z0, var167=java.lang.IllegalArgumentException, var2882=$r16, var903=$r17, var2872=$r18, var901=$r19, var423=$r20}
; {org.stringtemplate.v4.ST=var889, r0=var3643, r4=var3570, null_type=var2840, org.stringtemplate.v4.compiler.CompiledST=var111, $r1=var2207, java.util.Map=var1090, $r2=var1340, $r15=var1254, $z0=var2916, java.lang.IllegalArgumentException=var167, $r16=var2882, $r17=var903, $r18=var2872, $r19=var901, $r20=var423}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.stringtemplate.v4.ST;	r4 := @parameter0: java.lang.String;	$r1 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	$r2 = $r1.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments>;	if $r2 != null goto $r3 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	$r15 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	$z0 = $r15.<org.stringtemplate.v4.compiler.CompiledST: boolean hasFormalArgs>;	if $z0 == 0 goto return;	$r16 = new java.lang.IllegalArgumentException;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no such attribute: ");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r20);	throw $r16
;block_num 3