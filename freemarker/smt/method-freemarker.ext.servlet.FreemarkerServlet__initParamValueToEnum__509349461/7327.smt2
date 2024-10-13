(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2900 0)
(declare-sort var2681 0)
(declare-sort var750 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-var750-1 ((Array Int var750)) Int)
(declare-fun var750_getInitParamValue/433949004 (var750) String)
(declare-const null-var2900 var2900)
(declare-const null-String String)
(declare-const null-__Array__Int__var750__ (Array Int var750))
(declare-const var3401 var2900) ; Statement: r10 := @this: freemarker.ext.servlet.FreemarkerServlet 
(assert (not (= var3401 null-var2900)))
(declare-const var872 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var872 null-String)))
(declare-const var1641 (Array Int var750)) ; Statement: r0 := @parameter1: freemarker.ext.servlet.FreemarkerServlet$InitParamValueEnum[] 
(assert (not (= var1641 null-__Array__Int__var750__)))
(define-const var1473 Int (getLength-Arr-var750-1 var1641)) ; Statement: i1 = lengthof r0 
(define-const var1967 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i1 goto $r1 = new java.lang.StringBuilder 
(assert (not (>= var1967 var1473))) ; Negate: Cond: i2 >= i1  
(define-const var1337 var750 (select var1641 var1967)) ; Statement: r11 = r0[i2] 
(define-const var3905 String (var750_getInitParamValue/433949004 var1337)) ; Statement: r12 = interfaceinvoke r11.<freemarker.ext.servlet.FreemarkerServlet$InitParamValueEnum: java.lang.String getInitParamValue()>() 
(assert true)
(define-const var3650 Bool (= var872 var3905)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r12) 
 ; Statement: if $z0 != 0 goto return r11 
(assert (not (= (ite var3650 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return r11 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-var750-1=([freemarker.ext.servlet.FreemarkerServlet$InitParamValueEnum[]], int), var750_getInitParamValue/433949004=([freemarker.ext.servlet.FreemarkerServlet$InitParamValueEnum], java.lang.String)}
; {var2900=freemarker.ext.servlet.FreemarkerServlet, var3401=r10, var872=r2, var2681=null_type, var750=freemarker.ext.servlet.FreemarkerServlet$InitParamValueEnum, var1641=r0, var1473=i1, var1967=i2, var1337=r11, var3905=r12, var3650=$z0}
; {freemarker.ext.servlet.FreemarkerServlet=var2900, r10=var3401, r2=var872, null_type=var2681, freemarker.ext.servlet.FreemarkerServlet$InitParamValueEnum=var750, r0=var1641, i1=var1473, i2=var1967, r11=var1337, r12=var3905, $z0=var3650}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r10 := @this: freemarker.ext.servlet.FreemarkerServlet;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: freemarker.ext.servlet.FreemarkerServlet$InitParamValueEnum[];	i1 = lengthof r0;	i2 = 0;	if i2 >= i1 goto $r1 = new java.lang.StringBuilder;	r11 = r0[i2];	r12 = interfaceinvoke r11.<freemarker.ext.servlet.FreemarkerServlet$InitParamValueEnum: java.lang.String getInitParamValue()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r12);	if $z0 != 0 goto return r11;	return r11
;block_num 4