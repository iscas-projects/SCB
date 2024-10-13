(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3054 0)
(declare-sort var2640 0)
(declare-sort var1235 0)
(declare-sort var1529 0)
(declare-sort var2816 0)
(declare-sort var576 0)
(declare-sort var3212 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var3054-init () var3054)
(declare-fun <init>/-608264313 (var3054) void)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var1235_get/935877550 (String (Array Int String)) var2640)
(declare-fun arr-var1529-init () (Array Int var1529))
(declare-fun var576_newInputStream/-1349068058 (var2640 (Array Int var1529)) var2816)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var3212 var3212)
(declare-const null-var2816 var2816)
(declare-const var1267 (Array Int String)) ; Statement: r0 := @parameter0: java.lang.String[] 
(assert (not (= var1267 null-__Array__Int__String__)))
(define-const var3138 Int (getLength-Arr-String-1 var1267)) ; Statement: $i0 = lengthof r0 
 ; Statement: if $i0 <= 2 goto $r1 = new org.apache.poi.xdgf.usermodel.shape.ShapeRenderer 
(assert (<= var3138 2)) ; Cond: $i0 <= 2 
(define-const var3419 var3054 var3054-init) ; Statement: $r1 = new org.apache.poi.xdgf.usermodel.shape.ShapeRenderer 
(assert true)
;(assert (<init>/-608264313 var3419)) ; Statement: specialinvoke $r1.<org.apache.poi.xdgf.usermodel.shape.ShapeRenderer: void <init>()>() 

(declare-const var3419!1 var3054)
(define-const var2004 var3054 var3419!1) ; Statement: r14 = $r1 
(define-const var1442 String (select var1267 0)) ; Statement: r15 = r0[0] 
(define-const var3387 String (select var1267 1)) ; Statement: r16 = r0[1] 
(define-const var3791 String (select var1267 0)) ; Statement: $r2 = r0[0] 
(assert true)
(define-const var2829 Bool (= var3791 "--debug")) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>("--debug") 
 ; Statement: if $z0 == 0 goto $r3 = newarray (java.lang.String)[0] 
(assert (= (ite var2829 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3381 (Array Int String) arr-String-init) ; Statement: $r3 = newarray (java.lang.String)[0] 
(define-const var3795 var2640 (var1235_get/935877550 var1442 var3381)) ; Statement: $r5 = staticinvoke <java.nio.file.Paths: java.nio.file.Path get(java.lang.String,java.lang.String[])>(r15, $r3) 
(define-const var1256 (Array Int var1529) arr-var1529-init) ; Statement: $r4 = newarray (java.nio.file.OpenOption)[0] 
(define-const var657 var2816 (var576_newInputStream/-1349068058 var3795 var1256)) ; Statement: $r8 = staticinvoke <java.nio.file.Files: java.io.InputStream newInputStream(java.nio.file.Path,java.nio.file.OpenOption[])>($r5, $r4) 
(define-const var2063 var3212 null-var3212) ; Statement: r17 = null 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3097 var3212) ; Statement: $r11 := @caughtexception 
(assert (not (= var3097 null-var3212)))
(assert true) ; Non Conditional
 ; Statement: if $r8 == null goto throw $r11 
(assert (= var657 null-var2816)) ; Cond: $r8 == null 
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-String-1=([java.lang.String[]], int), var3054-init=([], org.apache.poi.xdgf.usermodel.shape.ShapeRenderer), <init>/-608264313=([org.apache.poi.xdgf.usermodel.shape.ShapeRenderer], void), arr-String-init=([], java.lang.String[]), var1235_get/935877550=([java.lang.String, java.lang.String[]], java.nio.file.Path), arr-var1529-init=([], java.nio.file.OpenOption[]), var576_newInputStream/-1349068058=([java.nio.file.Path, java.nio.file.OpenOption[]], java.io.InputStream)}
; {var1267=r0, var3138=$i0, var3054=org.apache.poi.xdgf.usermodel.shape.ShapeRenderer, var3419=$r1, var2004=r14, var1442=r15, var3387=r16, var3791=$r2, var2829=$z0, var3381=$r3, var2640=java.nio.file.Path, var1235=java.nio.file.Paths, var3795=$r5, var1529=java.nio.file.OpenOption, var1256=$r4, var2816=java.io.InputStream, var576=java.nio.file.Files, var657=$r8, var3212=java.lang.Throwable, var2063=r17, var3097=$r11}
; {r0=var1267, $i0=var3138, org.apache.poi.xdgf.usermodel.shape.ShapeRenderer=var3054, $r1=var3419, r14=var2004, r15=var1442, r16=var3387, $r2=var3791, $z0=var2829, $r3=var3381, java.nio.file.Path=var2640, java.nio.file.Paths=var1235, $r5=var3795, java.nio.file.OpenOption=var1529, $r4=var1256, java.io.InputStream=var2816, java.nio.file.Files=var576, $r8=var657, java.lang.Throwable=var3212, r17=var2063, $r11=var3097}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String[];	$i0 = lengthof r0;	if $i0 <= 2 goto $r1 = new org.apache.poi.xdgf.usermodel.shape.ShapeRenderer;	$r1 = new org.apache.poi.xdgf.usermodel.shape.ShapeRenderer;	specialinvoke $r1.<org.apache.poi.xdgf.usermodel.shape.ShapeRenderer: void <init>()>();	r14 = $r1;	r15 = r0[0];	r16 = r0[1];	$r2 = r0[0];	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>("--debug");	if $z0 == 0 goto $r3 = newarray (java.lang.String)[0];	$r3 = newarray (java.lang.String)[0];	$r5 = staticinvoke <java.nio.file.Paths: java.nio.file.Path get(java.lang.String,java.lang.String[])>(r15, $r3);	$r4 = newarray (java.nio.file.OpenOption)[0];	$r8 = staticinvoke <java.nio.file.Files: java.io.InputStream newInputStream(java.nio.file.Path,java.nio.file.OpenOption[])>($r5, $r4);	r17 = null;	$r11 := @caughtexception;	if $r8 == null goto throw $r11;	throw $r11
;block_num 6