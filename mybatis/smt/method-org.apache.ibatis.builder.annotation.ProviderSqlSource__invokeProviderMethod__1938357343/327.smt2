(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2773 0)
(declare-sort var2479 0)
(declare-sort var1858 0)
(declare-sort var484 0)
(declare-sort var3287 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun providerMethod/1977133390 (var2773) var1858)
(declare-fun getModifiers/890868286 (var1858) Int)
(declare-fun var484_isStatic/379715466 (Int) Bool)
(declare-fun invoke/-1759464968 (var1858 var2479 (Array Int var2479)) var2479)
(declare-fun cast-from-var2479-to-String (var2479) String)
(declare-const null-var2773 var2773)
(declare-const null-__Array__Int__var2479__ (Array Int var2479))
(declare-const null-var2479 var2479)
(declare-const null-String String)
(declare-const var2917 var2773) ; Statement: r0 := @this: org.apache.ibatis.builder.annotation.ProviderSqlSource 
(assert (not (= var2917 null-var2773)))
(declare-const var2393 (Array Int var2479)) ; Statement: r2 := @parameter0: java.lang.Object[] 
(assert (not (= var2393 null-__Array__Int__var2479__)))
(define-const var56 var2479 null-var2479) ; Statement: r10 = null 
(define-const var2410 var1858 (providerMethod/1977133390 var2917)) ; Statement: $r1 = r0.<org.apache.ibatis.builder.'annotation'.ProviderSqlSource: java.lang.reflect.Method providerMethod> 
(assert true)
(define-const var2535 Int (getModifiers/890868286 var2410)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.reflect.Method: int getModifiers()>() 
(define-const var2707 Bool (var484_isStatic/379715466 var2535)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isStatic(int)>($i0) 
 ; Statement: if $z0 != 0 goto $r3 = r0.<org.apache.ibatis.builder.'annotation'.ProviderSqlSource: java.lang.reflect.Method providerMethod> 
(assert (not (= (ite var2707 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2824 var1858 (providerMethod/1977133390 var2917)) ; Statement: $r3 = r0.<org.apache.ibatis.builder.'annotation'.ProviderSqlSource: java.lang.reflect.Method providerMethod> 
(assert true)
(define-const var2070 var2479 (invoke/-1759464968 var2824 var56 var2393)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>(r10, r2) 
(define-const var403 String (cast-from-var2479-to-String var2070)) ; Statement: $r9 = (java.lang.CharSequence) $r4 
 ; Statement: if $r9 == null goto $r11 = null 
(assert (= var403 null-String)) ; Cond: $r9 == null 
(define-const var2940 String null-String) ; Statement: $r11 = null 
(assert true) ; Non Conditional
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {providerMethod/1977133390=([org.apache.ibatis.builder.annotation.ProviderSqlSource], java.lang.reflect.Method), getModifiers/890868286=([java.lang.reflect.Method], int), var484_isStatic/379715466=([int], boolean), invoke/-1759464968=([java.lang.reflect.Method, java.lang.Object, java.lang.Object[]], java.lang.Object), cast-from-var2479-to-String=([java.lang.Object], java.lang.CharSequence)}
; {var2773=org.apache.ibatis.builder.annotation.ProviderSqlSource, var2917=r0, var2479=java.lang.Object, var2393=r2, var56=r10, var1858=java.lang.reflect.Method, var2410=$r1, var2535=$i0, var484=java.lang.reflect.Modifier, var2707=$z0, var2824=$r3, var2070=$r4, var403=$r9, var3287=null_type, var2940=$r11}
; {org.apache.ibatis.builder.annotation.ProviderSqlSource=var2773, r0=var2917, java.lang.Object=var2479, r2=var2393, r10=var56, java.lang.reflect.Method=var1858, $r1=var2410, $i0=var2535, java.lang.reflect.Modifier=var484, $z0=var2707, $r3=var2824, $r4=var2070, $r9=var403, null_type=var3287, $r11=var2940}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.builder.annotation.ProviderSqlSource;	r2 := @parameter0: java.lang.Object[];	r10 = null;	$r1 = r0.<org.apache.ibatis.builder.'annotation'.ProviderSqlSource: java.lang.reflect.Method providerMethod>;	$i0 = virtualinvoke $r1.<java.lang.reflect.Method: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isStatic(int)>($i0);	if $z0 != 0 goto $r3 = r0.<org.apache.ibatis.builder.'annotation'.ProviderSqlSource: java.lang.reflect.Method providerMethod>;	$r3 = r0.<org.apache.ibatis.builder.'annotation'.ProviderSqlSource: java.lang.reflect.Method providerMethod>;	$r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>(r10, r2);	$r9 = (java.lang.CharSequence) $r4;	if $r9 == null goto $r11 = null;	$r11 = null;	return $r11
;block_num 4