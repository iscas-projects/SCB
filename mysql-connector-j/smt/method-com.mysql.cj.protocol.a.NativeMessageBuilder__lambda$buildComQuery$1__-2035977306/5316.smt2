(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1388 0)
(declare-sort var2811 0)
(declare-sort var791 0)
(declare-sort var1400 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2811_getFieldType/-1881817274 (var2811) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun writeInteger/-383739395 (var1388 var791 Int) void)
(declare-fun var2811_getName/134002895 (var2811) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun writeBytes/771844277 (var1388 var1400 (Array Int Int)) void)
(declare-const null-var1388 var1388)
(declare-const null-var2811 var2811)
(declare-const var791-INT2 var791)
(declare-const var1400-STRING_LENENC var1400)
(declare-const var3036 var1388) ; Statement: r0 := @parameter0: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var3036 null-var1388)))
(declare-const var3849 var2811) ; Statement: r1 := @parameter1: com.mysql.cj.BindValue 
(assert (not (= var3849 null-var2811)))
(define-const var1350 var791 var791-INT2) ; Statement: $r2 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT2> 
(define-const var1140 Int (var2811_getFieldType/-1881817274 var3849)) ; Statement: $i0 = interfaceinvoke r1.<com.mysql.cj.BindValue: int getFieldType()>() 
(define-const var1520 Int (cast-from-Int-to-Int var1140)) ; Statement: $l1 = (long) $i0 
(assert true)
;(assert (writeInteger/-383739395 var3036 var1350 var1520)) ; Statement: virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r2, $l1) 

(declare-const var3036!1 var1388)
(declare-const var1350!1 var791)
(declare-const var1520!1 Int)
(define-const var621 var1400 var1400-STRING_LENENC) ; Statement: $r3 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_LENENC> 
(define-const var1206 String (var2811_getName/134002895 var3849)) ; Statement: $r4 = interfaceinvoke r1.<com.mysql.cj.BindValue: java.lang.String getName()>() 
(assert true)
(define-const var782 (Array Int Int) (getBytes/1068683673 var1206)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes()>() 
(assert true)
;(assert (writeBytes/771844277 var3036!1 var621 var782)) ; Statement: virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r3, $r5) 

(declare-const var3036!2 var1388)
(declare-const var621!1 var1400)
(declare-const var782!1 (Array Int Int))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2811_getFieldType/-1881817274=([com.mysql.cj.BindValue], int), cast-from-Int-to-Int=([int], long), writeInteger/-383739395=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, long], void), var2811_getName/134002895=([com.mysql.cj.BindValue], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), writeBytes/771844277=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, byte[]], void)}
; {var1388=com.mysql.cj.protocol.a.NativePacketPayload, var3036=r0, var2811=com.mysql.cj.BindValue, var3849=r1, var791=com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, var1350=$r2, var1140=$i0, var1520=$l1, var1400=com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, var621=$r3, var1206=$r4, var782=$r5}
; {com.mysql.cj.protocol.a.NativePacketPayload=var1388, r0=var3036, com.mysql.cj.BindValue=var2811, r1=var3849, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType=var791, $r2=var1350, $i0=var1140, $l1=var1520, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType=var1400, $r3=var621, $r4=var1206, $r5=var782}
;seq <java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 1}
;stmts r0 := @parameter0: com.mysql.cj.protocol.a.NativePacketPayload;	r1 := @parameter1: com.mysql.cj.BindValue;	$r2 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT2>;	$i0 = interfaceinvoke r1.<com.mysql.cj.BindValue: int getFieldType()>();	$l1 = (long) $i0;	virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketPayload: void writeInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType,long)>($r2, $l1);	$r3 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_LENENC>;	$r4 = interfaceinvoke r1.<com.mysql.cj.BindValue: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes()>();	virtualinvoke r0.<com.mysql.cj.protocol.a.NativePacketPayload: void writeBytes(com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType,byte[])>($r3, $r5);	return
;block_num 1