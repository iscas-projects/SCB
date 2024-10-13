(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var230 0)
(declare-sort var1923 0)
(declare-sort var2543 0)
(declare-sort var34 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1923_getFieldType/-1881817274 (var1923) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun writeInteger/-383739395 (var230 var2543 Int) void)
(declare-fun var1923_getName/134002895 (var1923) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun writeBytes/771844277 (var230 var34 (Array Int Int)) void)
(declare-const null-var230 var230)
(declare-const null-var1923 var1923)
(declare-const var2543-INT2 var2543)
(declare-const var34-STRING_LENENC var34)
(declare-const var3298 var230) ; Statement: r0 := @parameter0: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var3298 null-var230)))
(declare-const var2998 var1923) ; Statement: r1 := @parameter1: com.mysql.cj.BindValue 
(assert (not (= var2998 null-var1923)))
(define-const var1240 var2543 var2543-INT2) ; Statement: $r2 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT2> 
(define-const var291 Int (var1923_getFieldType/-1881817274 var2998)) ; Statement: $i0 = interfaceinvoke r1.<com.mysql.cj.BindValue: int getFieldType()>() 
(define-const var2389 Int (cast-from-Int-to-Int var291)) ; Statement: $l1 = (long) $i0 
(assert true)
;(assert (writeInteger/-383739395 var3298 var1240 var2389)) ; Statement: virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r2, $l1) 

(declare-const var3298!1 var230)
(declare-const var1240!1 var2543)
(declare-const var2389!1 Int)
(define-const var3325 var34 var34-STRING_LENENC) ; Statement: $r3 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_LENENC> 
(define-const var2753 String (var1923_getName/134002895 var2998)) ; Statement: $r4 = interfaceinvoke r1.<com.mysql.cj.BindValue: java.lang.String getName()>() 
(assert true)
(define-const var3740 (Array Int Int) (getBytes/1068683673 var2753)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes()>() 
(assert true)
;(assert (writeBytes/771844277 var3298!1 var3325 var3740)) ; Statement: virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r3, $r5) 

(declare-const var3298!2 var230)
(declare-const var3325!1 var34)
(declare-const var3740!1 (Array Int Int))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1923_getFieldType/-1881817274=([com.mysql.cj.BindValue], int), cast-from-Int-to-Int=([int], long), writeInteger/-383739395=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, long], void), var1923_getName/134002895=([com.mysql.cj.BindValue], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), writeBytes/771844277=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, byte[]], void)}
; {var230=com.mysql.cj.protocol.a.NativePacketPayload, var3298=r0, var1923=com.mysql.cj.BindValue, var2998=r1, var2543=com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, var1240=$r2, var291=$i0, var2389=$l1, var34=com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, var3325=$r3, var2753=$r4, var3740=$r5}
; {com.mysql.cj.protocol.a.NativePacketPayload=var230, r0=var3298, com.mysql.cj.BindValue=var1923, r1=var2998, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType=var2543, $r2=var1240, $i0=var291, $l1=var2389, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType=var34, $r3=var3325, $r4=var2753, $r5=var3740}
;seq <java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 1}
;stmts r0 := @parameter0: com.mysql.cj.protocol.a.NativePacketPayload;	r1 := @parameter1: com.mysql.cj.BindValue;	$r2 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT2>;	$i0 = interfaceinvoke r1.<com.mysql.cj.BindValue: int getFieldType()>();	$l1 = (long) $i0;	virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r2, $l1);	$r3 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_LENENC>;	$r4 = interfaceinvoke r1.<com.mysql.cj.BindValue: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes()>();	virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r3, $r5);	return
;block_num 1