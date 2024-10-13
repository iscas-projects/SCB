(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var329 0)
(declare-sort var2798 0)
(declare-sort var2955 0)
(declare-sort var3055 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBytes/-163691139 (String var2798) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var3055_isEqual/694881775 ((Array Int Int) Int Int (Array Int Int) Int Int Bool) Bool)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var2955-US_ASCII var2798)
(declare-const var1154 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1154 null-String)))
(declare-const var470 (Array Int Int)) ; Statement: r3 := @parameter1: byte[] 
(assert (not (= var470 null-__Array__Int__Int__)))
(declare-const var3886 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3886 null-Int)))
(declare-const var1149 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var1149 null-Int)))
(define-const var2442 var2798 var2955-US_ASCII) ; Statement: $r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII> 
(assert true)
(define-const var1218 (Array Int Int) (getBytes/-163691139 var1154 var2442)) ; Statement: r2 = virtualinvoke r0.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r1) 
(define-const var1696 Int (getLength-Arr-Int-1 var1218)) ; Statement: $i2 = lengthof r2 
(define-const var863 Bool (var3055_isEqual/694881775 var1218 0 var1696 var470 var3886 var1149 (ite (= 1 0) true false))) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: boolean isEqual(byte[],int,int,byte[],int,int,boolean)>(r2, 0, $i2, r3, i0, i1, 0) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), getLength-Arr-Int-1=([byte[]], int), var3055_isEqual/694881775=([byte[], int, int, byte[], int, int, boolean], boolean)}
; {var1154=r0, var329=null_type, var470=r3, var3886=i0, var1149=i1, var2798=java.nio.charset.Charset, var2955=java.nio.charset.StandardCharsets, var2442=$r1, var1218=r2, var1696=$i2, var3055=com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry, var863=$z0}
; {r0=var1154, null_type=var329, r3=var470, i0=var3886, i1=var1149, java.nio.charset.Charset=var2798, java.nio.charset.StandardCharsets=var2955, $r1=var2442, r2=var1218, $i2=var1696, com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry=var3055, $z0=var863}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r3 := @parameter1: byte[];	i0 := @parameter2: int;	i1 := @parameter3: int;	$r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII>;	r2 = virtualinvoke r0.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r1);	$i2 = lengthof r2;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: boolean isEqual(byte[],int,int,byte[],int,int,boolean)>(r2, 0, $i2, r3, i0, i1, 0);	return $z0
;block_num 1