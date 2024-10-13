(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1240 0)
(declare-sort var3883 0)
(declare-sort var641 0)
(declare-sort var3809 0)
(declare-sort var2768 0)
(declare-sort var2448 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun impl/55375992 (var1240) var641)
(declare-fun formalArguments/1377009226 (var641) var3809)
(declare-fun var3809_get/1088891777 (var3809 var2768) var2768)
(declare-fun cast-from-String-to-var2768 (String) var2768)
(declare-fun cast-from-var2768-to-var2448 (var2768) var2448)
(declare-fun locals/55375992 (var1240) (Array Int var2768))
(declare-fun index/-597608604 (var2448) Int)
(declare-const null-var1240 var1240)
(declare-const null-String String)
(declare-const null-var3809 var3809)
(declare-const null-var2448 var2448)
(declare-const var1240-EMPTY_ATTR var2768)
(declare-const null-__Array__Int__var2768__ (Array Int var2768))
(declare-const var1196 var1240) ; Statement: r0 := @this: org.stringtemplate.v4.ST 
(assert (not (= var1196 null-var1240)))
(declare-const var276 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var276 null-String)))
(define-const var1055 var641 (impl/55375992 var1196)) ; Statement: $r1 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
(define-const var1514 var3809 (formalArguments/1377009226 var1055)) ; Statement: $r2 = $r1.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments> 
 ; Statement: if $r2 != null goto $r3 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
(assert (not (= var1514 null-var3809))) ; Cond: $r2 != null 
(define-const var2732 var641 (impl/55375992 var1196)) ; Statement: $r3 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
(define-const var1758 var3809 (formalArguments/1377009226 var2732)) ; Statement: $r5 = $r3.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments> 
(define-const var916 var2768 (var3809_get/1088891777 var1758 (cast-from-String-to-var2768 var276))) ; Statement: $r6 = interfaceinvoke $r5.<java.util.Map: java.lang.Object get(java.lang.Object)>(r4) 
(define-const var2314 var2448 (cast-from-var2768-to-var2448 var916)) ; Statement: r7 = (org.stringtemplate.v4.compiler.FormalArgument) $r6 
 ; Statement: if r7 != null goto $r9 = r0.<org.stringtemplate.v4.ST: java.lang.Object[] locals> 
(assert (not (= var2314 null-var2448))) ; Cond: r7 != null 
(define-const var1850 (Array Int var2768) (locals/55375992 var1196)) ; Statement: $r9 = r0.<org.stringtemplate.v4.ST: java.lang.Object[] locals> 
(define-const var2958 Int (index/-597608604 var2314)) ; Statement: $i0 = r7.<org.stringtemplate.v4.compiler.FormalArgument: int index> 
(define-const var2651 var2768 var1240-EMPTY_ATTR) ; Statement: $r8 = <org.stringtemplate.v4.ST: java.lang.Object EMPTY_ATTR> 
(declare-const var1850!1 (Array Int var2768))
(assert (not (= var1850!1 null-__Array__Int__var2768__)))
(assert (= (select var1850!1 var2958) var2651)) ; Statement: $r9[$i0] = $r8 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {impl/55375992=([org.stringtemplate.v4.ST], org.stringtemplate.v4.compiler.CompiledST), formalArguments/1377009226=([org.stringtemplate.v4.compiler.CompiledST], java.util.Map), var3809_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2768=([java.lang.String], java.lang.Object), cast-from-var2768-to-var2448=([java.lang.Object], org.stringtemplate.v4.compiler.FormalArgument), locals/55375992=([org.stringtemplate.v4.ST], java.lang.Object[]), index/-597608604=([org.stringtemplate.v4.compiler.FormalArgument], int)}
; {var1240=org.stringtemplate.v4.ST, var1196=r0, var276=r4, var3883=null_type, var641=org.stringtemplate.v4.compiler.CompiledST, var1055=$r1, var3809=java.util.Map, var1514=$r2, var2732=$r3, var1758=$r5, var2768=java.lang.Object, var916=$r6, var2448=org.stringtemplate.v4.compiler.FormalArgument, var2314=r7, var1850=$r9, var2958=$i0, var2651=$r8}
; {org.stringtemplate.v4.ST=var1240, r0=var1196, r4=var276, null_type=var3883, org.stringtemplate.v4.compiler.CompiledST=var641, $r1=var1055, java.util.Map=var3809, $r2=var1514, $r3=var2732, $r5=var1758, java.lang.Object=var2768, $r6=var916, org.stringtemplate.v4.compiler.FormalArgument=var2448, r7=var2314, $r9=var1850, $i0=var2958, $r8=var2651}
;seq 
;cnt {}
;stmts r0 := @this: org.stringtemplate.v4.ST;	r4 := @parameter0: java.lang.String;	$r1 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	$r2 = $r1.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments>;	if $r2 != null goto $r3 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	$r3 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	$r5 = $r3.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments>;	$r6 = interfaceinvoke $r5.<java.util.Map: java.lang.Object get(java.lang.Object)>(r4);	r7 = (org.stringtemplate.v4.compiler.FormalArgument) $r6;	if r7 != null goto $r9 = r0.<org.stringtemplate.v4.ST: java.lang.Object[] locals>;	$r9 = r0.<org.stringtemplate.v4.ST: java.lang.Object[] locals>;	$i0 = r7.<org.stringtemplate.v4.compiler.FormalArgument: int index>;	$r8 = <org.stringtemplate.v4.ST: java.lang.Object EMPTY_ATTR>;	$r9[$i0] = $r8;	return
;block_num 3