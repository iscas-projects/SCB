(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var838 0)
(declare-sort var2612 0)
(declare-sort var2194 0)
(declare-sort var3705 0)
(declare-sort var3340 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2612_builder/-311177978 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun headers/-1932151335 (var838) var2194)
(declare-fun var2194_entrySet/1101202697 (var2194) var3705)
(declare-fun var3705_iterator/1911472585 (var3705) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun bodyBytes/1888893415 (var838) (Array Int Int))
(declare-fun charset/-1932151335 (var838) var3340)
(declare-fun var2612_str/-1884441565 ((Array Int Int) var3340) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var838 var838)
(declare-const var2664 var838) ; Statement: r2 := @this: cn.hutool.http.HttpBase 
(assert (not (= var2664 null-var838)))
(define-const var1128 String var2612_builder/-311177978) ; Statement: r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>() 
(assert true)
(define-const var781 String (append/672562846 var1128 "Headers: ")) ; Statement: $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Headers: ") 
(declare-const var1128!1 String)
(assert (= var1128!1 (str.++ var1128 "Headers: ")))
(assert true)
;(assert (append/672562846 var781 "\r\n")) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\r\n") 
(declare-const var781!1 String)
(assert (= var781!1 (str.++ var781 "\r\n")))
(define-const var2169 var2194 (headers/-1932151335 var2664)) ; Statement: $r3 = r2.<cn.hutool.http.HttpBase: java.util.Map headers> 
(define-const var2761 var3705 (var2194_entrySet/1101202697 var2169)) ; Statement: $r4 = interfaceinvoke $r3.<java.util.Map: java.util.Set entrySet()>() 
(define-const var2643 Iterator (var3705_iterator/1911472585 var2761)) ; Statement: r5 = interfaceinvoke $r4.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var569 Bool (Iterator_hasNext/-1669924200 var2643)) ; Statement: $z0 = interfaceinvoke r5.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r6 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Body: ") 
(assert (= (ite var569 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3948 String (append/672562846 var1128!1 "Body: ")) ; Statement: $r6 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Body: ") 
(declare-const var1128!2 String)
(assert (= var1128!2 (str.++ var1128!1 "Body: ")))
(assert true)
;(assert (append/672562846 var3948 "\r\n")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\r\n") 
(declare-const var3948!1 String)
(assert (= var3948!1 (str.++ var3948 "\r\n")))
(assert true)
(define-const var553 String (append/672562846 var1128!2 "    ")) ; Statement: $r10 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ") 
(declare-const var1128!3 String)
(assert (= var1128!3 (str.++ var1128!2 "    ")))
(assert true)
(define-const var3872 (Array Int Int) (bodyBytes/1888893415 var2664)) ; Statement: $r8 = virtualinvoke r2.<cn.hutool.http.HttpBase: byte[] bodyBytes()>() 
(define-const var2415 var3340 (charset/-1932151335 var2664)) ; Statement: $r7 = r2.<cn.hutool.http.HttpBase: java.nio.charset.Charset charset> 
(define-const var2945 String (var2612_str/-1884441565 var3872 var2415)) ; Statement: $r9 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String str(byte[],java.nio.charset.Charset)>($r8, $r7) 
(assert true)
(define-const var1459 String (append/672562846 var553 var2945)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var553!1 String)
(assert (= var553!1 (str.++ var553 var2945)))
(assert true)
;(assert (append/672562846 var1459 "\r\n")) ; Statement: virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\r\n") 
(declare-const var1459!1 String)
(assert (= var1459!1 (str.++ var1459 "\r\n")))
(assert true)
(define-const var1509 String (toString/-2075883882 var1128!3)) ; Statement: $r12 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var2612_builder/-311177978=([], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), headers/-1932151335=([cn.hutool.http.HttpBase], java.util.Map), var2194_entrySet/1101202697=([java.util.Map], java.util.Set), var3705_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), bodyBytes/1888893415=([cn.hutool.http.HttpBase], byte[]), charset/-1932151335=([cn.hutool.http.HttpBase], java.nio.charset.Charset), var2612_str/-1884441565=([byte[], java.nio.charset.Charset], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var838=cn.hutool.http.HttpBase, var2664=r2, var2612=cn.hutool.core.util.StrUtil, var1128=r0, var781=$r1, var2194=java.util.Map, var2169=$r3, var3705=java.util.Set, var2761=$r4, var2643=r5, var569=$z0, var3948=$r6, var553=$r10, var3872=$r8, var3340=java.nio.charset.Charset, var2415=$r7, var2945=$r9, var1459=$r11, var1509=$r12}
; {cn.hutool.http.HttpBase=var838, r2=var2664, cn.hutool.core.util.StrUtil=var2612, r0=var1128, $r1=var781, java.util.Map=var2194, $r3=var2169, java.util.Set=var3705, $r4=var2761, r5=var2643, $z0=var569, $r6=var3948, $r10=var553, $r8=var3872, java.nio.charset.Charset=var3340, $r7=var2415, $r9=var2945, $r11=var1459, $r12=var1509}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: cn.hutool.http.HttpBase;	r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>();	$r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Headers: ");	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\r\n");	$r3 = r2.<cn.hutool.http.HttpBase: java.util.Map headers>;	$r4 = interfaceinvoke $r3.<java.util.Map: java.util.Set entrySet()>();	r5 = interfaceinvoke $r4.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r5.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r6 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Body: ");	$r6 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Body: ");	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\r\n");	$r10 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ");	$r8 = virtualinvoke r2.<cn.hutool.http.HttpBase: byte[] bodyBytes()>();	$r7 = r2.<cn.hutool.http.HttpBase: java.nio.charset.Charset charset>;	$r9 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String str(byte[],java.nio.charset.Charset)>($r8, $r7);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\r\n");	$r12 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 3