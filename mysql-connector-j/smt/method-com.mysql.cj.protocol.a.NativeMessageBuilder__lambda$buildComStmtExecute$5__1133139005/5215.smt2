(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2356 0)
(declare-sort var2540 0)
(declare-sort var706 0)
(declare-sort var248 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2540_getFieldType/-1881817274 (var2540) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun writeInteger/-383739395 (var2356 var706 Int) void)
(declare-fun var2540_getName/134002895 (var2540) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun writeBytes/771844277 (var2356 var248 (Array Int Int)) void)
(declare-const null-var2356 var2356)
(declare-const null-var2540 var2540)
(declare-const var706-INT2 var706)
(declare-const var248-STRING_LENENC var248)
(declare-const var3677 var2356) ; Statement: r0 := @parameter0: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var3677 null-var2356)))
(declare-const var907 var2540) ; Statement: r1 := @parameter1: com.mysql.cj.BindValue 
(assert (not (= var907 null-var2540)))
(define-const var1606 var706 var706-INT2) ; Statement: $r2 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT2> 
(define-const var3918 Int (var2540_getFieldType/-1881817274 var907)) ; Statement: $i0 = interfaceinvoke r1.<com.mysql.cj.BindValue: int getFieldType()>() 
(define-const var291 Int (cast-from-Int-to-Int var3918)) ; Statement: $l1 = (long) $i0 
(assert true)
;(assert (writeInteger/-383739395 var3677 var1606 var291)) ; Statement: virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r2, $l1) 

(declare-const var3677!1 var2356)
(declare-const var1606!1 var706)
(declare-const var291!1 Int)
(define-const var2925 var248 var248-STRING_LENENC) ; Statement: $r3 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_LENENC> 
(define-const var1565 String (var2540_getName/134002895 var907)) ; Statement: $r4 = interfaceinvoke r1.<com.mysql.cj.BindValue: java.lang.String getName()>() 
(assert true)
(define-const var1706 (Array Int Int) (getBytes/1068683673 var1565)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes()>() 
(assert true)
;(assert (writeBytes/771844277 var3677!1 var2925 var1706)) ; Statement: virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r3, $r5) 

(declare-const var3677!2 var2356)
(declare-const var2925!1 var248)
(declare-const var1706!1 (Array Int Int))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2540_getFieldType/-1881817274=([com.mysql.cj.BindValue], int), cast-from-Int-to-Int=([int], long), writeInteger/-383739395=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, long], void), var2540_getName/134002895=([com.mysql.cj.BindValue], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), writeBytes/771844277=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, byte[]], void)}
; {var2356=com.mysql.cj.protocol.a.NativePacketPayload, var3677=r0, var2540=com.mysql.cj.BindValue, var907=r1, var706=com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, var1606=$r2, var3918=$i0, var291=$l1, var248=com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, var2925=$r3, var1565=$r4, var1706=$r5}
; {com.mysql.cj.protocol.a.NativePacketPayload=var2356, r0=var3677, com.mysql.cj.BindValue=var2540, r1=var907, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType=var706, $r2=var1606, $i0=var3918, $l1=var291, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType=var248, $r3=var2925, $r4=var1565, $r5=var1706}
;seq <java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 1}
;stmts r0 := @parameter0: com.mysql.cj.protocol.a.NativePacketPayload;	r1 := @parameter1: com.mysql.cj.BindValue;	$r2 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT2>;	$i0 = interfaceinvoke r1.<com.mysql.cj.BindValue: int getFieldType()>();	$l1 = (long) $i0;	virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r2, $l1);	$r3 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_LENENC>;	$r4 = interfaceinvoke r1.<com.mysql.cj.BindValue: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes()>();	virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r3, $r5);	return
;block_num 1