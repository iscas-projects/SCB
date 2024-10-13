(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1992 0)
(declare-sort var388 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun start/-1046112200 (var1992) Int)
(declare-fun end/-1046112200 (var1992) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1992 var1992)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2986 var1992) ; Statement: r1 := @this: org.apache.tomcat.util.buf.AbstractChunk 
(assert (not (= var2986 null-var1992)))
(declare-const var3576 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3576 null-String)))
(declare-const var3989 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3989 null-Int)))
(declare-const var2273 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var2273 null-Int)))
(declare-const var3552 Int) ; Statement: i4 := @parameter3: int 
(assert (not (= var3552 null-Int)))
(assert (not (and true (and (> (str.len var3576) var3989) (<= 0 var3989)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), start/-1046112200=([org.apache.tomcat.util.buf.AbstractChunk], int), end/-1046112200=([org.apache.tomcat.util.buf.AbstractChunk], int), cast-from-Int-to-Int=([int], int)}
; {var1992=org.apache.tomcat.util.buf.AbstractChunk, var2986=r1, var3576=r0, var388=null_type, var3989=i0, var2273=i2, var3552=i4, var3955=c1, var3099=i3, var292=$i5, var3406=i15, var3142=$i6, var3473=$i7, var2562=$i21}
; {org.apache.tomcat.util.buf.AbstractChunk=var1992, r1=var2986, r0=var3576, null_type=var388, i0=var3989, i2=var2273, i4=var3552, c1=var3955, i3=var3099, $i5=var292, i15=var3406, $i6=var3142, $i7=var3473, $i21=var2562}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: org.apache.tomcat.util.buf.AbstractChunk;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i2 := @parameter2: int;	i4 := @parameter3: int;	c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	i3 = i0 + i2;	$i5 = r1.<org.apache.tomcat.util.buf.AbstractChunk: int start>;	i15 = i4 + $i5;	$i6 = r1.<org.apache.tomcat.util.buf.AbstractChunk: int end>;	$i7 = $i6 - i2;	if i15 > $i7 goto $i21 = (int) -1;	$i21 = (int) -1;	return $i21
;block_num 3