(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1399 0)
(declare-sort var2992 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/716358372 (var2992) Int)
(declare-fun String-init () String)
(declare-fun codepointBuffer/-1470776502 (var1399) (Array Int Int))
(declare-fun <init>/1703972987 (String (Array Int Int) Int Int) void)
(declare-const null-var1399 var1399)
(declare-const null-var2992 var2992)
(declare-const var2589 var1399) ; Statement: r2 := @this: com.google.javascript.jscomp.serialization.Wtf8$Decoder 
(assert (not (= var2589 null-var1399)))
(declare-const var1045 var2992) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString 
(assert (not (= var1045 null-var2992)))
(assert true)
(define-const var785 Int (size/716358372 var1045)) ; Statement: i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>() 
(define-const var1921 Int 0) ; Statement: i22 = 0 
(define-const var1460 Int 0) ; Statement: i23 = 0 
(assert true) ; Non Conditional
 ; Statement: if i23 >= i0 goto $r7 = new java.lang.String 
(assert (>= var1460 var785)) ; Cond: i23 >= i0 
(define-const var174 String String-init) ; Statement: $r7 = new java.lang.String 
(define-const var1455 (Array Int Int) (codepointBuffer/-1470776502 var2589)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.serialization.Wtf8$Decoder: int[] codepointBuffer> 
(assert true)
;(assert (<init>/1703972987 var174 var1455 0 var1921)) ; Statement: specialinvoke $r7.<java.lang.String: void <init>(int[],int,int)>($r3, 0, i22) 

(declare-const var174!1 String)
(declare-const var1455!1 (Array Int Int))
(declare-const var3227 Int)
(declare-const var1921!1 Int)
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {size/716358372=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString], int), String-init=([], java.lang.String), codepointBuffer/-1470776502=([com.google.javascript.jscomp.serialization.Wtf8$Decoder], int[]), <init>/1703972987=([java.lang.String, int[], int, int], void)}
; {var1399=com.google.javascript.jscomp.serialization.Wtf8$Decoder, var2589=r2, var2992=com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString, var1045=r0, var785=i0, var1921=i22, var1460=i23, var174=$r7, var1455=$r3, var3227=0}
; {com.google.javascript.jscomp.serialization.Wtf8$Decoder=var1399, r2=var2589, com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString=var2992, r0=var1045, i0=var785, i22=var1921, i23=var1460, $r7=var174, $r3=var1455, 0=var3227}
;seq <java.lang.String: void <init>(int[],int,int)>
;cnt {"<java.lang.String: void <init>(int[],int,int)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.serialization.Wtf8$Decoder;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString;	i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>();	i22 = 0;	i23 = 0;	if i23 >= i0 goto $r7 = new java.lang.String;	$r7 = new java.lang.String;	$r3 = r2.<com.google.javascript.jscomp.serialization.Wtf8$Decoder: int[] codepointBuffer>;	specialinvoke $r7.<java.lang.String: void <init>(int[],int,int)>($r3, 0, i22);	return $r7
;block_num 3