(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2542 0)
(declare-sort var413 0)
(declare-sort var1139 0)
(declare-sort var1378 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1139_isArray/-1773279845 (var413) Bool)
(declare-fun var1139_contains/327682224 ((Array Int var413) var413) Bool)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var413__ ((Array Int String)) (Array Int var413))
(declare-fun cast-from-String-to-var413 (String) var413)
(declare-fun toString/-522406933 (var413) String)
(declare-fun var1378_escapeXml/90099781 (String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-String String)
(declare-const null-var413 var413)
(declare-const var2739 (Array Int String)) ; Statement: r0 := @parameter0: java.lang.String[] 
(assert (not (= var2739 null-__Array__Int__String__)))
(declare-const var1768 String) ; Statement: r2 := @parameter1: java.lang.StringBuilder 
(assert (not (= var1768 null-String)))
(declare-const var3656 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var3656 null-String)))
(declare-const var3054 var413) ; Statement: r16 := @parameter3: java.lang.Object 
(assert (not (= var3054 null-var413)))
(define-const var924 Bool (var1139_isArray/-1773279845 var3054)) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isArray(java.lang.Object)>(r16) 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean contains(java.lang.Object[],java.lang.Object)>(r0, r1) 
(assert (= (ite var924 1 0) 0)) ; Cond: $z0 == 0 
(define-const var303 Bool (var1139_contains/327682224 (cast-from-__Array__Int__String__-to-__Array__Int__var413__ var2739) (cast-from-String-to-var413 var3656))) ; Statement: $z1 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean contains(java.lang.Object[],java.lang.Object)>(r0, r1) 
 ; Statement: if $z1 == 0 goto $z2 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isEmptyIfStr(java.lang.Object)>(r16) 
(assert (not (= (ite var303 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3531 Bool false) ; Statement: $z6 = r16 instanceof cn.hutool.json.JSONArray 
 ; Statement: if $z6 == 0 goto $r9 = virtualinvoke r16.<java.lang.Object: java.lang.String toString()>() 
(assert (= (ite var3531 1 0) 0)) ; Cond: $z6 == 0 
(assert true)
(define-const var469 String (toString/-522406933 var3054)) ; Statement: $r9 = virtualinvoke r16.<java.lang.Object: java.lang.String toString()>() 
(define-const var2576 String (var1378_escapeXml/90099781 (cast-from-String-to-String var469))) ; Statement: $r10 = staticinvoke <cn.hutool.core.util.EscapeUtil: java.lang.String escapeXml(java.lang.CharSequence)>($r9) 
(assert true)
;(assert (append/672562846 var1768 var2576)) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1768!1 String)
(assert (= var1768!1 (str.++ var1768 var2576)))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1139_isArray/-1773279845=([java.lang.Object], boolean), var1139_contains/327682224=([java.lang.Object[], java.lang.Object], boolean), cast-from-__Array__Int__String__-to-__Array__Int__var413__=([java.lang.String[]], java.lang.Object[]), cast-from-String-to-var413=([java.lang.String], java.lang.Object), toString/-522406933=([java.lang.Object], java.lang.String), var1378_escapeXml/90099781=([java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2739=r0, var1768=r2, var3656=r1, var2542=null_type, var413=java.lang.Object, var3054=r16, var1139=cn.hutool.core.util.ArrayUtil, var924=$z0, var303=$z1, var3531=$z6, var469=$r9, var1378=cn.hutool.core.util.EscapeUtil, var2576=$r10}
; {r0=var2739, r2=var1768, r1=var3656, null_type=var2542, java.lang.Object=var413, r16=var3054, cn.hutool.core.util.ArrayUtil=var1139, $z0=var924, $z1=var303, $z6=var3531, $r9=var469, cn.hutool.core.util.EscapeUtil=var1378, $r10=var2576}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String[];	r2 := @parameter1: java.lang.StringBuilder;	r1 := @parameter2: java.lang.String;	r16 := @parameter3: java.lang.Object;	$z0 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isArray(java.lang.Object)>(r16);	if $z0 == 0 goto $z1 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean contains(java.lang.Object[],java.lang.Object)>(r0, r1);	$z1 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean contains(java.lang.Object[],java.lang.Object)>(r0, r1);	if $z1 == 0 goto $z2 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isEmptyIfStr(java.lang.Object)>(r16);	$z6 = r16 instanceof cn.hutool.json.JSONArray;	if $z6 == 0 goto $r9 = virtualinvoke r16.<java.lang.Object: java.lang.String toString()>();	$r9 = virtualinvoke r16.<java.lang.Object: java.lang.String toString()>();	$r10 = staticinvoke <cn.hutool.core.util.EscapeUtil: java.lang.String escapeXml(java.lang.CharSequence)>($r9);	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	goto [?= return];	return
;block_num 5