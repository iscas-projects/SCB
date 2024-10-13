(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2569 0)
(declare-sort var291 0)
(declare-sort var2221 0)
(declare-sort var642 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun providerMethod/1977133390 (var2569) var2221)
(declare-fun getModifiers/890868286 (var2221) Int)
(declare-fun var642_isStatic/379715466 (Int) Bool)
(declare-fun invoke/-1759464968 (var2221 var291 (Array Int var291)) var291)
(declare-fun cast-from-var291-to-String (var291) String)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-var2569 var2569)
(declare-const null-__Array__Int__var291__ (Array Int var291))
(declare-const null-var291 var291)
(declare-const null-String String)
(declare-const var1713 var2569) ; Statement: r0 := @this: org.apache.ibatis.builder.annotation.ProviderSqlSource 
(assert (not (= var1713 null-var2569)))
(declare-const var3375 (Array Int var291)) ; Statement: r2 := @parameter0: java.lang.Object[] 
(assert (not (= var3375 null-__Array__Int__var291__)))
(define-const var2122 var291 null-var291) ; Statement: r10 = null 
(define-const var1518 var2221 (providerMethod/1977133390 var1713)) ; Statement: $r1 = r0.<org.apache.ibatis.builder.'annotation'.ProviderSqlSource: java.lang.reflect.Method providerMethod> 
(assert true)
(define-const var53 Int (getModifiers/890868286 var1518)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.reflect.Method: int getModifiers()>() 
(define-const var1449 Bool (var642_isStatic/379715466 var53)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isStatic(int)>($i0) 
 ; Statement: if $z0 != 0 goto $r3 = r0.<org.apache.ibatis.builder.'annotation'.ProviderSqlSource: java.lang.reflect.Method providerMethod> 
(assert (not (= (ite var1449 1 0) 0))) ; Cond: $z0 != 0 
(define-const var742 var2221 (providerMethod/1977133390 var1713)) ; Statement: $r3 = r0.<org.apache.ibatis.builder.'annotation'.ProviderSqlSource: java.lang.reflect.Method providerMethod> 
(assert true)
(define-const var1238 var291 (invoke/-1759464968 var742 var2122 var3375)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>(r10, r2) 
(define-const var2071 String (cast-from-var291-to-String var1238)) ; Statement: $r9 = (java.lang.CharSequence) $r4 
 ; Statement: if $r9 == null goto $r11 = null 
(assert (not (= var2071 null-String))) ; Negate: Cond: $r9 == null  
(define-const var1274 String (String_toString/-1426662429 var2071)) ; Statement: $r11 = interfaceinvoke $r9.<java.lang.CharSequence: java.lang.String toString()>() 
 ; Statement: goto [?= return $r11] 
(assert true) ; Non Conditional
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {providerMethod/1977133390=([org.apache.ibatis.builder.annotation.ProviderSqlSource], java.lang.reflect.Method), getModifiers/890868286=([java.lang.reflect.Method], int), var642_isStatic/379715466=([int], boolean), invoke/-1759464968=([java.lang.reflect.Method, java.lang.Object, java.lang.Object[]], java.lang.Object), cast-from-var291-to-String=([java.lang.Object], java.lang.CharSequence), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var2569=org.apache.ibatis.builder.annotation.ProviderSqlSource, var1713=r0, var291=java.lang.Object, var3375=r2, var2122=r10, var2221=java.lang.reflect.Method, var1518=$r1, var53=$i0, var642=java.lang.reflect.Modifier, var1449=$z0, var742=$r3, var1238=$r4, var2071=$r9, var1274=$r11}
; {org.apache.ibatis.builder.annotation.ProviderSqlSource=var2569, r0=var1713, java.lang.Object=var291, r2=var3375, r10=var2122, java.lang.reflect.Method=var2221, $r1=var1518, $i0=var53, java.lang.reflect.Modifier=var642, $z0=var1449, $r3=var742, $r4=var1238, $r9=var2071, $r11=var1274}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.builder.annotation.ProviderSqlSource;	r2 := @parameter0: java.lang.Object[];	r10 = null;	$r1 = r0.<org.apache.ibatis.builder.'annotation'.ProviderSqlSource: java.lang.reflect.Method providerMethod>;	$i0 = virtualinvoke $r1.<java.lang.reflect.Method: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isStatic(int)>($i0);	if $z0 != 0 goto $r3 = r0.<org.apache.ibatis.builder.'annotation'.ProviderSqlSource: java.lang.reflect.Method providerMethod>;	$r3 = r0.<org.apache.ibatis.builder.'annotation'.ProviderSqlSource: java.lang.reflect.Method providerMethod>;	$r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>(r10, r2);	$r9 = (java.lang.CharSequence) $r4;	if $r9 == null goto $r11 = null;	$r11 = interfaceinvoke $r9.<java.lang.CharSequence: java.lang.String toString()>();	goto [?= return $r11];	return $r11
;block_num 4