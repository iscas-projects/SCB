(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1702 0)
(declare-sort var247 0)
(declare-sort var41 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClassName/-640084290 (var247) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun length/-171891354 (String) Int)
(declare-const null-var1702 var1702)
(declare-const null-var247 var247)
(declare-const null-String String)
(declare-const var510 var1702) ; Statement: r11 := @this: com.alibaba.fastjson2.internal.asm.TypeCollector 
(assert (not (= var510 null-var1702)))
(declare-const var2219 var247) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.internal.asm.Type 
(assert (not (= var2219 null-var247)))
(declare-const var3799 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3799 null-String)))
(assert true)
(define-const var656 String (getClassName/-640084290 var2219)) ; Statement: r12 = virtualinvoke r0.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String getClassName()>() 
(define-const var3001 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3001)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3001!1 String)
(assert (= var3001!1 ""))
(assert true) ; Non Conditional
(assert true)
(define-const var1146 Bool (endsWith/985337093 var656 "[]")) ; Statement: $z0 = virtualinvoke r12.<java.lang.String: boolean endsWith(java.lang.String)>("[]") 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
(assert (= (ite var1146 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3048 Int (length/-171891354 var3001!1)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 == 0 goto $z2 = virtualinvoke r12.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
(assert (= var3048 0)) ; Cond: $i0 == 0 
(assert true)
(define-const var3501 Bool (= var656 var3799)) ; Statement: $z2 = virtualinvoke r12.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {getClassName/-640084290=([com.alibaba.fastjson2.internal.asm.Type], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), endsWith/985337093=([java.lang.String, java.lang.String], boolean), length/-171891354=([java.lang.StringBuilder], int)}
; {var1702=com.alibaba.fastjson2.internal.asm.TypeCollector, var510=r11, var247=com.alibaba.fastjson2.internal.asm.Type, var2219=r0, var3799=r2, var41=null_type, var656=r12, var3001=$r1, var1146=$z0, var3048=$i0, var3501=$z2}
; {com.alibaba.fastjson2.internal.asm.TypeCollector=var1702, r11=var510, com.alibaba.fastjson2.internal.asm.Type=var247, r0=var2219, r2=var3799, null_type=var41, r12=var656, $r1=var3001, $z0=var1146, $i0=var3048, $z2=var3501}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.StringBuilder: int length()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r11 := @this: com.alibaba.fastjson2.internal.asm.TypeCollector;	r0 := @parameter0: com.alibaba.fastjson2.internal.asm.Type;	r2 := @parameter1: java.lang.String;	r12 = virtualinvoke r0.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String getClassName()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$z0 = virtualinvoke r12.<java.lang.String: boolean endsWith(java.lang.String)>("[]");	if $z0 == 0 goto $i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	$i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	if $i0 == 0 goto $z2 = virtualinvoke r12.<java.lang.String: boolean equals(java.lang.Object)>(r2);	$z2 = virtualinvoke r12.<java.lang.String: boolean equals(java.lang.Object)>(r2);	return $z2
;block_num 4