(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3367 0)
(declare-sort var565 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun impl/55375992 (var3367) var565)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun name/1377009226 (var565) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun isRegion/1377009226 (var565) Bool)
(declare-const null-var3367 var3367)
(declare-const null-var565 var565)
(declare-const var3330 var3367) ; Statement: r0 := @this: org.stringtemplate.v4.ST 
(assert (not (= var3330 null-var3367)))
(define-const var768 var565 (impl/55375992 var3330)) ; Statement: $r1 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
 ; Statement: if $r1 != null goto $r2 = new java.lang.StringBuilder 
(assert (not (= var768 null-var565))) ; Cond: $r1 != null 
(define-const var2173 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2173)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2173!1 String)
(assert (= var2173!1 ""))
(define-const var3816 var565 (impl/55375992 var3330)) ; Statement: $r3 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
(define-const var2521 String (name/1377009226 var3816)) ; Statement: $r4 = $r3.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String name> 
(assert true)
(define-const var1028 String (append/672562846 var2173!1 var2521)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2173!2 String)
(assert (= var2173!2 (str.++ var2173!1 var2521)))
(assert true)
(define-const var18 String (append/672562846 var1028 "()")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()") 
(declare-const var1028!1 String)
(assert (= var1028!1 (str.++ var1028 "()")))
(assert true)
(define-const var2343 String (toString/-2075883882 var18)) ; Statement: r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3205 var565 (impl/55375992 var3330)) ; Statement: $r7 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
(define-const var2151 Bool (isRegion/1377009226 var3205)) ; Statement: $z0 = $r7.<org.stringtemplate.v4.compiler.CompiledST: boolean isRegion> 
 ; Statement: if $z0 == 0 goto return r12 
(assert (= (ite var2151 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r12 
(check-sat)
(get-model)
(get-unsat-core)
; {impl/55375992=([org.stringtemplate.v4.ST], org.stringtemplate.v4.compiler.CompiledST), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), name/1377009226=([org.stringtemplate.v4.compiler.CompiledST], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), isRegion/1377009226=([org.stringtemplate.v4.compiler.CompiledST], boolean)}
; {var3367=org.stringtemplate.v4.ST, var3330=r0, var565=org.stringtemplate.v4.compiler.CompiledST, var768=$r1, var2173=$r2, var3816=$r3, var2521=$r4, var1028=$r5, var18=$r6, var2343=r12, var3205=$r7, var2151=$z0}
; {org.stringtemplate.v4.ST=var3367, r0=var3330, org.stringtemplate.v4.compiler.CompiledST=var565, $r1=var768, $r2=var2173, $r3=var3816, $r4=var2521, $r5=var1028, $r6=var18, r12=var2343, $r7=var3205, $z0=var2151}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.stringtemplate.v4.ST;	$r1 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	if $r1 != null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	$r4 = $r3.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String name>;	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()");	r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	$z0 = $r7.<org.stringtemplate.v4.compiler.CompiledST: boolean isRegion>;	if $z0 == 0 goto return r12;	return r12
;block_num 3