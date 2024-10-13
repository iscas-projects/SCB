(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3808 0)
(declare-sort var2256 0)
(declare-sort var2506 0)
(declare-sort var3388 0)
(declare-sort var424 0)
(declare-sort var1236 0)
(declare-sort var1263 0)
(declare-sort var3503 0)
(declare-sort var3400 0)
(declare-sort var3290 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun relativePath/-1056849968 (var3808) var2506)
(declare-fun var2506_toString/1790204457 (var2506) String)
(declare-fun var424_newBuilder/-1497769881 () var3388)
(declare-fun var1263_newBuilder/1210994095 () var1236)
(declare-fun setActualPath/1531226423 (var1236 String) var1236)
(declare-fun getCharset/-198459899 (var3808) var3503)
(declare-fun equals/-507840365 (var3503 var3290) Bool)
(declare-fun cast-from-var3503-to-var3290 (var3503) var3290)
(declare-fun serializableCharset/-1056849968 (var3808) String)
(declare-fun setCharset/-1431031218 (var1236 String) var1236)
(declare-fun setFileOnDisk/877644032 (var3388 var1236) var3388)
(declare-const null-var3808 var3808)
(declare-const null-String String)
(declare-const var3400-UTF_8 var3503)
(declare-const var3383 var3808) ; Statement: r0 := @this: com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk 
(assert (not (= var3383 null-var3808)))
(declare-const var24 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var24 null-String)))
(define-const var3248 var2506 (relativePath/-1056849968 var3383)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk: java.nio.file.Path relativePath> 
(define-const var3592 String (var2506_toString/1790204457 var3248)) ; Statement: r2 = interfaceinvoke $r1.<java.nio.file.Path: java.lang.String toString()>() 
(define-const var119 var3388 var424_newBuilder/-1497769881) ; Statement: $r9 = staticinvoke <com.google.javascript.jscomp.serialization.SourceFileProto: com.google.javascript.jscomp.serialization.SourceFileProto$Builder newBuilder()>() 
(define-const var90 var1236 var1263_newBuilder/1210994095) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder newBuilder()>() 
(assert true)
(define-const var285 Bool (= var24 var3592)) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto $r11 = r2 
(assert (= (ite var285 1 0) 0)) ; Cond: $z0 == 0 
(define-const var634 String var3592) ; Statement: $r11 = r2 
(assert true) ; Non Conditional
(assert true)
(define-const var1271 var1236 (setActualPath/1531226423 var90 var634)) ; Statement: $r7 = virtualinvoke $r4.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder setActualPath(java.lang.String)>($r11) 
(assert true)
(define-const var2002 var3503 (getCharset/-198459899 var3383)) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk: java.nio.charset.Charset getCharset()>() 
(define-const var3928 var3503 var3400-UTF_8) ; Statement: $r5 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true)
(define-const var1410 Bool (equals/-507840365 var2002 (cast-from-var3503-to-var3290 var3928))) ; Statement: $z1 = virtualinvoke $r6.<java.nio.charset.Charset: boolean equals(java.lang.Object)>($r5) 
 ; Statement: if $z1 == 0 goto $r12 = r0.<com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk: java.lang.String serializableCharset> 
(assert (= (ite var1410 1 0) 0)) ; Cond: $z1 == 0 
(define-const var646 String (serializableCharset/-1056849968 var3383)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk: java.lang.String serializableCharset> 
(assert true) ; Non Conditional
(assert true)
(define-const var3974 var1236 (setCharset/-1431031218 var1271 var646)) ; Statement: $r8 = virtualinvoke $r7.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder setCharset(java.lang.String)>($r12) 
(assert true)
(define-const var3396 var3388 (setFileOnDisk/877644032 var119 var3974)) ; Statement: $r10 = virtualinvoke $r9.<com.google.javascript.jscomp.serialization.SourceFileProto$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$Builder setFileOnDisk(com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder)>($r8) 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {relativePath/-1056849968=([com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk], java.nio.file.Path), var2506_toString/1790204457=([java.nio.file.Path], java.lang.String), var424_newBuilder/-1497769881=([], com.google.javascript.jscomp.serialization.SourceFileProto$Builder), var1263_newBuilder/1210994095=([], com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder), setActualPath/1531226423=([com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder, java.lang.String], com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder), getCharset/-198459899=([com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk], java.nio.charset.Charset), equals/-507840365=([java.nio.charset.Charset, java.lang.Object], boolean), cast-from-var3503-to-var3290=([java.nio.charset.Charset], java.lang.Object), serializableCharset/-1056849968=([com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk], java.lang.String), setCharset/-1431031218=([com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder, java.lang.String], com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder), setFileOnDisk/877644032=([com.google.javascript.jscomp.serialization.SourceFileProto$Builder, com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder], com.google.javascript.jscomp.serialization.SourceFileProto$Builder)}
; {var3808=com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk, var3383=r0, var24=r3, var2256=null_type, var2506=java.nio.file.Path, var3248=$r1, var3592=r2, var3388=com.google.javascript.jscomp.serialization.SourceFileProto$Builder, var424=com.google.javascript.jscomp.serialization.SourceFileProto, var119=$r9, var1236=com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder, var1263=com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk, var90=$r4, var285=$z0, var634=$r11, var1271=$r7, var3503=java.nio.charset.Charset, var2002=$r6, var3400=java.nio.charset.StandardCharsets, var3928=$r5, var3290=java.lang.Object, var1410=$z1, var646=$r12, var3974=$r8, var3396=$r10}
; {com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk=var3808, r0=var3383, r3=var24, null_type=var2256, java.nio.file.Path=var2506, $r1=var3248, r2=var3592, com.google.javascript.jscomp.serialization.SourceFileProto$Builder=var3388, com.google.javascript.jscomp.serialization.SourceFileProto=var424, $r9=var119, com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder=var1236, com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk=var1263, $r4=var90, $z0=var285, $r11=var634, $r7=var1271, java.nio.charset.Charset=var3503, $r6=var2002, java.nio.charset.StandardCharsets=var3400, $r5=var3928, java.lang.Object=var3290, $z1=var1410, $r12=var646, $r8=var3974, $r10=var3396}
;seq <java.nio.file.Path: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk;	r3 := @parameter0: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk: java.nio.file.Path relativePath>;	r2 = interfaceinvoke $r1.<java.nio.file.Path: java.lang.String toString()>();	$r9 = staticinvoke <com.google.javascript.jscomp.serialization.SourceFileProto: com.google.javascript.jscomp.serialization.SourceFileProto$Builder newBuilder()>();	$r4 = staticinvoke <com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder newBuilder()>();	$z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto $r11 = r2;	$r11 = r2;	$r7 = virtualinvoke $r4.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder setActualPath(java.lang.String)>($r11);	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk: java.nio.charset.Charset getCharset()>();	$r5 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	$z1 = virtualinvoke $r6.<java.nio.charset.Charset: boolean equals(java.lang.Object)>($r5);	if $z1 == 0 goto $r12 = r0.<com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk: java.lang.String serializableCharset>;	$r12 = r0.<com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk: java.lang.String serializableCharset>;	$r8 = virtualinvoke $r7.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder setCharset(java.lang.String)>($r12);	$r10 = virtualinvoke $r9.<com.google.javascript.jscomp.serialization.SourceFileProto$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$Builder setFileOnDisk(com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder)>($r8);	return $r10
;block_num 5