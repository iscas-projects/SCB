(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2546 0)
(declare-sort var3646 0)
(declare-sort var441 0)
(declare-sort var794 0)
(declare-sort var343 0)
(declare-sort var1370 0)
(declare-sort var3501 0)
(declare-sort var3764 0)
(declare-sort var1939 0)
(declare-sort var3616 0)
(declare-sort var2978 0)
(declare-sort var3079 0)
(declare-sort var576 0)
(declare-sort var2969 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1370_newBuilder/-213431155 () var343)
(declare-fun cast-from-var441-to-var3501 (var441) var3501)
(declare-fun var1939_bootstrap$/-1751792837 (var343) var3764)
(declare-fun var3501_forEach/1471512036 (var3501 var3764) void)
(declare-fun var2978_newBuilder/-1407092177 () var3616)
(declare-fun setType/1135659687 (var3616 var3079) var3616)
(declare-fun setObj/2025674814 (var3616 var343) var3616)
(declare-fun build/656687120 (var3616) var2978)
(declare-fun var2969_newBuilder/-772974449 () var576)
(declare-fun setName/-1826975137 (var576 String) var576)
(declare-fun setValue/-1111405272 (var576 var2978) var576)
(declare-fun build/-1264891984 (var576) var2969)
(declare-fun addCapabilities/-665111901 (var2546 var2969) var2546)
(declare-const null-var2546 var2546)
(declare-const null-String String)
(declare-const null-var441 var441)
(declare-const var794-KEY_SESSION_CONNECT_ATTRS String)
(declare-const var3079-OBJECT var3079)
(declare-const var3348 var2546) ; Statement: r12 := @parameter0: com.mysql.cj.x.protobuf.MysqlxConnection$Capabilities$Builder 
(assert (not (= var3348 null-var2546)))
(declare-const var1798 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1798 null-String)))
(declare-const var1234 var441) ; Statement: r2 := @parameter2: java.lang.Object 
(assert (not (= var1234 null-var441)))
(define-const var563 String var794-KEY_SESSION_CONNECT_ATTRS) ; Statement: $r1 = <com.mysql.cj.protocol.x.XServerCapabilities: java.lang.String KEY_SESSION_CONNECT_ATTRS> 
(assert true)
(define-const var2884 Bool (= var563 var1798)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $r15 = staticinvoke <com.mysql.cj.x.protobuf.MysqlxDatatypes$Object: com.mysql.cj.x.protobuf.MysqlxDatatypes$Object$Builder newBuilder()>() 
(assert (not (= (ite var2884 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3203 var343 var1370_newBuilder/-213431155) ; Statement: $r15 = staticinvoke <com.mysql.cj.x.protobuf.MysqlxDatatypes$Object: com.mysql.cj.x.protobuf.MysqlxDatatypes$Object$Builder newBuilder()>() 
(define-const var780 var3501 (cast-from-var441-to-var3501 var1234)) ; Statement: $r4 = (java.util.Map) r2 
(define-const var3204 var3764 (var1939_bootstrap$/-1751792837 var3203)) ; Statement: $r3 = staticinvoke <com.mysql.cj.protocol.x.XMessageBuilder$lambda_null_0__205: java.util.function.BiConsumer bootstrap$(com.mysql.cj.x.protobuf.MysqlxDatatypes$Object$Builder)>($r15) 
;(assert (var3501_forEach/1471512036 var780 var3204)) ; Statement: interfaceinvoke $r4.<java.util.Map: void forEach(java.util.function.BiConsumer)>($r3) 

(declare-const var780!1 var3501)
(declare-const var3204!1 var3764)
(define-const var3176 var3616 var2978_newBuilder/-1407092177) ; Statement: $r6 = staticinvoke <com.mysql.cj.x.protobuf.MysqlxDatatypes$Any: com.mysql.cj.x.protobuf.MysqlxDatatypes$Any$Builder newBuilder()>() 
(define-const var3906 var3079 var3079-OBJECT) ; Statement: $r5 = <com.mysql.cj.x.protobuf.MysqlxDatatypes$Any$Type: com.mysql.cj.x.protobuf.MysqlxDatatypes$Any$Type OBJECT> 
(assert true)
(define-const var3399 var3616 (setType/1135659687 var3176 var3906)) ; Statement: $r7 = virtualinvoke $r6.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Any$Builder: com.mysql.cj.x.protobuf.MysqlxDatatypes$Any$Builder setType(com.mysql.cj.x.protobuf.MysqlxDatatypes$Any$Type)>($r5) 
(assert true)
(define-const var1968 var3616 (setObj/2025674814 var3399 var3203)) ; Statement: $r8 = virtualinvoke $r7.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Any$Builder: com.mysql.cj.x.protobuf.MysqlxDatatypes$Any$Builder setObj(com.mysql.cj.x.protobuf.MysqlxDatatypes$Object$Builder)>($r15) 
(assert true)
(define-const var3912 var2978 (build/656687120 var1968)) ; Statement: r16 = virtualinvoke $r8.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Any$Builder: com.mysql.cj.x.protobuf.MysqlxDatatypes$Any build()>() 
 ; Statement: goto [?= $r9 = staticinvoke <com.mysql.cj.x.protobuf.MysqlxConnection$Capability: com.mysql.cj.x.protobuf.MysqlxConnection$Capability$Builder newBuilder()>()] 
(assert true) ; Non Conditional
(define-const var3191 var576 var2969_newBuilder/-772974449) ; Statement: $r9 = staticinvoke <com.mysql.cj.x.protobuf.MysqlxConnection$Capability: com.mysql.cj.x.protobuf.MysqlxConnection$Capability$Builder newBuilder()>() 
(assert true)
(define-const var212 var576 (setName/-1826975137 var3191 var1798)) ; Statement: $r10 = virtualinvoke $r9.<com.mysql.cj.x.protobuf.MysqlxConnection$Capability$Builder: com.mysql.cj.x.protobuf.MysqlxConnection$Capability$Builder setName(java.lang.String)>(r0) 
(assert true)
(define-const var3952 var576 (setValue/-1111405272 var212 var3912)) ; Statement: $r11 = virtualinvoke $r10.<com.mysql.cj.x.protobuf.MysqlxConnection$Capability$Builder: com.mysql.cj.x.protobuf.MysqlxConnection$Capability$Builder setValue(com.mysql.cj.x.protobuf.MysqlxDatatypes$Any)>(r16) 
(assert true)
(define-const var713 var2969 (build/-1264891984 var3952)) ; Statement: $r14 = virtualinvoke $r11.<com.mysql.cj.x.protobuf.MysqlxConnection$Capability$Builder: com.mysql.cj.x.protobuf.MysqlxConnection$Capability build()>() 
(assert true)
;(assert (addCapabilities/-665111901 var3348 var713)) ; Statement: virtualinvoke r12.<com.mysql.cj.x.protobuf.MysqlxConnection$Capabilities$Builder: com.mysql.cj.x.protobuf.MysqlxConnection$Capabilities$Builder addCapabilities(com.mysql.cj.x.protobuf.MysqlxConnection$Capability)>($r14) 

(declare-const var3348!1 var2546)
(declare-const var713!1 var2969)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1370_newBuilder/-213431155=([], com.mysql.cj.x.protobuf.MysqlxDatatypes$Object$Builder), cast-from-var441-to-var3501=([java.lang.Object], java.util.Map), var1939_bootstrap$/-1751792837=([com.mysql.cj.x.protobuf.MysqlxDatatypes$Object$Builder], java.util.function.BiConsumer), var3501_forEach/1471512036=([java.util.Map, java.util.function.BiConsumer], void), var2978_newBuilder/-1407092177=([], com.mysql.cj.x.protobuf.MysqlxDatatypes$Any$Builder), setType/1135659687=([com.mysql.cj.x.protobuf.MysqlxDatatypes$Any$Builder, com.mysql.cj.x.protobuf.MysqlxDatatypes$Any$Type], com.mysql.cj.x.protobuf.MysqlxDatatypes$Any$Builder), setObj/2025674814=([com.mysql.cj.x.protobuf.MysqlxDatatypes$Any$Builder, com.mysql.cj.x.protobuf.MysqlxDatatypes$Object$Builder], com.mysql.cj.x.protobuf.MysqlxDatatypes$Any$Builder), build/656687120=([com.mysql.cj.x.protobuf.MysqlxDatatypes$Any$Builder], com.mysql.cj.x.protobuf.MysqlxDatatypes$Any), var2969_newBuilder/-772974449=([], com.mysql.cj.x.protobuf.MysqlxConnection$Capability$Builder), setName/-1826975137=([com.mysql.cj.x.protobuf.MysqlxConnection$Capability$Builder, java.lang.String], com.mysql.cj.x.protobuf.MysqlxConnection$Capability$Builder), setValue/-1111405272=([com.mysql.cj.x.protobuf.MysqlxConnection$Capability$Builder, com.mysql.cj.x.protobuf.MysqlxDatatypes$Any], com.mysql.cj.x.protobuf.MysqlxConnection$Capability$Builder), build/-1264891984=([com.mysql.cj.x.protobuf.MysqlxConnection$Capability$Builder], com.mysql.cj.x.protobuf.MysqlxConnection$Capability), addCapabilities/-665111901=([com.mysql.cj.x.protobuf.MysqlxConnection$Capabilities$Builder, com.mysql.cj.x.protobuf.MysqlxConnection$Capability], com.mysql.cj.x.protobuf.MysqlxConnection$Capabilities$Builder)}
; {var2546=com.mysql.cj.x.protobuf.MysqlxConnection$Capabilities$Builder, var3348=r12, var1798=r0, var3646=null_type, var441=java.lang.Object, var1234=r2, var794=com.mysql.cj.protocol.x.XServerCapabilities, var563=$r1, var2884=$z0, var343=com.mysql.cj.x.protobuf.MysqlxDatatypes$Object$Builder, var1370=com.mysql.cj.x.protobuf.MysqlxDatatypes$Object, var3203=$r15, var3501=java.util.Map, var780=$r4, var3764=java.util.function.BiConsumer, var1939=com.mysql.cj.protocol.x.XMessageBuilder$lambda_null_0__205, var3204=$r3, var3616=com.mysql.cj.x.protobuf.MysqlxDatatypes$Any$Builder, var2978=com.mysql.cj.x.protobuf.MysqlxDatatypes$Any, var3176=$r6, var3079=com.mysql.cj.x.protobuf.MysqlxDatatypes$Any$Type, var3906=$r5, var3399=$r7, var1968=$r8, var3912=r16, var576=com.mysql.cj.x.protobuf.MysqlxConnection$Capability$Builder, var2969=com.mysql.cj.x.protobuf.MysqlxConnection$Capability, var3191=$r9, var212=$r10, var3952=$r11, var713=$r14}
; {com.mysql.cj.x.protobuf.MysqlxConnection$Capabilities$Builder=var2546, r12=var3348, r0=var1798, null_type=var3646, java.lang.Object=var441, r2=var1234, com.mysql.cj.protocol.x.XServerCapabilities=var794, $r1=var563, $z0=var2884, com.mysql.cj.x.protobuf.MysqlxDatatypes$Object$Builder=var343, com.mysql.cj.x.protobuf.MysqlxDatatypes$Object=var1370, $r15=var3203, java.util.Map=var3501, $r4=var780, java.util.function.BiConsumer=var3764, com.mysql.cj.protocol.x.XMessageBuilder$lambda_null_0__205=var1939, $r3=var3204, com.mysql.cj.x.protobuf.MysqlxDatatypes$Any$Builder=var3616, com.mysql.cj.x.protobuf.MysqlxDatatypes$Any=var2978, $r6=var3176, com.mysql.cj.x.protobuf.MysqlxDatatypes$Any$Type=var3079, $r5=var3906, $r7=var3399, $r8=var1968, r16=var3912, com.mysql.cj.x.protobuf.MysqlxConnection$Capability$Builder=var576, com.mysql.cj.x.protobuf.MysqlxConnection$Capability=var2969, $r9=var3191, $r10=var212, $r11=var3952, $r14=var713}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r12 := @parameter0: com.mysql.cj.x.protobuf.MysqlxConnection$Capabilities$Builder;	r0 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.Object;	$r1 = <com.mysql.cj.protocol.x.XServerCapabilities: java.lang.String KEY_SESSION_CONNECT_ATTRS>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto $r15 = staticinvoke <com.mysql.cj.x.protobuf.MysqlxDatatypes$Object: com.mysql.cj.x.protobuf.MysqlxDatatypes$Object$Builder newBuilder()>();	$r15 = staticinvoke <com.mysql.cj.x.protobuf.MysqlxDatatypes$Object: com.mysql.cj.x.protobuf.MysqlxDatatypes$Object$Builder newBuilder()>();	$r4 = (java.util.Map) r2;	$r3 = staticinvoke <com.mysql.cj.protocol.x.XMessageBuilder$lambda_null_0__205: java.util.function.BiConsumer bootstrap$(com.mysql.cj.x.protobuf.MysqlxDatatypes$Object$Builder)>($r15);	interfaceinvoke $r4.<java.util.Map: void forEach(java.util.function.BiConsumer)>($r3);	$r6 = staticinvoke <com.mysql.cj.x.protobuf.MysqlxDatatypes$Any: com.mysql.cj.x.protobuf.MysqlxDatatypes$Any$Builder newBuilder()>();	$r5 = <com.mysql.cj.x.protobuf.MysqlxDatatypes$Any$Type: com.mysql.cj.x.protobuf.MysqlxDatatypes$Any$Type OBJECT>;	$r7 = virtualinvoke $r6.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Any$Builder: com.mysql.cj.x.protobuf.MysqlxDatatypes$Any$Builder setType(com.mysql.cj.x.protobuf.MysqlxDatatypes$Any$Type)>($r5);	$r8 = virtualinvoke $r7.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Any$Builder: com.mysql.cj.x.protobuf.MysqlxDatatypes$Any$Builder setObj(com.mysql.cj.x.protobuf.MysqlxDatatypes$Object$Builder)>($r15);	r16 = virtualinvoke $r8.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Any$Builder: com.mysql.cj.x.protobuf.MysqlxDatatypes$Any build()>();	goto [?= $r9 = staticinvoke <com.mysql.cj.x.protobuf.MysqlxConnection$Capability: com.mysql.cj.x.protobuf.MysqlxConnection$Capability$Builder newBuilder()>()];	$r9 = staticinvoke <com.mysql.cj.x.protobuf.MysqlxConnection$Capability: com.mysql.cj.x.protobuf.MysqlxConnection$Capability$Builder newBuilder()>();	$r10 = virtualinvoke $r9.<com.mysql.cj.x.protobuf.MysqlxConnection$Capability$Builder: com.mysql.cj.x.protobuf.MysqlxConnection$Capability$Builder setName(java.lang.String)>(r0);	$r11 = virtualinvoke $r10.<com.mysql.cj.x.protobuf.MysqlxConnection$Capability$Builder: com.mysql.cj.x.protobuf.MysqlxConnection$Capability$Builder setValue(com.mysql.cj.x.protobuf.MysqlxDatatypes$Any)>(r16);	$r14 = virtualinvoke $r11.<com.mysql.cj.x.protobuf.MysqlxConnection$Capability$Builder: com.mysql.cj.x.protobuf.MysqlxConnection$Capability build()>();	virtualinvoke r12.<com.mysql.cj.x.protobuf.MysqlxConnection$Capabilities$Builder: com.mysql.cj.x.protobuf.MysqlxConnection$Capabilities$Builder addCapabilities(com.mysql.cj.x.protobuf.MysqlxConnection$Capability)>($r14);	return
;block_num 3