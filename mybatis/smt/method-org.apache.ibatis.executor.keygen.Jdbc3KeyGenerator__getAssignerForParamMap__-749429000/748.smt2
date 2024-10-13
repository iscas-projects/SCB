(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1125 0)
(declare-sort var3734 0)
(declare-sort var814 0)
(declare-sort var2223 0)
(declare-sort var3832 0)
(declare-sort var2879 0)
(declare-sort var2687 0)
(declare-sort var629 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2223_keySet/-712633290 (var2223) var2879)
(declare-fun var2879_contains/1636690605 (var2879 var2687) Bool)
(declare-fun cast-from-String-to-var2687 (String) var2687)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getAssignerForSingleParam/866889749 (var1125 var3734 var814 Int var2223 String Bool) var629)
(declare-const null-var1125 var1125)
(declare-const null-var3734 var3734)
(declare-const null-var814 var814)
(declare-const null-Int Int)
(declare-const null-var2223 var2223)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-Bool Bool)
(declare-const var1967 var1125) ; Statement: r15 := @this: org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator 
(assert (not (= var1967 null-var1125)))
(declare-const var2776 var3734) ; Statement: r16 := @parameter0: org.apache.ibatis.session.Configuration 
(assert (not (= var2776 null-var3734)))
(declare-const var2462 var814) ; Statement: r17 := @parameter1: java.sql.ResultSetMetaData 
(assert (not (= var2462 null-var814)))
(declare-const var2474 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2474 null-Int)))
(declare-const var627 var2223) ; Statement: r0 := @parameter3: java.util.Map 
(assert (not (= var627 null-var2223)))
(declare-const var1927 String) ; Statement: r2 := @parameter4: java.lang.String 
(assert (not (= var1927 null-String)))
(declare-const var343 (Array Int String)) ; Statement: r8 := @parameter5: java.lang.String[] 
(assert (not (= var343 null-__Array__Int__String__)))
(declare-const var3603 Bool) ; Statement: z2 := @parameter6: boolean 
(assert (not (= var3603 null-Bool)))
(define-const var1636 var2879 (var2223_keySet/-712633290 var627)) ; Statement: r1 = interfaceinvoke r0.<java.util.Map: java.util.Set keySet()>() 
(define-const var3521 Bool (var2879_contains/1636690605 var1636 (cast-from-String-to-var2687 "param2"))) ; Statement: $z0 = interfaceinvoke r1.<java.util.Set: boolean contains(java.lang.Object)>("param2") 
 ; Statement: if $z0 != 0 goto $z5 = 0 
(assert (not (not (= (ite var3521 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2938 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
(define-const var3204 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= $i2 = virtualinvoke r2.<java.lang.String: int indexOf(int)>(46)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2581 Int (indexOf/-1037706067 var1927 46)) ; Statement: $i2 = virtualinvoke r2.<java.lang.String: int indexOf(int)>(46) 
(define-const var502 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if $i2 != $i4 goto r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, $i2) 
(assert (not (not (= var2581 var502)))) ; Negate: Cond: $i2 != $i4  
 ; Statement: if $z4 == 0 goto $r33 = new org.apache.ibatis.executor.ExecutorException 
(assert (not (= (ite var3204 1 0) 0))) ; Negate: Cond: $z4 == 0  
(assert true)
(define-const var13 var629 (getAssignerForSingleParam/866889749 var1967 var2776 var2462 var2474 var627 var1927 var3603)) ; Statement: $r30 = specialinvoke r15.<org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator: java.util.Map$Entry getAssignerForSingleParam(org.apache.ibatis.session.Configuration,java.sql.ResultSetMetaData,int,java.util.Map,java.lang.String,boolean)>(r16, r17, i0, r0, r2, z2) 
 ; Statement: return $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {var2223_keySet/-712633290=([java.util.Map], java.util.Set), var2879_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var2687=([java.lang.String], java.lang.Object), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), getAssignerForSingleParam/866889749=([org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator, org.apache.ibatis.session.Configuration, java.sql.ResultSetMetaData, int, java.util.Map, java.lang.String, boolean], java.util.Map$Entry)}
; {var1125=org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator, var1967=r15, var3734=org.apache.ibatis.session.Configuration, var2776=r16, var814=java.sql.ResultSetMetaData, var2462=r17, var2474=i0, var2223=java.util.Map, var627=r0, var1927=r2, var3832=null_type, var343=r8, var3603=z2, var2879=java.util.Set, var1636=r1, var2687=java.lang.Object, var3521=$z0, var2938=$z5, var3204=$z4, var2581=$i2, var502=$i4, var629=java.util.Map$Entry, var13=$r30}
; {org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator=var1125, r15=var1967, org.apache.ibatis.session.Configuration=var3734, r16=var2776, java.sql.ResultSetMetaData=var814, r17=var2462, i0=var2474, java.util.Map=var2223, r0=var627, r2=var1927, null_type=var3832, r8=var343, z2=var3603, java.util.Set=var2879, r1=var1636, java.lang.Object=var2687, $z0=var3521, $z5=var2938, $z4=var3204, $i2=var2581, $i4=var502, java.util.Map$Entry=var629, $r30=var13}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r15 := @this: org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator;	r16 := @parameter0: org.apache.ibatis.session.Configuration;	r17 := @parameter1: java.sql.ResultSetMetaData;	i0 := @parameter2: int;	r0 := @parameter3: java.util.Map;	r2 := @parameter4: java.lang.String;	r8 := @parameter5: java.lang.String[];	z2 := @parameter6: boolean;	r1 = interfaceinvoke r0.<java.util.Map: java.util.Set keySet()>();	$z0 = interfaceinvoke r1.<java.util.Set: boolean contains(java.lang.Object)>("param2");	if $z0 != 0 goto $z5 = 0;	$z5 = 1;	$z4 = 1;	goto [?= $i2 = virtualinvoke r2.<java.lang.String: int indexOf(int)>(46)];	$i2 = virtualinvoke r2.<java.lang.String: int indexOf(int)>(46);	$i4 = (int) -1;	if $i2 != $i4 goto r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, $i2);	if $z4 == 0 goto $r33 = new org.apache.ibatis.executor.ExecutorException;	$r30 = specialinvoke r15.<org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator: java.util.Map$Entry getAssignerForSingleParam(org.apache.ibatis.session.Configuration,java.sql.ResultSetMetaData,int,java.util.Map,java.lang.String,boolean)>(r16, r17, i0, r0, r2, z2);	return $r30
;block_num 5