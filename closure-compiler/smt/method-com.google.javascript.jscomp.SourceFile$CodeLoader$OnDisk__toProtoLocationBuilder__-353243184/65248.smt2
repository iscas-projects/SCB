(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var615 0)
(declare-sort var2038 0)
(declare-sort var1354 0)
(declare-sort var3282 0)
(declare-sort var3996 0)
(declare-sort var950 0)
(declare-sort var1620 0)
(declare-sort var3532 0)
(declare-sort var915 0)
(declare-sort var3983 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun relativePath/-1056849968 (var615) var1354)
(declare-fun var1354_toString/1790204457 (var1354) String)
(declare-fun var3996_newBuilder/-1497769881 () var3282)
(declare-fun var1620_newBuilder/1210994095 () var950)
(declare-fun setActualPath/1531226423 (var950 String) var950)
(declare-fun getCharset/-198459899 (var615) var3532)
(declare-fun equals/-507840365 (var3532 var3983) Bool)
(declare-fun cast-from-var3532-to-var3983 (var3532) var3983)
(declare-fun serializableCharset/-1056849968 (var615) String)
(declare-fun setCharset/-1431031218 (var950 String) var950)
(declare-fun setFileOnDisk/877644032 (var3282 var950) var3282)
(declare-const null-var615 var615)
(declare-const null-String String)
(declare-const var915-UTF_8 var3532)
(declare-const var1589 var615) ; Statement: r0 := @this: com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk 
(assert (not (= var1589 null-var615)))
(declare-const var3327 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3327 null-String)))
(define-const var3014 var1354 (relativePath/-1056849968 var1589)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk: java.nio.file.Path relativePath> 
(define-const var3913 String (var1354_toString/1790204457 var3014)) ; Statement: r2 = interfaceinvoke $r1.<java.nio.file.Path: java.lang.String toString()>() 
(define-const var1577 var3282 var3996_newBuilder/-1497769881) ; Statement: $r9 = staticinvoke <com.google.javascript.jscomp.serialization.SourceFileProto: com.google.javascript.jscomp.serialization.SourceFileProto$Builder newBuilder()>() 
(define-const var3881 var950 var1620_newBuilder/1210994095) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder newBuilder()>() 
(assert true)
(define-const var2410 Bool (= var3327 var3913)) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto $r11 = r2 
(assert (not (= (ite var2410 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3929 String "") ; Statement: $r11 = "" 
 ; Statement: goto [?= $r7 = virtualinvoke $r4.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder setActualPath(java.lang.String)>($r11)] 
(assert true) ; Non Conditional
(assert true)
(define-const var422 var950 (setActualPath/1531226423 var3881 var3929)) ; Statement: $r7 = virtualinvoke $r4.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder setActualPath(java.lang.String)>($r11) 
(assert true)
(define-const var2080 var3532 (getCharset/-198459899 var1589)) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk: java.nio.charset.Charset getCharset()>() 
(define-const var2206 var3532 var915-UTF_8) ; Statement: $r5 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true)
(define-const var1630 Bool (equals/-507840365 var2080 (cast-from-var3532-to-var3983 var2206))) ; Statement: $z1 = virtualinvoke $r6.<java.nio.charset.Charset: boolean equals(java.lang.Object)>($r5) 
 ; Statement: if $z1 == 0 goto $r12 = r0.<com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk: java.lang.String serializableCharset> 
(assert (= (ite var1630 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3326 String (serializableCharset/-1056849968 var1589)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk: java.lang.String serializableCharset> 
(assert true) ; Non Conditional
(assert true)
(define-const var1567 var950 (setCharset/-1431031218 var422 var3326)) ; Statement: $r8 = virtualinvoke $r7.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder setCharset(java.lang.String)>($r12) 
(assert true)
(define-const var3459 var3282 (setFileOnDisk/877644032 var1577 var1567)) ; Statement: $r10 = virtualinvoke $r9.<com.google.javascript.jscomp.serialization.SourceFileProto$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$Builder setFileOnDisk(com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder)>($r8) 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {relativePath/-1056849968=([com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk], java.nio.file.Path), var1354_toString/1790204457=([java.nio.file.Path], java.lang.String), var3996_newBuilder/-1497769881=([], com.google.javascript.jscomp.serialization.SourceFileProto$Builder), var1620_newBuilder/1210994095=([], com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder), setActualPath/1531226423=([com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder, java.lang.String], com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder), getCharset/-198459899=([com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk], java.nio.charset.Charset), equals/-507840365=([java.nio.charset.Charset, java.lang.Object], boolean), cast-from-var3532-to-var3983=([java.nio.charset.Charset], java.lang.Object), serializableCharset/-1056849968=([com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk], java.lang.String), setCharset/-1431031218=([com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder, java.lang.String], com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder), setFileOnDisk/877644032=([com.google.javascript.jscomp.serialization.SourceFileProto$Builder, com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder], com.google.javascript.jscomp.serialization.SourceFileProto$Builder)}
; {var615=com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk, var1589=r0, var3327=r3, var2038=null_type, var1354=java.nio.file.Path, var3014=$r1, var3913=r2, var3282=com.google.javascript.jscomp.serialization.SourceFileProto$Builder, var3996=com.google.javascript.jscomp.serialization.SourceFileProto, var1577=$r9, var950=com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder, var1620=com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk, var3881=$r4, var2410=$z0, var3929=$r11, var422=$r7, var3532=java.nio.charset.Charset, var2080=$r6, var915=java.nio.charset.StandardCharsets, var2206=$r5, var3983=java.lang.Object, var1630=$z1, var3326=$r12, var1567=$r8, var3459=$r10}
; {com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk=var615, r0=var1589, r3=var3327, null_type=var2038, java.nio.file.Path=var1354, $r1=var3014, r2=var3913, com.google.javascript.jscomp.serialization.SourceFileProto$Builder=var3282, com.google.javascript.jscomp.serialization.SourceFileProto=var3996, $r9=var1577, com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder=var950, com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk=var1620, $r4=var3881, $z0=var2410, $r11=var3929, $r7=var422, java.nio.charset.Charset=var3532, $r6=var2080, java.nio.charset.StandardCharsets=var915, $r5=var2206, java.lang.Object=var3983, $z1=var1630, $r12=var3326, $r8=var1567, $r10=var3459}
;seq <java.nio.file.Path: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk;	r3 := @parameter0: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk: java.nio.file.Path relativePath>;	r2 = interfaceinvoke $r1.<java.nio.file.Path: java.lang.String toString()>();	$r9 = staticinvoke <com.google.javascript.jscomp.serialization.SourceFileProto: com.google.javascript.jscomp.serialization.SourceFileProto$Builder newBuilder()>();	$r4 = staticinvoke <com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder newBuilder()>();	$z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto $r11 = r2;	$r11 = "";	goto [?= $r7 = virtualinvoke $r4.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder setActualPath(java.lang.String)>($r11)];	$r7 = virtualinvoke $r4.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder setActualPath(java.lang.String)>($r11);	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk: java.nio.charset.Charset getCharset()>();	$r5 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	$z1 = virtualinvoke $r6.<java.nio.charset.Charset: boolean equals(java.lang.Object)>($r5);	if $z1 == 0 goto $r12 = r0.<com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk: java.lang.String serializableCharset>;	$r12 = r0.<com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk: java.lang.String serializableCharset>;	$r8 = virtualinvoke $r7.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder setCharset(java.lang.String)>($r12);	$r10 = virtualinvoke $r9.<com.google.javascript.jscomp.serialization.SourceFileProto$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$Builder setFileOnDisk(com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder)>($r8);	return $r10
;block_num 5