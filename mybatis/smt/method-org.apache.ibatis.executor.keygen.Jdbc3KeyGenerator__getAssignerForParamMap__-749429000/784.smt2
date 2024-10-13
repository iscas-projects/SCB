(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1853 0)
(declare-sort var201 0)
(declare-sort var529 0)
(declare-sort var3504 0)
(declare-sort var1778 0)
(declare-sort var1161 0)
(declare-sort var2460 0)
(declare-sort var507 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3504_keySet/-712633290 (var3504) var1161)
(declare-fun var1161_contains/1636690605 (var1161 var2460) Bool)
(declare-fun cast-from-String-to-var2460 (String) var2460)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getAssignerForSingleParam/866889749 (var1853 var201 var529 Int var3504 String Bool) var507)
(declare-const null-var1853 var1853)
(declare-const null-var201 var201)
(declare-const null-var529 var529)
(declare-const null-Int Int)
(declare-const null-var3504 var3504)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-Bool Bool)
(declare-const var2355 var1853) ; Statement: r15 := @this: org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator 
(assert (not (= var2355 null-var1853)))
(declare-const var2501 var201) ; Statement: r16 := @parameter0: org.apache.ibatis.session.Configuration 
(assert (not (= var2501 null-var201)))
(declare-const var933 var529) ; Statement: r17 := @parameter1: java.sql.ResultSetMetaData 
(assert (not (= var933 null-var529)))
(declare-const var1492 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1492 null-Int)))
(declare-const var2826 var3504) ; Statement: r0 := @parameter3: java.util.Map 
(assert (not (= var2826 null-var3504)))
(declare-const var1017 String) ; Statement: r2 := @parameter4: java.lang.String 
(assert (not (= var1017 null-String)))
(declare-const var3955 (Array Int String)) ; Statement: r8 := @parameter5: java.lang.String[] 
(assert (not (= var3955 null-__Array__Int__String__)))
(declare-const var3430 Bool) ; Statement: z2 := @parameter6: boolean 
(assert (not (= var3430 null-Bool)))
(define-const var2708 var1161 (var3504_keySet/-712633290 var2826)) ; Statement: r1 = interfaceinvoke r0.<java.util.Map: java.util.Set keySet()>() 
(define-const var3906 Bool (var1161_contains/1636690605 var2708 (cast-from-String-to-var2460 "param2"))) ; Statement: $z0 = interfaceinvoke r1.<java.util.Set: boolean contains(java.lang.Object)>("param2") 
 ; Statement: if $z0 != 0 goto $z5 = 0 
(assert (not (= (ite var3906 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1720 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(define-const var2342 Bool (ite (= 1 0) true false)) ; Statement: $z4 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1027 Int (indexOf/-1037706067 var1017 46)) ; Statement: $i2 = virtualinvoke r2.<java.lang.String: int indexOf(int)>(46) 
(define-const var1910 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if $i2 != $i4 goto r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, $i2) 
(assert (not (not (= var1027 var1910)))) ; Negate: Cond: $i2 != $i4  
 ; Statement: if $z4 == 0 goto $r33 = new org.apache.ibatis.executor.ExecutorException 
(assert (not (= (ite var2342 1 0) 0))) ; Negate: Cond: $z4 == 0  
(assert true)
(define-const var754 var507 (getAssignerForSingleParam/866889749 var2355 var2501 var933 var1492 var2826 var1017 var3430)) ; Statement: $r30 = specialinvoke r15.<org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator: java.util.Map$Entry getAssignerForSingleParam(org.apache.ibatis.session.Configuration,java.sql.ResultSetMetaData,int,java.util.Map,java.lang.String,boolean)>(r16, r17, i0, r0, r2, z2) 
 ; Statement: return $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {var3504_keySet/-712633290=([java.util.Map], java.util.Set), var1161_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var2460=([java.lang.String], java.lang.Object), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), getAssignerForSingleParam/866889749=([org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator, org.apache.ibatis.session.Configuration, java.sql.ResultSetMetaData, int, java.util.Map, java.lang.String, boolean], java.util.Map$Entry)}
; {var1853=org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator, var2355=r15, var201=org.apache.ibatis.session.Configuration, var2501=r16, var529=java.sql.ResultSetMetaData, var933=r17, var1492=i0, var3504=java.util.Map, var2826=r0, var1017=r2, var1778=null_type, var3955=r8, var3430=z2, var1161=java.util.Set, var2708=r1, var2460=java.lang.Object, var3906=$z0, var1720=$z5, var2342=$z4, var1027=$i2, var1910=$i4, var507=java.util.Map$Entry, var754=$r30}
; {org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator=var1853, r15=var2355, org.apache.ibatis.session.Configuration=var201, r16=var2501, java.sql.ResultSetMetaData=var529, r17=var933, i0=var1492, java.util.Map=var3504, r0=var2826, r2=var1017, null_type=var1778, r8=var3955, z2=var3430, java.util.Set=var1161, r1=var2708, java.lang.Object=var2460, $z0=var3906, $z5=var1720, $z4=var2342, $i2=var1027, $i4=var1910, java.util.Map$Entry=var507, $r30=var754}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r15 := @this: org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator;	r16 := @parameter0: org.apache.ibatis.session.Configuration;	r17 := @parameter1: java.sql.ResultSetMetaData;	i0 := @parameter2: int;	r0 := @parameter3: java.util.Map;	r2 := @parameter4: java.lang.String;	r8 := @parameter5: java.lang.String[];	z2 := @parameter6: boolean;	r1 = interfaceinvoke r0.<java.util.Map: java.util.Set keySet()>();	$z0 = interfaceinvoke r1.<java.util.Set: boolean contains(java.lang.Object)>("param2");	if $z0 != 0 goto $z5 = 0;	$z5 = 0;	$z4 = 0;	$i2 = virtualinvoke r2.<java.lang.String: int indexOf(int)>(46);	$i4 = (int) -1;	if $i2 != $i4 goto r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, $i2);	if $z4 == 0 goto $r33 = new org.apache.ibatis.executor.ExecutorException;	$r30 = specialinvoke r15.<org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator: java.util.Map$Entry getAssignerForSingleParam(org.apache.ibatis.session.Configuration,java.sql.ResultSetMetaData,int,java.util.Map,java.lang.String,boolean)>(r16, r17, i0, r0, r2, z2);	return $r30
;block_num 5