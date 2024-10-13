(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var643 0)
(declare-sort var3388 0)
(declare-sort var126 0)
(declare-sort var3756 0)
(declare-sort var2796 0)
(declare-sort var2281 0)
(declare-sort var3488 0)
(declare-sort var2301 0)
(declare-sort var583 0)
(declare-sort var710 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun relativePath/-1056849968 (var643) var126)
(declare-fun var126_toString/1790204457 (var126) String)
(declare-fun var2796_newBuilder/-1497769881 () var3756)
(declare-fun var3488_newBuilder/1210994095 () var2281)
(declare-fun setActualPath/1531226423 (var2281 String) var2281)
(declare-fun getCharset/-198459899 (var643) var2301)
(declare-fun equals/-507840365 (var2301 var710) Bool)
(declare-fun cast-from-var2301-to-var710 (var2301) var710)
(declare-fun setCharset/-1431031218 (var2281 String) var2281)
(declare-fun setFileOnDisk/877644032 (var3756 var2281) var3756)
(declare-const null-var643 var643)
(declare-const null-String String)
(declare-const var583-UTF_8 var2301)
(declare-const var853 var643) ; Statement: r0 := @this: com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk 
(assert (not (= var853 null-var643)))
(declare-const var2331 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2331 null-String)))
(define-const var246 var126 (relativePath/-1056849968 var853)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk: java.nio.file.Path relativePath> 
(define-const var3908 String (var126_toString/1790204457 var246)) ; Statement: r2 = interfaceinvoke $r1.<java.nio.file.Path: java.lang.String toString()>() 
(define-const var3511 var3756 var2796_newBuilder/-1497769881) ; Statement: $r9 = staticinvoke <com.google.javascript.jscomp.serialization.SourceFileProto: com.google.javascript.jscomp.serialization.SourceFileProto$Builder newBuilder()>() 
(define-const var225 var2281 var3488_newBuilder/1210994095) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder newBuilder()>() 
(assert true)
(define-const var2666 Bool (= var2331 var3908)) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto $r11 = r2 
(assert (= (ite var2666 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2869 String var3908) ; Statement: $r11 = r2 
(assert true) ; Non Conditional
(assert true)
(define-const var1083 var2281 (setActualPath/1531226423 var225 var2869)) ; Statement: $r7 = virtualinvoke $r4.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder setActualPath(java.lang.String)>($r11) 
(assert true)
(define-const var1129 var2301 (getCharset/-198459899 var853)) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk: java.nio.charset.Charset getCharset()>() 
(define-const var2116 var2301 var583-UTF_8) ; Statement: $r5 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true)
(define-const var3901 Bool (equals/-507840365 var1129 (cast-from-var2301-to-var710 var2116))) ; Statement: $z1 = virtualinvoke $r6.<java.nio.charset.Charset: boolean equals(java.lang.Object)>($r5) 
 ; Statement: if $z1 == 0 goto $r12 = r0.<com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk: java.lang.String serializableCharset> 
(assert (not (= (ite var3901 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2106 String "") ; Statement: $r12 = "" 
 ; Statement: goto [?= $r8 = virtualinvoke $r7.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder setCharset(java.lang.String)>($r12)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3100 var2281 (setCharset/-1431031218 var1083 var2106)) ; Statement: $r8 = virtualinvoke $r7.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder setCharset(java.lang.String)>($r12) 
(assert true)
(define-const var1602 var3756 (setFileOnDisk/877644032 var3511 var3100)) ; Statement: $r10 = virtualinvoke $r9.<com.google.javascript.jscomp.serialization.SourceFileProto$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$Builder setFileOnDisk(com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder)>($r8) 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {relativePath/-1056849968=([com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk], java.nio.file.Path), var126_toString/1790204457=([java.nio.file.Path], java.lang.String), var2796_newBuilder/-1497769881=([], com.google.javascript.jscomp.serialization.SourceFileProto$Builder), var3488_newBuilder/1210994095=([], com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder), setActualPath/1531226423=([com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder, java.lang.String], com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder), getCharset/-198459899=([com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk], java.nio.charset.Charset), equals/-507840365=([java.nio.charset.Charset, java.lang.Object], boolean), cast-from-var2301-to-var710=([java.nio.charset.Charset], java.lang.Object), setCharset/-1431031218=([com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder, java.lang.String], com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder), setFileOnDisk/877644032=([com.google.javascript.jscomp.serialization.SourceFileProto$Builder, com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder], com.google.javascript.jscomp.serialization.SourceFileProto$Builder)}
; {var643=com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk, var853=r0, var2331=r3, var3388=null_type, var126=java.nio.file.Path, var246=$r1, var3908=r2, var3756=com.google.javascript.jscomp.serialization.SourceFileProto$Builder, var2796=com.google.javascript.jscomp.serialization.SourceFileProto, var3511=$r9, var2281=com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder, var3488=com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk, var225=$r4, var2666=$z0, var2869=$r11, var1083=$r7, var2301=java.nio.charset.Charset, var1129=$r6, var583=java.nio.charset.StandardCharsets, var2116=$r5, var710=java.lang.Object, var3901=$z1, var2106=$r12, var3100=$r8, var1602=$r10}
; {com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk=var643, r0=var853, r3=var2331, null_type=var3388, java.nio.file.Path=var126, $r1=var246, r2=var3908, com.google.javascript.jscomp.serialization.SourceFileProto$Builder=var3756, com.google.javascript.jscomp.serialization.SourceFileProto=var2796, $r9=var3511, com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder=var2281, com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk=var3488, $r4=var225, $z0=var2666, $r11=var2869, $r7=var1083, java.nio.charset.Charset=var2301, $r6=var1129, java.nio.charset.StandardCharsets=var583, $r5=var2116, java.lang.Object=var710, $z1=var3901, $r12=var2106, $r8=var3100, $r10=var1602}
;seq <java.nio.file.Path: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk;	r3 := @parameter0: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk: java.nio.file.Path relativePath>;	r2 = interfaceinvoke $r1.<java.nio.file.Path: java.lang.String toString()>();	$r9 = staticinvoke <com.google.javascript.jscomp.serialization.SourceFileProto: com.google.javascript.jscomp.serialization.SourceFileProto$Builder newBuilder()>();	$r4 = staticinvoke <com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder newBuilder()>();	$z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto $r11 = r2;	$r11 = r2;	$r7 = virtualinvoke $r4.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder setActualPath(java.lang.String)>($r11);	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk: java.nio.charset.Charset getCharset()>();	$r5 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	$z1 = virtualinvoke $r6.<java.nio.charset.Charset: boolean equals(java.lang.Object)>($r5);	if $z1 == 0 goto $r12 = r0.<com.google.javascript.jscomp.SourceFile$CodeLoader$OnDisk: java.lang.String serializableCharset>;	$r12 = "";	goto [?= $r8 = virtualinvoke $r7.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder setCharset(java.lang.String)>($r12)];	$r8 = virtualinvoke $r7.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder setCharset(java.lang.String)>($r12);	$r10 = virtualinvoke $r9.<com.google.javascript.jscomp.serialization.SourceFileProto$Builder: com.google.javascript.jscomp.serialization.SourceFileProto$Builder setFileOnDisk(com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk$Builder)>($r8);	return $r10
;block_num 5