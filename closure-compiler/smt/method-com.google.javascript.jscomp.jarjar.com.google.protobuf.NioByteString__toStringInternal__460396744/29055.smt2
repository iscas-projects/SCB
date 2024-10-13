(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2469 0)
(declare-sort var3511 0)
(declare-sort var1300 0)
(declare-sort var1245 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/-795301631 (var2469) var1300)
(declare-fun hasArray/-1037821362 (var1300) Bool)
(declare-fun toByteArray/385686838 (var1245) (Array Int Int))
(declare-fun cast-from-var2469-to-var1245 (var2469) var1245)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun String-init () String)
(declare-fun <init>/-1019213948 (String (Array Int Int) Int Int var3511) void)
(declare-const null-var2469 var2469)
(declare-const null-var3511 var3511)
(declare-const var2790 var2469) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString 
(assert (not (= var2790 null-var2469)))
(declare-const var1211 var3511) ; Statement: r3 := @parameter0: java.nio.charset.Charset 
(assert (not (= var1211 null-var3511)))
(define-const var2896 var1300 (buffer/-795301631 var2790)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString: java.nio.ByteBuffer buffer> 
(assert true)
(define-const var2753 Bool (hasArray/-1037821362 var2896)) ; Statement: $z0 = virtualinvoke $r1.<java.nio.ByteBuffer: boolean hasArray()>() 
 ; Statement: if $z0 == 0 goto r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString: byte[] toByteArray()>() 
(assert (= (ite var2753 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3260 (Array Int Int) (toByteArray/385686838 (cast-from-var2469-to-var1245 var2790))) ; Statement: r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString: byte[] toByteArray()>() 
(define-const var3014 Int 0) ; Statement: i2 = 0 
(define-const var1587 Int (getLength-Arr-Int-1 var3260)) ; Statement: i3 = lengthof r8 
(assert true) ; Non Conditional
(define-const var3344 String String-init) ; Statement: $r2 = new java.lang.String 
(assert true)
;(assert (<init>/-1019213948 var3344 var3260 var3014 var1587 var1211)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>(r8, i2, i3, r3) 

(declare-const var3344!1 String)
(declare-const var3260!1 (Array Int Int))
(declare-const var3014!1 Int)
(declare-const var1587!1 Int)
(declare-const var1211!1 var3511)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/-795301631=([com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString], java.nio.ByteBuffer), hasArray/-1037821362=([java.nio.ByteBuffer], boolean), toByteArray/385686838=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString], byte[]), cast-from-var2469-to-var1245=([com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString], com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString), getLength-Arr-Int-1=([byte[]], int), String-init=([], java.lang.String), <init>/-1019213948=([java.lang.String, byte[], int, int, java.nio.charset.Charset], void)}
; {var2469=com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString, var2790=r0, var3511=java.nio.charset.Charset, var1211=r3, var1300=java.nio.ByteBuffer, var2896=$r1, var2753=$z0, var1245=com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString, var3260=r8, var3014=i2, var1587=i3, var3344=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString=var2469, r0=var2790, java.nio.charset.Charset=var3511, r3=var1211, java.nio.ByteBuffer=var1300, $r1=var2896, $z0=var2753, com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString=var1245, r8=var3260, i2=var3014, i3=var1587, $r2=var3344}
;seq <java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString;	r3 := @parameter0: java.nio.charset.Charset;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString: java.nio.ByteBuffer buffer>;	$z0 = virtualinvoke $r1.<java.nio.ByteBuffer: boolean hasArray()>();	if $z0 == 0 goto r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString: byte[] toByteArray()>();	r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.NioByteString: byte[] toByteArray()>();	i2 = 0;	i3 = lengthof r8;	$r2 = new java.lang.String;	specialinvoke $r2.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>(r8, i2, i3, r3);	return $r2
;block_num 3