(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var648 0)
(declare-sort var343 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun bytes/685354345 (var648) (Array Int Int))
(declare-fun getOffsetIntoBytes/748467999 (var648) Int)
(declare-fun size/-1510201824 (var648) Int)
(declare-fun <init>/-1019213948 (String (Array Int Int) Int Int var343) void)
(declare-const null-var648 var648)
(declare-const null-var343 var343)
(declare-const var2113 var648) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString 
(assert (not (= var2113 null-var648)))
(declare-const var3863 var343) ; Statement: r3 := @parameter0: java.nio.charset.Charset 
(assert (not (= var3863 null-var343)))
(define-const var1180 String String-init) ; Statement: $r0 = new java.lang.String 
(define-const var1101 (Array Int Int) (bytes/685354345 var2113)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString: byte[] bytes> 
(assert true)
(define-const var1503 Int (getOffsetIntoBytes/748467999 var2113)) ; Statement: $i1 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString: int getOffsetIntoBytes()>() 
(assert true)
(define-const var1115 Int (size/-1510201824 var2113)) ; Statement: $i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString: int size()>() 
(assert true)
;(assert (<init>/-1019213948 var1180 var1101 var1503 var1115 var3863)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>($r2, $i1, $i0, r3) 

(declare-const var1180!1 String)
(declare-const var1101!1 (Array Int Int))
(declare-const var1503!1 Int)
(declare-const var1115!1 Int)
(declare-const var3863!1 var343)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), bytes/685354345=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString], byte[]), getOffsetIntoBytes/748467999=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString], int), size/-1510201824=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString], int), <init>/-1019213948=([java.lang.String, byte[], int, int, java.nio.charset.Charset], void)}
; {var648=com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString, var2113=r1, var343=java.nio.charset.Charset, var3863=r3, var1180=$r0, var1101=$r2, var1503=$i1, var1115=$i0}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString=var648, r1=var2113, java.nio.charset.Charset=var343, r3=var3863, $r0=var1180, $r2=var1101, $i1=var1503, $i0=var1115}
;seq <java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString;	r3 := @parameter0: java.nio.charset.Charset;	$r0 = new java.lang.String;	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString: byte[] bytes>;	$i1 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString: int getOffsetIntoBytes()>();	$i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString: int size()>();	specialinvoke $r0.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>($r2, $i1, $i0, r3);	return $r0
;block_num 1