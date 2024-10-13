(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var298 0)
(declare-sort var3351 0)
(declare-sort var3250 0)
(declare-sort var112 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/-795301631 (var298) var3250)
(declare-fun hasArray/-1037821362 (var3250) Bool)
(declare-fun array/-1311260030 (var3250) (Array Int Int))
(declare-fun arrayOffset/-856500294 (var3250) Int)
(declare-fun position/38072115 (var112) Int)
(declare-fun cast-from-var3250-to-var112 (var3250) var112)
(declare-fun remaining/-1331500056 (var112) Int)
(declare-fun String-init () String)
(declare-fun <init>/-1019213948 (String (Array Int Int) Int Int var3351) void)
(declare-const null-var298 var298)
(declare-const null-var3351 var3351)
(declare-const var2996 var298) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString 
(assert (not (= var2996 null-var298)))
(declare-const var3798 var3351) ; Statement: r3 := @parameter0: java.nio.charset.Charset 
(assert (not (= var3798 null-var3351)))
(define-const var2501 var3250 (buffer/-795301631 var2996)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString: java.nio.ByteBuffer buffer> 
(assert true)
(define-const var2510 Bool (hasArray/-1037821362 var2501)) ; Statement: $z0 = virtualinvoke $r1.<java.nio.ByteBuffer: boolean hasArray()>() 
 ; Statement: if $z0 == 0 goto r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString: byte[] toByteArray()>() 
(assert (not (= (ite var2510 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3006 var3250 (buffer/-795301631 var2996)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString: java.nio.ByteBuffer buffer> 
(assert true)
(define-const var2997 (Array Int Int) (array/-1311260030 var3006)) ; Statement: r8 = virtualinvoke $r4.<java.nio.ByteBuffer: byte[] array()>() 
(define-const var3933 var3250 (buffer/-795301631 var2996)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString: java.nio.ByteBuffer buffer> 
(assert true)
(define-const var3339 Int (arrayOffset/-856500294 var3933)) ; Statement: $i1 = virtualinvoke $r5.<java.nio.ByteBuffer: int arrayOffset()>() 
(define-const var576 var3250 (buffer/-795301631 var2996)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString: java.nio.ByteBuffer buffer> 
(assert true)
(define-const var3002 Int (position/38072115 (cast-from-var3250-to-var112 var576))) ; Statement: $i0 = virtualinvoke $r6.<java.nio.ByteBuffer: int position()>() 
(define-const var3133 Int (+ var3339 var3002)) ; Statement: i2 = $i1 + $i0 
(define-const var3652 var3250 (buffer/-795301631 var2996)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString: java.nio.ByteBuffer buffer> 
(assert true)
(define-const var1546 Int (remaining/-1331500056 (cast-from-var3250-to-var112 var3652))) ; Statement: i3 = virtualinvoke $r7.<java.nio.ByteBuffer: int remaining()>() 
 ; Statement: goto [?= $r2 = new java.lang.String] 
(assert true) ; Non Conditional
(define-const var3711 String String-init) ; Statement: $r2 = new java.lang.String 
(assert true)
;(assert (<init>/-1019213948 var3711 var2997 var3133 var1546 var3798)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>(r8, i2, i3, r3) 

(declare-const var3711!1 String)
(declare-const var2997!1 (Array Int Int))
(declare-const var3133!1 Int)
(declare-const var1546!1 Int)
(declare-const var3798!1 var3351)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/-795301631=([com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString], java.nio.ByteBuffer), hasArray/-1037821362=([java.nio.ByteBuffer], boolean), array/-1311260030=([java.nio.ByteBuffer], byte[]), arrayOffset/-856500294=([java.nio.ByteBuffer], int), position/38072115=([java.nio.Buffer], int), cast-from-var3250-to-var112=([java.nio.ByteBuffer], java.nio.Buffer), remaining/-1331500056=([java.nio.Buffer], int), String-init=([], java.lang.String), <init>/-1019213948=([java.lang.String, byte[], int, int, java.nio.charset.Charset], void)}
; {var298=com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString, var2996=r0, var3351=java.nio.charset.Charset, var3798=r3, var3250=java.nio.ByteBuffer, var2501=$r1, var2510=$z0, var3006=$r4, var2997=r8, var3933=$r5, var3339=$i1, var576=$r6, var112=java.nio.Buffer, var3002=$i0, var3133=i2, var3652=$r7, var1546=i3, var3711=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString=var298, r0=var2996, java.nio.charset.Charset=var3351, r3=var3798, java.nio.ByteBuffer=var3250, $r1=var2501, $z0=var2510, $r4=var3006, r8=var2997, $r5=var3933, $i1=var3339, $r6=var576, java.nio.Buffer=var112, $i0=var3002, i2=var3133, $r7=var3652, i3=var1546, $r2=var3711}
;seq <java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString;	r3 := @parameter0: java.nio.charset.Charset;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString: java.nio.ByteBuffer buffer>;	$z0 = virtualinvoke $r1.<java.nio.ByteBuffer: boolean hasArray()>();	if $z0 == 0 goto r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString: byte[] toByteArray()>();	$r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString: java.nio.ByteBuffer buffer>;	r8 = virtualinvoke $r4.<java.nio.ByteBuffer: byte[] array()>();	$r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString: java.nio.ByteBuffer buffer>;	$i1 = virtualinvoke $r5.<java.nio.ByteBuffer: int arrayOffset()>();	$r6 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString: java.nio.ByteBuffer buffer>;	$i0 = virtualinvoke $r6.<java.nio.ByteBuffer: int position()>();	i2 = $i1 + $i0;	$r7 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString: java.nio.ByteBuffer buffer>;	i3 = virtualinvoke $r7.<java.nio.ByteBuffer: int remaining()>();	goto [?= $r2 = new java.lang.String];	$r2 = new java.lang.String;	specialinvoke $r2.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>(r8, i2, i3, r3);	return $r2
;block_num 3