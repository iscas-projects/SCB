(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var991 0)
(declare-sort var2563 0)
(declare-sort var2016 0)
(declare-sort var2494 0)
(declare-sort var1529 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2563_unicodeToASCII/-1806649872 (String) String)
(declare-fun toLowerCase/1946809429 (String var2016) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var2494_binarySearch/1265302445 ((Array Int var1529) var1529) Int)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var1529__ ((Array Int String)) (Array Int var1529))
(declare-fun cast-from-String-to-var1529 (String) var1529)
(declare-const null-String String)
(declare-const var2016-ENGLISH var2016)
(declare-const var2563-INFRASTRUCTURE_TLDS (Array Int String))
(declare-const var1504 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1504 null-String)))
(define-const var3565 String (var2563_unicodeToASCII/-1806649872 var1504)) ; Statement: r6 = staticinvoke <com.alibaba.fastjson2.schema.DomainValidator: java.lang.String unicodeToASCII(java.lang.String)>(r5) 
(define-const var2061 String (var2563_unicodeToASCII/-1806649872 var3565)) ; Statement: $r1 = staticinvoke <com.alibaba.fastjson2.schema.DomainValidator: java.lang.String unicodeToASCII(java.lang.String)>(r6) 
(define-const var1548 var2016 var2016-ENGLISH) ; Statement: $r0 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var3607 String (toLowerCase/1946809429 var2061 var1548)) ; Statement: r7 = virtualinvoke $r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r0) 
(assert true)
(define-const var1384 Bool (startsWith/-1785782452 var3607 ".")) ; Statement: $z0 = virtualinvoke r7.<java.lang.String: boolean startsWith(java.lang.String)>(".") 
 ; Statement: if $z0 == 0 goto $r2 = <com.alibaba.fastjson2.schema.DomainValidator: java.lang.String[] INFRASTRUCTURE_TLDS> 
(assert (= (ite var1384 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3924 (Array Int String) var2563-INFRASTRUCTURE_TLDS) ; Statement: $r2 = <com.alibaba.fastjson2.schema.DomainValidator: java.lang.String[] INFRASTRUCTURE_TLDS> 
(define-const var3724 Int (var2494_binarySearch/1265302445 (cast-from-__Array__Int__String__-to-__Array__Int__var1529__ var3924) (cast-from-String-to-var1529 var3607))) ; Statement: $i0 = staticinvoke <java.util.Arrays: int binarySearch(java.lang.Object[],java.lang.Object)>($r2, r7) 
 ; Statement: if $i0 >= 0 goto $z1 = 1 
(assert (>= var3724 0)) ; Cond: $i0 >= 0 
(define-const var3901 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2563_unicodeToASCII/-1806649872=([java.lang.String], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var2494_binarySearch/1265302445=([java.lang.Object[], java.lang.Object], int), cast-from-__Array__Int__String__-to-__Array__Int__var1529__=([java.lang.String[]], java.lang.Object[]), cast-from-String-to-var1529=([java.lang.String], java.lang.Object)}
; {var1504=r5, var991=null_type, var2563=com.alibaba.fastjson2.schema.DomainValidator, var3565=r6, var2061=$r1, var2016=java.util.Locale, var1548=$r0, var3607=r7, var1384=$z0, var3924=$r2, var2494=java.util.Arrays, var1529=java.lang.Object, var3724=$i0, var3901=$z1}
; {r5=var1504, null_type=var991, com.alibaba.fastjson2.schema.DomainValidator=var2563, r6=var3565, $r1=var2061, java.util.Locale=var2016, $r0=var1548, r7=var3607, $z0=var1384, $r2=var3924, java.util.Arrays=var2494, java.lang.Object=var1529, $i0=var3724, $z1=var3901}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r5 := @parameter0: java.lang.String;	r6 = staticinvoke <com.alibaba.fastjson2.schema.DomainValidator: java.lang.String unicodeToASCII(java.lang.String)>(r5);	$r1 = staticinvoke <com.alibaba.fastjson2.schema.DomainValidator: java.lang.String unicodeToASCII(java.lang.String)>(r6);	$r0 = <java.util.Locale: java.util.Locale ENGLISH>;	r7 = virtualinvoke $r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r0);	$z0 = virtualinvoke r7.<java.lang.String: boolean startsWith(java.lang.String)>(".");	if $z0 == 0 goto $r2 = <com.alibaba.fastjson2.schema.DomainValidator: java.lang.String[] INFRASTRUCTURE_TLDS>;	$r2 = <com.alibaba.fastjson2.schema.DomainValidator: java.lang.String[] INFRASTRUCTURE_TLDS>;	$i0 = staticinvoke <java.util.Arrays: int binarySearch(java.lang.Object[],java.lang.Object)>($r2, r7);	if $i0 >= 0 goto $z1 = 1;	$z1 = 1;	goto [?= return $z1];	return $z1
;block_num 4