(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var179 0)
(declare-sort var3986 0)
(declare-sort var1371 0)
(declare-sort var3403 0)
(declare-sort var2220 0)
(declare-sort var1728 0)
(declare-sort var304 0)
(declare-sort var2682 0)
(declare-sort var2160 0)
(declare-sort var1782 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun relativePath/-1056849968 (var179) var1371)
(declare-fun var1371_toString/1790204457 (var1371) String)
(declare-fun var2220_newBuilder/-1497769881 () var3403)
(declare-fun var304_newBuilder/1210994095 () var1728)
(declare-fun setActualPath/1531226423 (var1728 String) var1728)
(declare-fun getCharset/-198459899 (var179) var2682)
(declare-fun equals/-507840365 (var2682 var1782) Bool)
(declare-fun cast-from-var2682-to-var1782 (var2682) var1782)
(declare-fun setCharset/-1431031218 (var1728 String) var1728)
(declare-fun setFileOnDisk/877644032 (var3403 var1728) var3403)
(declare-const null-var179 var179)
(declare-const null-String String)
(declare-const var2160-UTF_8 var2682)
(declare-const var1840 var179) ; Statement: r0 := @this: com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk 
(assert (not (= var1840 null-var179)))
(declare-const var1258 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1258 null-String)))
(define-const var2790 var1371 (relativePath/-1056849968 var1840)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk: java.nio.file.Path relativePath> 
(define-const var268 String (var1371_toString/1790204457 var2790)) ; Statement: r2 = interfaceinvoke $r1.<java.nio.file.Path: java.lang.String toString()>() 
(define-const var2616 var3403 var2220_newBuilder/-1497769881) ; Statement: $r9 = staticinvoke <com.google.javascript.jscomp.serialization.SourceFileProto: com.google.javascript.jscomp.serialization.SourceFileProto$Builder newBuilder()>() 
(define-const var1570 var1728 var304_newBuilder/1210994095) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder newBuilder()>() 
(assert true)
(define-const var2538 Bool (= var1258 var268)) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto $r11 = r2 
(assert (not (= (ite var2538 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3104 String "") ; Statement: $r11 = "" 
 ; Statement: goto [?= $r7 = virtualinvoke $r4.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder setActualPath(java.lang.String)>($r11)] 
(assert true) ; Non Conditional
(assert true)
(define-const var816 var1728 (setActualPath/1531226423 var1570 var3104)) ; Statement: $r7 = virtualinvoke $r4.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder setActualPath(java.lang.String)>($r11) 
(assert true)
(define-const var2810 var2682 (getCharset/-198459899 var1840)) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk: java.nio.charset.Charset getCharset()>() 
(define-const var3431 var2682 var2160-UTF_8) ; Statement: $r5 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true)
(define-const var3415 Bool (equals/-507840365 var2810 (cast-from-var2682-to-var1782 var3431))) ; Statement: $z1 = virtualinvoke $r6.<java.nio.charset.Charset: boolean equals(java.lang.Object)>($r5) 
 ; Statement: if $z1 == 0 goto $r12 = r0.<com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk: java.lang.String serializableCharset> 
(assert (not (= (ite var3415 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var583 String "") ; Statement: $r12 = "" 
 ; Statement: goto [?= $r8 = virtualinvoke $r7.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder setCharset(java.lang.String)>($r12)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2890 var1728 (setCharset/-1431031218 var816 var583)) ; Statement: $r8 = virtualinvoke $r7.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder setCharset(java.lang.String)>($r12) 
(assert true)
(define-const var252 var3403 (setFileOnDisk/877644032 var2616 var2890)) ; Statement: $r10 = virtualinvoke $r9.<com.google.javascript.jscomp.serialization.SourceFileProto$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$Builder setFileOnDisk(com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder)>($r8) 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {relativePath/-1056849968=([com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk], java.nio.file.Path), var1371_toString/1790204457=([java.nio.file.Path], java.lang.String), var2220_newBuilder/-1497769881=([], com.google.javascript.jscomp.serialization.SourceFileProto$Builder), var304_newBuilder/1210994095=([], com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder), setActualPath/1531226423=([com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder, java.lang.String], com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder), getCharset/-198459899=([com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk], java.nio.charset.Charset), equals/-507840365=([java.nio.charset.Charset, java.lang.Object], boolean), cast-from-var2682-to-var1782=([java.nio.charset.Charset], java.lang.Object), setCharset/-1431031218=([com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder, java.lang.String], com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder), setFileOnDisk/877644032=([com.google.javascript.jscomp.serialization.SourceFileProto$Builder, com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder], com.google.javascript.jscomp.serialization.SourceFileProto$Builder)}
; {var179=com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk, var1840=r0, var1258=r3, var3986=null_type, var1371=java.nio.file.Path, var2790=$r1, var268=r2, var3403=com.google.javascript.jscomp.serialization.SourceFileProto$Builder, var2220=com.google.javascript.jscomp.serialization.SourceFileProto, var2616=$r9, var1728=com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder, var304=com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk, var1570=$r4, var2538=$z0, var3104=$r11, var816=$r7, var2682=java.nio.charset.Charset, var2810=$r6, var2160=java.nio.charset.StandardCharsets, var3431=$r5, var1782=java.lang.Object, var3415=$z1, var583=$r12, var2890=$r8, var252=$r10}
; {com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk=var179, r0=var1840, r3=var1258, null_type=var3986, java.nio.file.Path=var1371, $r1=var2790, r2=var268, com.google.javascript.jscomp.serialization.SourceFileProto$Builder=var3403, com.google.javascript.jscomp.serialization.SourceFileProto=var2220, $r9=var2616, com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder=var1728, com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk=var304, $r4=var1570, $z0=var2538, $r11=var3104, $r7=var816, java.nio.charset.Charset=var2682, $r6=var2810, java.nio.charset.StandardCharsets=var2160, $r5=var3431, java.lang.Object=var1782, $z1=var3415, $r12=var583, $r8=var2890, $r10=var252}
;seq <java.nio.file.Path: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk;	r3 := @parameter0: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk: java.nio.file.Path relativePath>;	r2 = interfaceinvoke $r1.<java.nio.file.Path: java.lang.String toString()>();	$r9 = staticinvoke <com.google.javascript.jscomp.serialization.SourceFileProto: com.google.javascript.jscomp.serialization.SourceFileProto$Builder newBuilder()>();	$r4 = staticinvoke <com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder newBuilder()>();	$z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto $r11 = r2;	$r11 = "";	goto [?= $r7 = virtualinvoke $r4.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder setActualPath(java.lang.String)>($r11)];	$r7 = virtualinvoke $r4.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder setActualPath(java.lang.String)>($r11);	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk: java.nio.charset.Charset getCharset()>();	$r5 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	$z1 = virtualinvoke $r6.<java.nio.charset.Charset: boolean equals(java.lang.Object)>($r5);	if $z1 == 0 goto $r12 = r0.<com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk: java.lang.String serializableCharset>;	$r12 = "";	goto [?= $r8 = virtualinvoke $r7.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder setCharset(java.lang.String)>($r12)];	$r8 = virtualinvoke $r7.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder setCharset(java.lang.String)>($r12);	$r10 = virtualinvoke $r9.<com.google.javascript.jscomp.serialization.SourceFileProto$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$Builder setFileOnDisk(com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder)>($r8);	return $r10
;block_num 5